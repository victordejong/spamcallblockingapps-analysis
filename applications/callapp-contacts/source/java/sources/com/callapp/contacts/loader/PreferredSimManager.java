package com.callapp.contacts.loader;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.PreferredSimData;
import com.callapp.contacts.model.objectbox.PreferredSimData_;
import com.callapp.framework.phone.Phone;
import io.objectbox.C17944a;
import io.objectbox.query.Query;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/PreferredSimManager.class */
public class PreferredSimManager {
    /* renamed from: a */
    public static SimManager.SimId m28907a(long j, Phone phone) {
        PreferredSimData m4641a = m28905b(j, phone).m4641a();
        if (m4641a != null) {
            return m4641a.getSimId();
        }
        return null;
    }

    /* renamed from: a */
    public static void m28906a(long j, Phone phone, SimManager.SimId simId) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(PreferredSimData.class);
        PreferredSimData m4641a = m28905b(j, phone).m4641a();
        PreferredSimData preferredSimData = m4641a;
        if (m4641a == null) {
            preferredSimData = new PreferredSimData();
            preferredSimData.setPhoneOrIdKey(ContactData.generateId(phone, j));
        }
        preferredSimData.setSimId(simId);
        m4727d.m4711a((C17944a) preferredSimData);
    }

    /* renamed from: b */
    private static Query<PreferredSimData> m28905b(long j, Phone phone) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(PreferredSimData.class);
        return m4727d.m4700e().m4611a(PreferredSimData_.phoneOrIdKey, ContactData.generateId(phone, j)).m4618a();
    }
}
