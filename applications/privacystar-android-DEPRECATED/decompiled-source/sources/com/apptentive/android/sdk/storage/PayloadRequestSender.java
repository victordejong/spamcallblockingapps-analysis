package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.model.PayloadData;
import com.apptentive.android.sdk.network.HttpRequest;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/PayloadRequestSender.class */
public interface PayloadRequestSender {
    HttpRequest createPayloadSendRequest(PayloadData payloadData, HttpRequest.Listener<HttpRequest> listener);
}
