package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/SuperSkinAnimationGifDownloaderAssetManager.class */
public class SuperSkinAnimationGifDownloaderAssetManager extends UrlAssetManager {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SuperSkinAnimationGifDownloaderAssetManager(BooleanPref booleanPref) {
        super(booleanPref);
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected final boolean a() {
        return Prefs.dM.isNotNull();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        return Prefs.dM.get();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        return null;
    }
}
