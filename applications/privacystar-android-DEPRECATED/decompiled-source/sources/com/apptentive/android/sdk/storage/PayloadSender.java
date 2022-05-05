package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.ApptentiveNotifications;
import com.apptentive.android.sdk.model.PayloadData;
import com.apptentive.android.sdk.network.HttpRequest;
import com.apptentive.android.sdk.network.HttpRequestRetryPolicy;
import com.apptentive.android.sdk.notifications.ApptentiveNotificationCenter;
import com.apptentive.android.sdk.util.StringUtils;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/PayloadSender.class */
public class PayloadSender {
    private Listener listener;
    private final HttpRequestRetryPolicy requestRetryPolicy;
    private final PayloadRequestSender requestSender;
    private boolean sendingFlag;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/PayloadSender$Listener.class */
    public interface Listener {
        void onFinishSending(PayloadSender payloadSender, PayloadData payloadData, boolean z, String str, int i, JSONObject jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PayloadSender(PayloadRequestSender payloadRequestSender, HttpRequestRetryPolicy httpRequestRetryPolicy) {
        if (payloadRequestSender == null) {
            throw new IllegalArgumentException("Payload request sender is null");
        } else if (httpRequestRetryPolicy == null) {
            throw new IllegalArgumentException("Retry policy is null");
        } else {
            this.requestSender = payloadRequestSender;
            this.requestRetryPolicy = httpRequestRetryPolicy;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleFinishSendingPayload(PayloadData payloadData, boolean z, String str, int i, JSONObject jSONObject) {
        synchronized (this) {
            this.sendingFlag = false;
            try {
                if (this.listener != null) {
                    this.listener.onFinishSending(this, payloadData, z, str, i, jSONObject);
                }
            } catch (Exception e) {
                ApptentiveLog.m408e(e, "Exception while notifying payload listener", new Object[0]);
            }
        }
    }

    private void sendPayloadRequest(final PayloadData payloadData) {
        synchronized (this) {
            ApptentiveLog.m403v(ApptentiveLogTag.PAYLOADS, "Sending payload: %s", payloadData);
            HttpRequest createPayloadSendRequest = this.requestSender.createPayloadSendRequest(payloadData, new HttpRequest.Listener<HttpRequest>() { // from class: com.apptentive.android.sdk.storage.PayloadSender.1
                @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
                public void onCancel(HttpRequest httpRequest) {
                    PayloadSender.this.handleFinishSendingPayload(payloadData, true, null, httpRequest.getResponseCode(), null);
                }

                @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
                public void onFail(HttpRequest httpRequest, String str) {
                    if (httpRequest.isAuthenticationFailure()) {
                        ApptentiveNotificationCenter.defaultCenter().postNotification(ApptentiveNotifications.NOTIFICATION_AUTHENTICATION_FAILED, "conversationId", payloadData.getConversationId(), ApptentiveNotifications.NOTIFICATION_KEY_AUTHENTICATION_FAILED_REASON, httpRequest.getAuthenticationFailedReason());
                    }
                    PayloadSender.this.handleFinishSendingPayload(payloadData, false, str, httpRequest.getResponseCode(), null);
                }

                @Override // com.apptentive.android.sdk.network.HttpRequest.Listener
                public void onFinish(HttpRequest httpRequest) {
                    try {
                        PayloadSender.this.handleFinishSendingPayload(payloadData, false, null, httpRequest.getResponseCode(), new JSONObject(StringUtils.isNullOrEmpty(httpRequest.getResponseData()) ? "{}" : httpRequest.getResponseData()));
                    } catch (Exception e) {
                        ApptentiveLog.m410e(ApptentiveLogTag.PAYLOADS, e, "Exception while handling payload send response", new Object[0]);
                        PayloadSender.this.handleFinishSendingPayload(payloadData, false, null, -1, null);
                    }
                }
            });
            createPayloadSendRequest.setRetryPolicy(this.requestRetryPolicy);
            createPayloadSendRequest.setCallbackQueue(ApptentiveHelper.conversationQueue());
            createPayloadSendRequest.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isSendingPayload() {
        boolean z;
        synchronized (this) {
            z = this.sendingFlag;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean sendPayload(PayloadData payloadData) {
        synchronized (this) {
            if (payloadData == null) {
                throw new IllegalArgumentException("Payload is null");
            } else if (isSendingPayload()) {
                return false;
            } else {
                this.sendingFlag = true;
                try {
                    sendPayloadRequest(payloadData);
                } catch (Exception e) {
                    ApptentiveLog.m408e(e, "Exception while sending payload: %s", payloadData);
                    String message = e.getMessage();
                    String str = message;
                    if (message == null) {
                        str = StringUtils.format("%s is thrown", e.getClass().getSimpleName());
                    }
                    handleFinishSendingPayload(payloadData, false, str, -1, null);
                }
                return true;
            }
        }
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }
}
