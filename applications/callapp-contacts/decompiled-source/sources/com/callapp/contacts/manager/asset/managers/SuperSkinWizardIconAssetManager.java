package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/SuperSkinWizardIconAssetManager.class */
public class SuperSkinWizardIconAssetManager extends UrlAssetManager {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SuperSkinWizardIconAssetManager(BooleanPref booleanPref) {
        super(booleanPref);
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    public final boolean a() {
        return Prefs.dL.isNotNull();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        return Prefs.dL.get();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        return null;
    }
}
