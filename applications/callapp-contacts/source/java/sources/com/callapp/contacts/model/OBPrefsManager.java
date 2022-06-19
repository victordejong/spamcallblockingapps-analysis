package com.callapp.contacts.model;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.objectbox.OBPref;
import com.callapp.contacts.model.objectbox.OBPref_;
import io.objectbox.C17944a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/OBPrefsManager.class */
public class OBPrefsManager {
    public static List<OBPref> getPrefs() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(OBPref.class).m4703c();
    }

    public static void setString(String str, String str2) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(OBPref.class);
        OBPref oBPref = (OBPref) m4727d.m4700e().m4611a(OBPref_.key, str).m4618a().m4641a();
        if (str2 == null) {
            if (oBPref == null) {
                return;
            }
            m4727d.m4705b((C17944a) oBPref);
            return;
        }
        OBPref oBPref2 = oBPref;
        if (oBPref == null) {
            oBPref2 = new OBPref();
            oBPref2.setKey(str);
        }
        oBPref2.setValue(str2);
        m4727d.m4711a((C17944a) oBPref2);
    }
}
