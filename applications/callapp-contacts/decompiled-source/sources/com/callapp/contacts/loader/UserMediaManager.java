package com.callapp.contacts.loader;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.UserMediaData;
import com.callapp.contacts.model.objectbox.UserMediaData_;
import com.callapp.framework.phone.Phone;
import io.objectbox.a;
import io.objectbox.query.Query;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/UserMediaManager.class */
public class UserMediaManager {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static UserMediaData a(long j, Phone phone) {
        return c(j, phone).a();
    }

    public static void a(long j, Phone phone, String str) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(UserMediaData.class);
        UserMediaData a2 = c(j, phone).a();
        UserMediaData userMediaData = a2;
        if (a2 == null) {
            userMediaData = new UserMediaData();
            userMediaData.setPhoneOrIdKey(ContactData.generateId(phone, j));
        }
        userMediaData.setPhotoUrl(str);
        d2.a((a) userMediaData);
    }

    public static void a(String str) {
        CallAppApplication.get().getObjectBoxStore().d(UserMediaData.class).e().a(UserMediaData_.photoUrl, str).a().f();
    }

    public static void b(long j, Phone phone) {
        c(j, phone).f();
    }

    private static Query<UserMediaData> c(long j, Phone phone) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(UserMediaData.class);
        return d2.e().a(UserMediaData_.phoneOrIdKey, ContactData.generateId(phone, j)).a();
    }
}
