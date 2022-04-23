package com.callapp.contacts.loader;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.PreferredSimData;
import com.callapp.contacts.model.objectbox.PreferredSimData_;
import com.callapp.framework.phone.Phone;
import io.objectbox.a;
import io.objectbox.query.Query;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/PreferredSimManager.class */
public class PreferredSimManager {
    public static SimManager.SimId a(long j, Phone phone) {
        PreferredSimData a2 = b(j, phone).a();
        if (a2 != null) {
            return a2.getSimId();
        }
        return null;
    }

    public static void a(long j, Phone phone, SimManager.SimId simId) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(PreferredSimData.class);
        PreferredSimData a2 = b(j, phone).a();
        PreferredSimData preferredSimData = a2;
        if (a2 == null) {
            preferredSimData = new PreferredSimData();
            preferredSimData.setPhoneOrIdKey(ContactData.generateId(phone, j));
        }
        preferredSimData.setSimId(simId);
        d2.a((a) preferredSimData);
    }

    private static Query<PreferredSimData> b(long j, Phone phone) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(PreferredSimData.class);
        return d2.e().a(PreferredSimData_.phoneOrIdKey, ContactData.generateId(phone, j)).a();
    }
}
