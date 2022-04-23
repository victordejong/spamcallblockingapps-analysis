package com.callapp.contacts.manager.asset.mappers;

import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/mappers/AssetListenerMapper.class */
public class AssetListenerMapper implements StoreItemAssetManager.AssetListener<String> {

    /* renamed from: a  reason: collision with root package name */
    private StoreItemAssetManager.AssetListener f14990a;

    public AssetListenerMapper(StoreItemAssetManager.AssetListener assetListener) {
        this.f14990a = assetListener;
    }

    /* renamed from: a */
    public final void onAssetReady(String str, String str2) {
        this.f14990a.onAssetReady(str, str2);
    }
}
