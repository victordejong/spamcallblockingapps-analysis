package com.privacystar.core.service.network.handler;

import com.privacystar.core.data.model.helper.PendingBulkLookupRealm;
import com.privacystar.core.service.jobs.JobConstants;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.model.request.BulkLookupStatusRequest;
import com.privacystar.core.service.network.model.response.BulkLookupStatusResponse;
import com.privacystar.core.service.network.model.response.LookupResponse;
import com.privacystar.core.service.network.util.ObjectCreator;
import com.privacystar.core.service.network.util.ResponseNotReadyException;
import io.realm.Realm;
import java.util.List;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/BulkLookupStatusHandler.class */
public class BulkLookupStatusHandler extends PSServiceHandler<BulkLookupStatusRequest, BulkLookupStatusResponse> {
    private static final long DELAY_IN_MS = 2000;
    private static final String GROUP_ID = "group_bulk_lookup";
    private static final int MAX_RETRIES = 10;
    private static final boolean SHOULD_PERSIST = true;
    private static final String SINGLE_ID = "group_bulk_lookup";
    private static BulkLookupStatusHandler handlerInstance;

    public static BulkLookupStatusRequest generateRequest(String str) {
        BulkLookupStatusRequest bulkLookupStatusRequest = new BulkLookupStatusRequest();
        BulkLookupStatusRequest.Payload instantiatePayload = bulkLookupStatusRequest.instantiatePayload();
        bulkLookupStatusRequest.setPayload(instantiatePayload);
        bulkLookupStatusRequest.setUser(PayloadUtil.generateUserPayload());
        instantiatePayload.withStatusId(str);
        return bulkLookupStatusRequest;
    }

    public static BulkLookupStatusHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new BulkLookupStatusHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<BulkLookupStatusResponse> backendRequest(BulkLookupStatusRequest bulkLookupStatusRequest) {
        return PSBackendEndpoint.getLookupInstance().bulkLookupStatus(bulkLookupStatusRequest);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected long delayInMs() {
        return DELAY_IN_MS;
    }

    public void generateAndSendRequest(String str) {
        enqueueRequest(getInstance(), generateRequest(str));
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.LOOKUP;
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected String getGroupId() {
        return JobConstants.GROUP_BULK_LOOKUP;
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected Integer getRetries() {
        return 10;
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected String getSingleId() {
        return JobConstants.GROUP_BULK_LOOKUP;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(BulkLookupStatusRequest bulkLookupStatusRequest, Response<BulkLookupStatusResponse> response) {
        Timber.m37d("Bulk Lookup Status request was unsuccessful. Aborting and deleting pending lookup from Realm.", new Object[0]);
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            PendingBulkLookupRealm.deletePendingBulkLookup(defaultInstance, bulkLookupStatusRequest.getPayload().getStatusId());
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

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(BulkLookupStatusResponse bulkLookupStatusResponse, BulkLookupStatusRequest bulkLookupStatusRequest) throws ResponseNotReadyException {
        if (bulkLookupStatusResponse.getStatus().booleanValue()) {
            Timber.m37d("Bulk lookup is ready. Preparing to process caller ID info.", new Object[0]);
            if (bulkLookupStatusResponse.getLookupResult().getError() == null || !bulkLookupStatusResponse.getLookupResult().getError().booleanValue()) {
                Realm defaultInstance = Realm.getDefaultInstance();
                try {
                    String statusId = bulkLookupStatusRequest.getPayload().getStatusId();
                    List<String> pendingNumbers = PendingBulkLookupRealm.getPendingNumbers(defaultInstance, statusId);
                    List<LookupResponse> responses = bulkLookupStatusResponse.getLookupResult().getResponses();
                    if (responses.size() != pendingNumbers.size()) {
                        Timber.m25w("Mismatch in list size between numbers requested [%d] and caller IDs returned [%d].", Integer.valueOf(pendingNumbers.size()), Integer.valueOf(responses.size()));
                    } else {
                        for (int i = 0; i < pendingNumbers.size(); i++) {
                            ObjectCreator.storeCallerIdFromLookupResponse(defaultInstance, responses.get(i), pendingNumbers.get(i));
                        }
                    }
                    PendingBulkLookupRealm.deletePendingBulkLookup(defaultInstance, statusId);
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
            } else {
                Timber.m37d("Bulk lookup resulted in a server error. Aborting.", new Object[0]);
            }
        } else {
            Timber.m37d("Bulk lookup is not ready. Requeueing status check.", new Object[0]);
            throw new ResponseNotReadyException("BulkLookupStatus response was that request is still pending.");
        }
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return true;
    }
}
