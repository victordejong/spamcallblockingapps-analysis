package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
import com.callapp.contacts.util.ThemeUtils;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/SuperSkinTopBarBackgroundAssetManager.class */
public class SuperSkinTopBarBackgroundAssetManager extends UrlAssetManager {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SuperSkinTopBarBackgroundAssetManager(BooleanPref booleanPref) {
        super(booleanPref);
    }

    private StringPref[] getSuperSkinTopBarBackgroundSource() {
        return ThemeUtils.isThemeLight() ? Prefs.dI : Prefs.dJ;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    public final boolean a() {
        return getSuperSkinTopBarBackgroundSource()[0].isNotNull();
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getAssetSourceUrl() {
        Random random = new Random();
        StringPref[] superSkinTopBarBackgroundSource = getSuperSkinTopBarBackgroundSource();
        int nextInt = random.nextInt(superSkinTopBarBackgroundSource.length);
        while (nextInt >= 0 && superSkinTopBarBackgroundSource[nextInt].isNull()) {
            nextInt--;
        }
        if (nextInt >= 0) {
            return superSkinTopBarBackgroundSource[nextInt].get();
        }
        return null;
    }

    @Override // com.callapp.contacts.manager.asset.managers.UrlAssetManager
    protected String getCustomizableSignature() {
        return null;
    }
}
