package com.privacystar.core.service.network.handler;

import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.service.firebase.PSFirebaseInstanceIDService;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.model.request.MessageTrackingRequest;
import com.privacystar.core.service.network.model.response.MessageTrackingResponse;
import com.privacystar.core.util.CampaignUtil;
import com.privacystar.core.util.NotificationUtil;
import io.realm.Realm;
import java.util.Locale;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/MessageReceivedHandler.class */
public class MessageReceivedHandler extends PSServiceHandler<MessageTrackingRequest, MessageTrackingResponse> {
    private static final boolean SHOULD_PERSIST = true;
    private static MessageReceivedHandler handlerInstance;

    public static MessageTrackingRequest generateRequest(String str) {
        MessageTrackingRequest messageTrackingRequest = new MessageTrackingRequest();
        MessageTrackingRequest.Payload instantiatePayload = messageTrackingRequest.instantiatePayload();
        messageTrackingRequest.setPayload(instantiatePayload);
        instantiatePayload.setBatchId(str);
        instantiatePayload.setFcmKey(PSFirebaseInstanceIDService.getFcmId());
        instantiatePayload.setType(MessageTrackingRequest.TrackingType.RECEIVED);
        instantiatePayload.setLocale(Locale.getDefault().toString());
        return messageTrackingRequest;
    }

    public static MessageReceivedHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new MessageReceivedHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<MessageTrackingResponse> backendRequest(MessageTrackingRequest messageTrackingRequest) {
        return PSBackendEndpoint.getServicesInstance().fetchMessage(messageTrackingRequest);
    }

    public void generateAndEnqueueRequest(String str) {
        enqueueRequest(getInstance(), generateRequest(str));
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(MessageTrackingRequest messageTrackingRequest, Response<MessageTrackingResponse> response) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(MessageTrackingResponse messageTrackingResponse, MessageTrackingRequest messageTrackingRequest) {
        Timber.m37d("Processing inbox message response.", new Object[0]);
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            MessageRealm.storeMessage(defaultInstance, messageTrackingRequest.getPayload().getBatchId(), messageTrackingResponse.getMessageHtml(), messageTrackingResponse.getNotificationTitle(), messageTrackingResponse.getNotificationMessage());
            CampaignUtil.INSTANCE.tryDownloadLogo(PSApplication.context(), messageTrackingResponse.getMessageHtml(), messageTrackingRequest.getPayload().getBatchId());
            NotificationUtil.showPushMessageNotification(PSApplication.context(), messageTrackingRequest.getPayload().getBatchId(), messageTrackingResponse.getNotificationTitle(), messageTrackingResponse.getNotificationMessage());
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return true;
    }
}
