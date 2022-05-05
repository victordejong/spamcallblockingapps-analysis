package com.privacystar.core.service.network.handler;

import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.model.component.EmptyObject;
import com.privacystar.core.service.network.model.component.FeedbackObject;
import com.privacystar.core.service.network.model.request.FeedbackRequest;
import java.util.List;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/FeedbackHandler.class */
public class FeedbackHandler extends PSServiceHandler<FeedbackRequest, EmptyObject> {
    private static final boolean SHOULD_PERSIST = true;
    private static FeedbackHandler handlerInstance;

    public static FeedbackRequest generateRequest(int i, List<FeedbackObject> list) {
        FeedbackRequest feedbackRequest = new FeedbackRequest();
        FeedbackRequest.Payload instantiatePayload = feedbackRequest.instantiatePayload();
        feedbackRequest.setPayload(instantiatePayload);
        instantiatePayload.setFeedbackTypeId(i);
        instantiatePayload.setAnswersList(list);
        PayloadUtil.applyBasePayload(instantiatePayload);
        return feedbackRequest;
    }

    public static FeedbackHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new FeedbackHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<EmptyObject> backendRequest(FeedbackRequest feedbackRequest) {
        return PSBackendEndpoint.getServicesInstance().postFeedback(feedbackRequest);
    }

    public void generateAndEnqueueRequest(int i, List<FeedbackObject> list) {
        enqueueRequest(getInstance(), generateRequest(i, list));
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(FeedbackRequest feedbackRequest, Response<EmptyObject> response) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(EmptyObject emptyObject, FeedbackRequest feedbackRequest) {
        Timber.m37d("Processing feedback response: nothing to do.", new Object[0]);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return true;
    }
}
