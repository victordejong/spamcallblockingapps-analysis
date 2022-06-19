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
import io.objectbox.C17944a;
import io.objectbox.query.QueryBuilder;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToMany;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/UserCorrectedDataManager.class */
public class UserCorrectedDataManager {
    /* renamed from: a */
    public static UserCorrectedData m28902a(long j, Phone phone, int i, String str) {
        if (!StringUtils.m26045b((CharSequence) str) || phone == null || !phone.isNotEmpty()) {
            return null;
        }
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(UserCorrectedData.class);
        UserCorrectedData m28901a = m28901a(j, phone.m26101a());
        if (m28901a.getId() == null) {
            AnalyticsDataManager.m31635a();
        }
        m28901a.setUserCorrectedType(i);
        m28901a.setFullName(str);
        m4727d.m4711a((C17944a) m28901a);
        return m28901a;
    }

    /* renamed from: a */
    private static UserCorrectedData m28901a(long j, String str) {
        UserCorrectedData m28898a = m28898a(j, str, true);
        UserCorrectedData userCorrectedData = m28898a;
        if (m28898a == null) {
            userCorrectedData = new UserCorrectedData();
            userCorrectedData.setPhoneOrIdKey(ContactData.generateId(PhoneManager.get().m28239a(str), j));
            m28897a(userCorrectedData);
        }
        return userCorrectedData;
    }

    /* renamed from: a */
    public static UserCorrectedData m28899a(long j, String str, int i, String str2) {
        if ((j > 0 || StringUtils.m26045b((CharSequence) str)) && str2 != null && i > 0 && i <= 10) {
            C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(UserCorrectedData.class);
            UserCorrectedData m28901a = m28901a(j, str);
            if (m28901a.getId() == null) {
                AnalyticsDataManager.m31624c();
            }
            UserCorrectedPositiveData userCorrectedPositiveData = new UserCorrectedPositiveData();
            userCorrectedPositiveData.setSocialNetworkId(i);
            userCorrectedPositiveData.setProfileId(str2);
            m28901a.getUserCorrectedPositive().add(userCorrectedPositiveData);
            m4727d.m4711a((C17944a) m28901a);
            return m28901a;
        }
        return null;
    }

    /* renamed from: a */
    public static UserCorrectedData m28898a(long j, String str, boolean z) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(UserCorrectedData.class);
        String generateId = ContactData.generateId(PhoneManager.get().m28239a(str), j);
        QueryBuilder m4700e = m4727d.m4700e();
        m4700e.m4611a(UserCorrectedData_.phoneOrIdKey, generateId);
        if (z) {
            m4700e.m4608a(UserCorrectedData_.userCorrectedPositive, new C17990b[0]);
        }
        return (UserCorrectedData) m4700e.m4618a().m4641a();
    }

    /* renamed from: a */
    public static void m28900a(long j, String str, int i) {
        UserCorrectedPositiveData userCorrectedPositiveData;
        BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
        final C17944a m4727d = objectBoxStore.m4727d(UserCorrectedData.class);
        QueryBuilder m4700e = m4727d.m4700e();
        m4700e.m4611a(UserCorrectedData_.phoneOrIdKey, ContactData.generateId(PhoneManager.get().m28239a(str), j));
        final UserCorrectedData userCorrectedData = (UserCorrectedData) m4700e.m4618a().m4641a();
        if (userCorrectedData != null) {
            ToMany<UserCorrectedPositiveData> userCorrectedPositive = userCorrectedData.getUserCorrectedPositive();
            if (!CollectionUtils.m26068b(userCorrectedPositive)) {
                return;
            }
            Iterator<UserCorrectedPositiveData> it2 = userCorrectedPositive.iterator();
            while (true) {
                userCorrectedPositiveData = null;
                if (!it2.hasNext()) {
                    break;
                }
                userCorrectedPositiveData = it2.next();
                if (userCorrectedPositiveData.getSocialNetworkId() == i) {
                    it2.remove();
                    break;
                }
            }
            final C17944a m4727d2 = objectBoxStore.m4727d(UserCorrectedPositiveData.class);
            if (userCorrectedPositiveData == null) {
                return;
            }
            final UserCorrectedPositiveData userCorrectedPositiveData2 = userCorrectedPositiveData;
            objectBoxStore.m4742a(new Runnable() { // from class: com.callapp.contacts.loader.UserCorrectedDataManager.1
                @Override // java.lang.Runnable
                public final void run() {
                    m4727d.m4711a((C17944a) userCorrectedData);
                    m4727d2.m4705b((C17944a) userCorrectedPositiveData2);
                }
            });
        }
    }

    /* renamed from: a */
    private static void m28897a(UserCorrectedData... userCorrectedDataArr) {
        if (CollectionUtils.m26066b(userCorrectedDataArr)) {
            for (int i = 0; i <= 0; i++) {
                UserCorrectedData userCorrectedData = userCorrectedDataArr[0];
                Pair<String, Long> splitPhoneOrIdKey = ContactData.splitPhoneOrIdKey(userCorrectedData.getPhoneOrIdKey());
                userCorrectedData.setPhoneNumber((String) splitPhoneOrIdKey.first);
                userCorrectedData.setContactId(((Long) splitPhoneOrIdKey.second).longValue());
            }
        }
    }

    /* renamed from: a */
    public static boolean m28903a(long j, Phone phone) {
        if (phone == null || !phone.isNotEmpty()) {
            return false;
        }
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(UserCorrectedData.class);
        String generateId = ContactData.generateId(phone, j);
        QueryBuilder m4700e = m4727d.m4700e();
        m4700e.m4611a(UserCorrectedData_.phoneOrIdKey, generateId);
        return ((UserCorrectedData) m4700e.m4618a().m4641a()) != null;
    }

    public static List<UserCorrectedData> getAllUserCorrectedData() {
        List<UserCorrectedData> m4703c = CallAppApplication.get().getObjectBoxStore().m4727d(UserCorrectedData.class).m4703c();
        if (CollectionUtils.m26068b(m4703c)) {
            Iterator<UserCorrectedData> it2 = m4703c.iterator();
            while (it2.hasNext()) {
                m28897a(it2.next());
            }
        }
        return m4703c;
    }
}
