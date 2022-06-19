package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/OverlayAssetManager.class */
public class OverlayAssetManager extends UrlAssetManager {
    public OverlayAssetManager() {
        super(null);
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    /* renamed from: a */
    public final boolean mo28399a() {
        return Prefs.f26426dr.get() != null;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        int nextInt = new Random().nextInt(Prefs.f26425dq.length);
        while (nextInt >= 0 && Prefs.f26425dq[nextInt].isNull()) {
            nextInt--;
        }
        if (nextInt >= 0) {
            return Prefs.f26425dq[nextInt].get();
        }
        return null;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        return null;
    }
}
