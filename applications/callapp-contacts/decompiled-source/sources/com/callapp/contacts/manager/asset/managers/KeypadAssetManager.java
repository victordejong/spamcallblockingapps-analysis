package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/KeypadAssetManager.class */
public class KeypadAssetManager extends UrlAssetManager {
    /* JADX INFO: Access modifiers changed from: package-private */
    public KeypadAssetManager(BooleanPref booleanPref) {
        super(booleanPref);
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    public final boolean a() {
        return Prefs.dS.isNotNull();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        return Prefs.dS.get();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        if (Prefs.dQ.isNotNull()) {
            return String.valueOf(Prefs.dQ.get());
        }
        return null;
    }
}
