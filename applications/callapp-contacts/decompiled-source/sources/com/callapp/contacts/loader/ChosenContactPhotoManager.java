package com.callapp.contacts.loader;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto;
import com.callapp.contacts.model.objectbox.ChosenContactPhoto_;
import com.callapp.framework.phone.Phone;
import io.objectbox.a;
import io.objectbox.query.Query;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/ChosenContactPhotoManager.class */
public class ChosenContactPhotoManager {
    public static ChosenContactPhoto a(long j, Phone phone) {
        return c(j, phone).a();
    }

    public static void a(long j, Phone phone, DataSource dataSource, String str) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(ChosenContactPhoto.class);
        ChosenContactPhoto a2 = a(j, phone);
        ChosenContactPhoto chosenContactPhoto = a2;
        if (a2 == null) {
            chosenContactPhoto = new ChosenContactPhoto();
            chosenContactPhoto.setPhoneOrIdKey(ContactData.generateId(phone, j));
        }
        chosenContactPhoto.setDataSource(dataSource);
        chosenContactPhoto.setUrl(str);
        d2.a((a) chosenContactPhoto);
    }

    public static void b(long j, Phone phone) {
        c(j, phone).f();
    }

    private static Query<ChosenContactPhoto> c(long j, Phone phone) {
        return CallAppApplication.get().getObjectBoxStore().d(ChosenContactPhoto.class).e().a(ChosenContactPhoto_.phoneOrIdKey, ContactData.generateId(phone, j)).a();
    }
}
