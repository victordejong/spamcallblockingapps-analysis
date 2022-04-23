package com.privacystar.core.service.network.handler;

import android.support.annotation.NonNull;
import com.privacystar.core.BuildConfig;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.PSBackendEndpoint;
import com.privacystar.core.service.network.PayloadUtil;
import com.privacystar.core.service.network.model.component.EmptyObject;
import com.privacystar.core.service.network.model.request.BlockListRequest;
import io.realm.Realm;
import java.util.List;
import retrofit2.Call;
import retrofit2.Response;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/handler/BlockListPutHandler.class */
public class BlockListPutHandler extends PSServiceHandler<BlockListRequest, EmptyObject> {
    private static final boolean SHOULD_PERSIST = true;
    private static BlockListPutHandler handlerInstance;

    public static BlockListRequest generateRequest(@NonNull List<String> list) {
        BlockListRequest blockListRequest = new BlockListRequest();
        BlockListRequest.Payload instantiatePayload = blockListRequest.instantiatePayload();
        blockListRequest.setPayload(instantiatePayload);
        blockListRequest.setUser(PayloadUtil.generateUserPayload());
        instantiatePayload.setToken(PreferenceUtil.getUserToken());
        instantiatePayload.setApplicationVersion(BuildConfig.VERSION_NAME);
        instantiatePayload.setActionType(BlockListRequest.BlockListActionType.PUT);
        instantiatePayload.setBlockList(list);
        return blockListRequest;
    }

    public static BlockListPutHandler getInstance() {
        if (handlerInstance == null) {
            handlerInstance = new BlockListPutHandler();
        }
        return handlerInstance;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Call<EmptyObject> backendRequest(BlockListRequest blockListRequest) {
        return PSBackendEndpoint.getServicesInstance().putBlockList(blockListRequest);
    }

    public void generateAndEnqueueRequest(@NonNull Realm realm) {
        generateAndEnqueueRequest(BlockListRealm.getBlockListNumbersIfActive(realm, BlockListRealm.BlockListActive.ACTIVE));
    }

    public void generateAndEnqueueRequest(@NonNull List<String> list) {
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    public PSBackendEndpoint.PSEndpointInterface getEndpointInterface() {
        return PSBackendEndpoint.PSEndpointInterface.SERVICES;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleUnsuccessful(BlockListRequest blockListRequest, Response<EmptyObject> response) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void processResponse(EmptyObject emptyObject, BlockListRequest blockListRequest) {
        Timber.m37d("Processing block list put response: nothing to do on successful response.", new Object[0]);
        PreferenceUtil.putHasBlockListBeenPut(true);
    }

    @Override // com.privacystar.core.service.network.handler.PSServiceHandler
    protected boolean shouldPersist() {
        return true;
    }
}
