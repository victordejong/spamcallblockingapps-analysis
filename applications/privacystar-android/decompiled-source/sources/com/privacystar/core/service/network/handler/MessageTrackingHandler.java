package com.privacystar.core.service.network.handler;

import com.privacystar.core.service.firebase.PSFirebaseInstanceIDService;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.model.component.EmptyObject;
import com.privacystar.core.service.network.model.request.MessageTrackingRequest;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/MessageTrackingHandler.class */
public class MessageTrackingHandler extends PSServiceHandler<MessageTrackingRequest, EmptyObject> {
    private static final boolean SHOULD_PERSIST = true;
    private static MessageTrackingHandler handlerInstance;

    public static MessageTrackingRequest generateRequest(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append("generating request for message #");
        sb.append(str);
        sb.append(" and action is not null = ");
        sb.append(str2 != null);
        Timber.m37d(sb.toString(), new Object[0]);
        MessageTrackingRequest messageTrackingRequest = new MessageTrackingRequest();
        MessageTrackingRequest.Payload instantiatePayload = messageTrackingRequest.instantiatePayload();
        messageTrackingRequest.setPayload(instantiatePayload);
        instantiatePayload.setBatchId(str);
        instantiatePayload.setFcmKey(PSFirebaseInstanceIDService.getFcmId());
        if (str2 == null) {
            instantiatePayload.setType(MessageTrackingRequest.TrackingType.OPENED);
        } else {
            instantiatePayload.setType(MessageTrackingRequest.TrackingType.ACTED);
            instantiatePayload.setAction(str2);
        }
        return messageTrackingRequest;
    }

    public static MessageTrackingHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new MessageTrackingHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<EmptyObject> backendRequest(MessageTrackingRequest messageTrackingRequest) {
        return PSBackendEndpoint.getServicesInstance().trackMessage(messageTrackingRequest);
    }

    public void generateAndEnqueueRequest(String str) {
        generateAndEnqueueRequest(str, null);
    }

    public void generateAndEnqueueRequest(String str, String str2) {
        enqueueRequest(getInstance(), generateRequest(str, str2));
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(MessageTrackingRequest messageTrackingRequest, Response<EmptyObject> response) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(EmptyObject emptyObject, MessageTrackingRequest messageTrackingRequest) {
        Timber.m37d("Processing message tracking response: nothing to do.", new Object[0]);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return true;
    }
}
