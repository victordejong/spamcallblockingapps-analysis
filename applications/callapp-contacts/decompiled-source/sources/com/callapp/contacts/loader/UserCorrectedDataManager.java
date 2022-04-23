package com.callapp.contacts.loader;

import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.UserCorrectedData;
import com.callapp.contacts.model.objectbox.UserCorrectedData_;
import com.callapp.contacts.model.objectbox.UserCorrectedPositiveData;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.BoxStore;
import io.objectbox.a;
import io.objectbox.query.QueryBuilder;
import io.objectbox.relation.ToMany;
import io.objectbox.relation.b;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/UserCorrectedDataManager.class */
public class UserCorrectedDataManager {
    public static UserCorrectedData a(long j, Phone phone, int i, String str) {
        if (!StringUtils.b((CharSequence) str) || phone == null || !phone.isNotEmpty()) {
            return null;
        }
        a d2 = CallAppApplication.get().getObjectBoxStore().d(UserCorrectedData.class);
        UserCorrectedData a2 = a(j, phone.a());
        if (a2.getId() == null) {
            AnalyticsDataManager.a();
        }
        a2.setUserCorrectedType(i);
        a2.setFullName(str);
        d2.a((a) a2);
        return a2;
    }

    private static UserCorrectedData a(long j, String str) {
        UserCorrectedData a2 = a(j, str, true);
        UserCorrectedData userCorrectedData = a2;
        if (a2 == null) {
            userCorrectedData = new UserCorrectedData();
            userCorrectedData.setPhoneOrIdKey(ContactData.generateId(PhoneManager.get().a(str), j));
            a(userCorrectedData);
        }
        return userCorrectedData;
    }

    public static UserCorrectedData a(long j, String str, int i, String str2) {
        if ((j <= 0 && !StringUtils.b((CharSequence) str)) || str2 == null || i <= 0 || i > 10) {
            return null;
        }
        a d2 = CallAppApplication.get().getObjectBoxStore().d(UserCorrectedData.class);
        UserCorrectedData a2 = a(j, str);
        if (a2.getId() == null) {
            AnalyticsDataManager.c();
        }
        UserCorrectedPositiveData userCorrectedPositiveData = new UserCorrectedPositiveData();
        userCorrectedPositiveData.setSocialNetworkId(i);
        userCorrectedPositiveData.setProfileId(str2);
        a2.getUserCorrectedPositive().add(userCorrectedPositiveData);
        d2.a((a) a2);
        return a2;
    }

    public static UserCorrectedData a(long j, String str, boolean z) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(UserCorrectedData.class);
        String generateId = ContactData.generateId(PhoneManager.get().a(str), j);
        QueryBuilder e = d2.e();
        e.a(UserCorrectedData_.phoneOrIdKey, generateId);
        if (z) {
            e.a(UserCorrectedData_.userCorrectedPositive, new b[0]);
        }
        return (UserCorrectedData) e.a().a();
    }

    public static void a(long j, String str, int i) {
        BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
        final a d2 = objectBoxStore.d(UserCorrectedData.class);
        QueryBuilder e = d2.e();
        e.a(UserCorrectedData_.phoneOrIdKey, ContactData.generateId(PhoneManager.get().a(str), j));
        final UserCorrectedData userCorrectedData = (UserCorrectedData) e.a().a();
        if (userCorrectedData != null) {
            ToMany<UserCorrectedPositiveData> userCorrectedPositive = userCorrectedData.getUserCorrectedPositive();
            if (CollectionUtils.b(userCorrectedPositive)) {
                Iterator<UserCorrectedPositiveData> it2 = userCorrectedPositive.iterator();
                final UserCorrectedPositiveData userCorrectedPositiveData = null;
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    userCorrectedPositiveData = it2.next();
                    if (userCorrectedPositiveData.getSocialNetworkId() == i) {
                        it2.remove();
                        break;
                    }
                }
                final a d3 = objectBoxStore.d(UserCorrectedPositiveData.class);
                if (userCorrectedPositiveData != null) {
                    objectBoxStore.a(new Runnable() { // from class: com.callapp.contacts.loader.UserCorrectedDataManager.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            a.this.a((a) userCorrectedData);
                            d3.b((a) userCorrectedPositiveData);
                        }
                    });
                }
            }
        }
    }

    private static void a(UserCorrectedData... userCorrectedDataArr) {
        if (CollectionUtils.b(userCorrectedDataArr)) {
            for (int i = 0; i <= 0; i++) {
                UserCorrectedData userCorrectedData = userCorrectedDataArr[0];
                Pair<String, Long> splitPhoneOrIdKey = ContactData.splitPhoneOrIdKey(userCorrectedData.getPhoneOrIdKey());
                userCorrectedData.setPhoneNumber((String) splitPhoneOrIdKey.first);
                userCorrectedData.setContactId(((Long) splitPhoneOrIdKey.second).longValue());
            }
        }
    }

    public static boolean a(long j, Phone phone) {
        if (phone == null || !phone.isNotEmpty()) {
            return false;
        }
        a d2 = CallAppApplication.get().getObjectBoxStore().d(UserCorrectedData.class);
        String generateId = ContactData.generateId(phone, j);
        QueryBuilder e = d2.e();
        e.a(UserCorrectedData_.phoneOrIdKey, generateId);
        return ((UserCorrectedData) e.a().a()) != null;
    }

    public static List<UserCorrectedData> getAllUserCorrectedData() {
        List<UserCorrectedData> c2 = CallAppApplication.get().getObjectBoxStore().d(UserCorrectedData.class).c();
        if (CollectionUtils.b(c2)) {
            Iterator<UserCorrectedData> it2 = c2.iterator();
            while (it2.hasNext()) {
                a(it2.next());
            }
        }
        return c2;
    }
}
