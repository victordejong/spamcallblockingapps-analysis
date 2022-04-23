package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/OverlayAssetManager.class */
public class OverlayAssetManager extends UrlAssetManager {
    /* JADX INFO: Access modifiers changed from: package-private */
    public OverlayAssetManager() {
        super(null);
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    public final boolean a() {
        return Prefs.dr.get() != null;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        int nextInt = new Random().nextInt(Prefs.dq.length);
        while (nextInt >= 0 && Prefs.dq[nextInt].isNull()) {
            nextInt--;
        }
        if (nextInt >= 0) {
            return Prefs.dq[nextInt].get();
        }
        return null;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        return null;
    }
}
