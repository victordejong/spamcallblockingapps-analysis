package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/UrlAssetManager.class */
public abstract class UrlAssetManager {

    /* renamed from: a  reason: collision with root package name */
    private BooleanPref f14987a;

    /* renamed from: b  reason: collision with root package name */
    private String f14988b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f14989c = new Object();

    public UrlAssetManager(BooleanPref booleanPref) {
        this.f14987a = booleanPref;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(StoreItemAssetManager.AssetListener<String> assetListener) {
        String str = this.f14988b;
        if (str != null) {
            assetListener.onAssetReady(str, getCustomizableSignature());
            return;
        }
        synchronized (this.f14989c) {
            String assetSourceUrl = getAssetSourceUrl();
            setAsset(assetSourceUrl);
            assetListener.onAssetReady(assetSourceUrl, getCustomizableSignature());
        }
    }

    protected abstract boolean a();

    public final boolean c() {
        BooleanPref booleanPref = this.f14987a;
        return booleanPref != null ? booleanPref.get().booleanValue() && a() : a();
    }

    protected abstract String getAssetSourceUrl();

    protected abstract String getCustomizableSignature();

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAsset(String str) {
        this.f14988b = str;
    }
}
