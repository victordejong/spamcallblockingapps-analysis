package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/KeypadAssetManager.class */
public class KeypadAssetManager extends UrlAssetManager {
    public KeypadAssetManager(BooleanPref booleanPref) {
        super(booleanPref);
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    /* renamed from: a */
    public final boolean mo28399a() {
        return Prefs.f26401dS.isNotNull();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        return Prefs.f26401dS.get();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        if (Prefs.f26399dQ.isNotNull()) {
            return String.valueOf(Prefs.f26399dQ.get());
        }
        return null;
    }
}
