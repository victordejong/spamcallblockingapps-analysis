package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/CoverAssetManager.class */
public class CoverAssetManager extends UrlAssetManager {
    public CoverAssetManager() {
        super(null);
    }

    /* renamed from: b */
    public static boolean m28420b() {
        return Prefs.f26396dN.get() != null;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    /* renamed from: a */
    public final boolean mo28399a() {
        return m28420b();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        int nextInt = new Random().nextInt(Prefs.f26402dT.length);
        while (nextInt >= 0 && Prefs.f26402dT[nextInt].isNull()) {
            nextInt--;
        }
        if (nextInt >= 0) {
            return Prefs.f26402dT[nextInt].get();
        }
        return null;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        return null;
    }
}
