package com.callapp.contacts.loader;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.UserMediaData;
import com.callapp.contacts.model.objectbox.UserMediaData_;
import com.callapp.framework.phone.Phone;
import io.objectbox.C17944a;
import io.objectbox.query.Query;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/UserMediaManager.class */
public class UserMediaManager {
    /* renamed from: a */
    public static UserMediaData m28895a(long j, Phone phone) {
        return m28891c(j, phone).m4641a();
    }

    /* renamed from: a */
    public static void m28894a(long j, Phone phone, String str) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(UserMediaData.class);
        UserMediaData m4641a = m28891c(j, phone).m4641a();
        UserMediaData userMediaData = m4641a;
        if (m4641a == null) {
            userMediaData = new UserMediaData();
            userMediaData.setPhoneOrIdKey(ContactData.generateId(phone, j));
        }
        userMediaData.setPhotoUrl(str);
        m4727d.m4711a((C17944a) userMediaData);
    }

    /* renamed from: a */
    public static void m28893a(String str) {
        CallAppApplication.get().getObjectBoxStore().m4727d(UserMediaData.class).m4700e().m4611a(UserMediaData_.photoUrl, str).m4618a().m4624f();
    }

    /* renamed from: b */
    public static void m28892b(long j, Phone phone) {
        m28891c(j, phone).m4624f();
    }

    /* renamed from: c */
    private static Query<UserMediaData> m28891c(long j, Phone phone) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(UserMediaData.class);
        return m4727d.m4700e().m4611a(UserMediaData_.phoneOrIdKey, ContactData.generateId(phone, j)).m4618a();
    }
}
