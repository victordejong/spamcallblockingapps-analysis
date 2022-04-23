package com.callapp.contacts.model;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.objectbox.OBPref;
import com.callapp.contacts.model.objectbox.OBPref_;
import io.objectbox.a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/OBPrefsManager.class */
public class OBPrefsManager {
    public static List<OBPref> getPrefs() {
        return CallAppApplication.get().getObjectBoxStore().d(OBPref.class).c();
    }

    public static void setString(String str, String str2) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(OBPref.class);
        OBPref oBPref = (OBPref) d2.e().a(OBPref_.key, str).a().a();
        if (str2 != null) {
            OBPref oBPref2 = oBPref;
            if (oBPref == null) {
                oBPref2 = new OBPref();
                oBPref2.setKey(str);
            }
            oBPref2.setValue(str2);
            d2.a((a) oBPref2);
        } else if (oBPref != null) {
            d2.b((a) oBPref);
        }
    }
}
