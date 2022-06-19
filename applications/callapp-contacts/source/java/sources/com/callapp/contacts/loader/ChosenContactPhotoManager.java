package com.callapp.contacts.loader;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto_;
import com.callapp.framework.phone.Phone;
import io.objectbox.C17944a;
import io.objectbox.query.Query;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/ChosenContactPhotoManager.class */
public class ChosenContactPhotoManager {
    /* renamed from: a */
    public static ChosenContactPhoto m28956a(long j, Phone phone) {
        return m28953c(j, phone).m4641a();
    }

    /* renamed from: a */
    public static void m28955a(long j, Phone phone, DataSource dataSource, String str) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(ChosenContactPhoto.class);
        ChosenContactPhoto m28956a = m28956a(j, phone);
        ChosenContactPhoto chosenContactPhoto = m28956a;
        if (m28956a == null) {
            chosenContactPhoto = new ChosenContactPhoto();
            chosenContactPhoto.setPhoneOrIdKey(ContactData.generateId(phone, j));
        }
        chosenContactPhoto.setDataSource(dataSource);
        chosenContactPhoto.setUrl(str);
        m4727d.m4711a((C17944a) chosenContactPhoto);
    }

    /* renamed from: b */
    public static void m28954b(long j, Phone phone) {
        m28953c(j, phone).m4624f();
    }

    /* renamed from: c */
    private static Query<ChosenContactPhoto> m28953c(long j, Phone phone) {
        return CallAppApplication.get().getObjectBoxStore().m4727d(ChosenContactPhoto.class).m4700e().m4611a(ChosenContactPhoto_.phoneOrIdKey, ContactData.generateId(phone, j)).m4618a();
    }
}
