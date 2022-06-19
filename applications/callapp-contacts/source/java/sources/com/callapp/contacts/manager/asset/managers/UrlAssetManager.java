package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.asset.managers.StoreItemAssetManager;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/UrlAssetManager.class */
public abstract class UrlAssetManager {

    /* renamed from: a */
    private BooleanPref f25920a;

    /* renamed from: b */
    private String f25921b;

    /* renamed from: c */
    private final Object f25922c = new Object();

    public UrlAssetManager(BooleanPref booleanPref) {
        this.f25920a = booleanPref;
    }

    /* renamed from: a */
    public final void m28398a(StoreItemAssetManager.AssetListener<String> assetListener) {
        String str = this.f25921b;
        if (str != null) {
            assetListener.onAssetReady(str, getCustomizableSignature());
            return;
        }
        synchronized (this.f25922c) {
            String assetSourceUrl = getAssetSourceUrl();
            setAsset(assetSourceUrl);
            assetListener.onAssetReady(assetSourceUrl, getCustomizableSignature());
        }
    }

    /* renamed from: a */
    protected abstract boolean mo28399a();

    /* renamed from: c */
    public final boolean m28397c() {
        BooleanPref booleanPref = this.f25920a;
        return booleanPref != null ? booleanPref.get().booleanValue() && mo28399a() : mo28399a();
    }

    protected abstract String getAssetSourceUrl();

    protected abstract String getCustomizableSignature();

    public void setAsset(String str) {
        this.f25921b = str;
    }
}
