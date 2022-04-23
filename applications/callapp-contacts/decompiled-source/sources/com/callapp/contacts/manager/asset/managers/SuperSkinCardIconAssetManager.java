package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/SuperSkinCardIconAssetManager.class */
public class SuperSkinCardIconAssetManager extends UrlAssetManager {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SuperSkinCardIconAssetManager(BooleanPref booleanPref) {
        super(booleanPref);
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    public final boolean a() {
        return Prefs.dK.isNotNull();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        return Prefs.dK.get();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        return null;
    }
}
