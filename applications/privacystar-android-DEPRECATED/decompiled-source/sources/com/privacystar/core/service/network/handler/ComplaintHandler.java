package com.privacystar.core.service.network.handler;

import android.content.Context;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.model.component.CallLogObject;
import com.privacystar.core.service.network.model.component.ComplaintObject;
import com.privacystar.core.service.network.model.component.EmptyObject;
import com.privacystar.core.service.network.model.request.ComplaintRequest;
import com.privacystar.core.util.InformationUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/ComplaintHandler.class */
public class ComplaintHandler extends PSServiceHandler<ComplaintRequest, EmptyObject> {
    private static final boolean SHOULD_PERSIST = true;
    private static ComplaintHandler handlerInstance;

    private List<ComplaintObject> createComplaintObjects(HashMap<Integer, String> hashMap) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<Integer, String> entry : hashMap.entrySet()) {
            arrayList.add(new ComplaintObject().withQuestion(entry.getKey().toString()).withAnswer(entry.getValue()));
        }
        return arrayList;
    }

    public static ComplaintRequest generateRequest(Context context, List<ComplaintObject> list, List<CallLogObject> list2) {
        ComplaintRequest complaintRequest = new ComplaintRequest();
        ComplaintRequest.Payload instantiatePayload = complaintRequest.instantiatePayload();
        complaintRequest.setPayload(instantiatePayload);
        complaintRequest.setUser(PayloadUtil.generateUserPayload());
        instantiatePayload.setComplaintQuestions(list);
        instantiatePayload.setCallLogObject(list2);
        instantiatePayload.setPackageName(context.getPackageName());
        instantiatePayload.setDeviceId(InformationUtil.getDevicePinOrNothing(context));
        PayloadUtil.applyBasePayload(instantiatePayload);
        return complaintRequest;
    }

    public static ComplaintHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new ComplaintHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<EmptyObject> backendRequest(ComplaintRequest complaintRequest) {
        return PSBackendEndpoint.getServicesInstance().postComplaint(complaintRequest);
    }

    public void generateAndEnqueueRequest(Context context, HashMap<Integer, String> hashMap, List<CallLogObject> list) {
        enqueueRequest(getInstance(), generateRequest(context, createComplaintObjects(hashMap), list));
    }

    public void generateAndEnqueueRequest(Context context, List<ComplaintObject> list, List<CallLogObject> list2) {
        enqueueRequest(getInstance(), generateRequest(context, list, list2));
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public void handleSuccessful(Response<EmptyObject> response) {
        super.handleSuccessful(response);
        Timber.m37d("Report was SUCCESSFUL", new Object[0]);
        PreferenceUtil.putIsReportSubmittedSuccessfully(true);
        PreferenceUtil.putShowReportSubmittedMessage(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(ComplaintRequest complaintRequest, Response<EmptyObject> response) {
        Timber.m37d("Report was NOT SUCCESSFUL", new Object[0]);
        PreferenceUtil.putIsReportSubmittedSuccessfully(false);
        PreferenceUtil.putShowReportSubmittedMessage(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(EmptyObject emptyObject, ComplaintRequest complaintRequest) {
        Timber.m37d("Processing complaint response: nothing to do.", new Object[0]);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return true;
    }
}
