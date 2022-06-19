package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.util.ThemeUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/SuperSkinListBackgroundAssetManager.class */
public class SuperSkinListBackgroundAssetManager extends UrlAssetManager {
    public SuperSkinListBackgroundAssetManager(BooleanPref booleanPref) {
        super(booleanPref);
    }

    private StringPref getSuperSkinListBackgroundSource() {
        return ThemeUtils.isThemeLight() ? Prefs.f26389dG : Prefs.f26390dH;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    /* renamed from: a */
    public final boolean mo28399a() {
        return getSuperSkinListBackgroundSource().isNotNull();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        return getSuperSkinListBackgroundSource().get();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        return null;
    }
}
