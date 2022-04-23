package com.privacystar.core.service.network.handler;

import com.privacystar.core.BuildConfig;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.model.request.BlockListRequest;
import com.privacystar.core.service.network.model.response.BlockListResponse;
import com.privacystar.core.util.analytics.AnalyticsUtil;
import io.realm.Realm;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/BlockListGetHandler.class */
public class BlockListGetHandler extends PSServiceHandler<BlockListRequest, BlockListResponse> {
    private static final boolean SHOULD_PERSIST = true;
    private static BlockListGetHandler handlerInstance;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/BlockListGetHandler$BlockListRestoreState.class */
    public enum BlockListRestoreState {
        UNRESTORED("unrestored"),
        PENDING("pending"),
        RESTORED("restored");
        
        private final String value;

        BlockListRestoreState(String str) {
            this.value = str;
        }

        public static BlockListRestoreState fromValue(String str) {
            BlockListRestoreState[] values;
            for (BlockListRestoreState blockListRestoreState : values()) {
                if (blockListRestoreState.getValue().equalsIgnoreCase(str)) {
                    return blockListRestoreState;
                }
            }
            Timber.m37d("Couldn't match a known state. Defaulting to UNRESTORED for safety.", new Object[0]);
            return UNRESTORED;
        }

        public String getValue() {
            return this.value;
        }
    }

    public static BlockListRequest generateRequest() {
        BlockListRequest blockListRequest = new BlockListRequest();
        BlockListRequest.Payload instantiatePayload = blockListRequest.instantiatePayload();
        blockListRequest.setPayload(instantiatePayload);
        blockListRequest.setUser(PayloadUtil.generateUserPayload());
        instantiatePayload.setToken(PreferenceUtil.getUserToken());
        instantiatePayload.setApplicationVersion(BuildConfig.VERSION_NAME);
        instantiatePayload.setActionType(BlockListRequest.BlockListActionType.GET);
        return blockListRequest;
    }

    public static void generateRequestIfNeeded() {
        Subscription subscription = SubscriptionRealm.getSubscription();
        if (subscription == null || subscription.getSubscriptionType() == SubscriptionType.INACTIVE) {
            Timber.m37d("Not an active subscription, not fetching remove blocklist sync.", new Object[0]);
            return;
        }
        BlockListRestoreState fromValue = BlockListRestoreState.fromValue(PreferenceUtil.getBlockListRestoreState());
        Timber.m37d("Block List Restore State was found to be [%s].", fromValue.getValue());
        if (fromValue == BlockListRestoreState.UNRESTORED) {
            PreferenceUtil.putBlockListRestoreState(BlockListRestoreState.PENDING.getValue());
            getInstance().generateAndEnqueueRequest();
        }
    }

    public static BlockListGetHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new BlockListGetHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<BlockListResponse> backendRequest(BlockListRequest blockListRequest) {
        return PSBackendEndpoint.getServicesInstance().getBlockList(blockListRequest);
    }

    public void generateAndEnqueueRequest() {
        Timber.m37d("Generating and Enqueueing BlockList Get request.", new Object[0]);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(BlockListRequest blockListRequest, Response<BlockListResponse> response) {
        PreferenceUtil.putBlockListRestoreState(BlockListRestoreState.UNRESTORED.getValue());
        AnalyticsUtil.INSTANCE.trackResync(AnalyticsUtil.ResyncAnalyticsEvent.FAILURE_REJECT);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(BlockListResponse blockListResponse, BlockListRequest blockListRequest) {
        Timber.m37d("Processing block list get response: restoring backed-up block list.", new Object[0]);
        PreferenceUtil.putBlockListRestoreState(BlockListRestoreState.RESTORED.getValue());
        if (blockListResponse == null || blockListResponse.getBlockList() == null) {
            Timber.m37d("Response content was null, cannot process blockList.", new Object[0]);
            return;
        }
        if (blockListResponse.getBlockList().size() != blockListResponse.getCount().intValue()) {
            Timber.m31i("Response count [%d] was declared to be a value different than the block list size [%d]", blockListResponse.getCount(), Integer.valueOf(blockListResponse.getBlockList().size()));
        } else if (blockListResponse.getBlockList().isEmpty()) {
            Timber.m31i("Response blockList is empty. Not applying empty set as backend returns an empty set when it has never received data.", new Object[0]);
        } else {
            Realm defaultInstance = Realm.getDefaultInstance();
            try {
                Timber.m37d("Processing [%d] block list entries.", Integer.valueOf(blockListResponse.getBlockList().size()));
                BlockListRealm.clearBlockList(defaultInstance);
                BlockListRealm.addToOrUpdateBlockList(defaultInstance, blockListResponse.getBlockList(), false);
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
            } finally {
                try {
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        AnalyticsUtil.INSTANCE.trackResync(AnalyticsUtil.ResyncAnalyticsEvent.SUCCESS);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return true;
    }
}
