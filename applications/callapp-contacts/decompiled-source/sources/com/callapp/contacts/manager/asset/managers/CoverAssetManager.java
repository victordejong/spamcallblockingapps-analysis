package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/CoverAssetManager.class */
public class CoverAssetManager extends UrlAssetManager {
    /* JADX INFO: Access modifiers changed from: package-private */
    public CoverAssetManager() {
        super(null);
    }

    public static boolean b() {
        return Prefs.dN.get() != null;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    public final boolean a() {
        return b();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        int nextInt = new Random().nextInt(Prefs.dT.length);
        while (nextInt >= 0 && Prefs.dT[nextInt].isNull()) {
            nextInt--;
        }
        if (nextInt >= 0) {
            return Prefs.dT[nextInt].get();
        }
        return null;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        return null;
    }
}
