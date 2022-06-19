package com.callapp.contacts.loader;

import android.util.Pair;
import android.util.SparseArray;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.UserNegativePositiveData;
import com.callapp.contacts.model.objectbox.UserNegativePositiveData_;
import com.callapp.contacts.model.objectbox.UserNegativeSocialData;
import com.callapp.contacts.model.objectbox.UserPositiveSocialData;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.BoxStore;
import io.objectbox.C17944a;
import io.objectbox.query.QueryBuilder;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToMany;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/UserPositiveNegativeManager.class */
public class UserPositiveNegativeManager {
    /* renamed from: a */
    public static UserNegativePositiveData m28889a(long j, Phone phone) {
        return m28884a(phone, j);
    }

    /* renamed from: a */
    private static UserNegativePositiveData m28884a(Phone phone, long j) {
        String generateId = ContactData.generateId(phone, j);
        QueryBuilder m4700e = CallAppApplication.get().getObjectBoxStore().m4727d(UserNegativePositiveData.class).m4700e();
        m4700e.m4611a(UserNegativePositiveData_.phoneOrIdKey, generateId).m4608a(UserNegativePositiveData_.userNegativeSocialData, new C17990b[0]).m4608a(UserNegativePositiveData_.userPositiveSocialData, new C17990b[0]);
        return (UserNegativePositiveData) m4700e.m4618a().m4641a();
    }

    /* renamed from: a */
    private static UserNegativePositiveData m28883a(String str, long j) {
        return m28877b(PhoneManager.get().m28239a(str), j);
    }

    /* renamed from: a */
    private static UserPositiveSocialData m28881a(List<UserPositiveSocialData> list, int i) {
        if (CollectionUtils.m26068b(list)) {
            for (UserPositiveSocialData userPositiveSocialData : list) {
                if (userPositiveSocialData.getSocialNetworkId() == i) {
                    return userPositiveSocialData;
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: a */
    public static void m28890a(long j) {
        final UserNegativePositiveData m28884a = m28884a(Phone.f29662b, j);
        if (m28884a == null || !CollectionUtils.m26068b(m28884a.getUserPositiveSocialData())) {
            return;
        }
        boolean z = false;
        Iterator<UserPositiveSocialData> it2 = m28884a.getUserPositiveSocialData().iterator();
        final ArrayList arrayList = new ArrayList();
        while (it2.hasNext()) {
            UserPositiveSocialData next = it2.next();
            if (!next.isSure()) {
                it2.remove();
                arrayList.add(next);
                z = true;
            }
        }
        if (!z) {
            return;
        }
        BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
        final C17944a m4727d = objectBoxStore.m4727d(UserNegativePositiveData.class);
        final C17944a m4727d2 = objectBoxStore.m4727d(UserPositiveSocialData.class);
        objectBoxStore.m4742a(new Runnable() { // from class: com.callapp.contacts.loader.UserPositiveNegativeManager.1
            @Override // java.lang.Runnable
            public final void run() {
                m4727d.m4711a((C17944a) m28884a);
                m4727d2.m4704b((Collection) arrayList);
            }
        });
    }

    /* renamed from: a */
    public static void m28887a(long j, String str, int i) {
        final UserNegativePositiveData m28883a = m28883a(str, j);
        ToMany<UserPositiveSocialData> userPositiveSocialData = m28883a.getUserPositiveSocialData();
        final ArrayList arrayList = new ArrayList();
        if (CollectionUtils.m26068b(userPositiveSocialData)) {
            Iterator<UserPositiveSocialData> it2 = userPositiveSocialData.iterator();
            while (it2.hasNext()) {
                UserPositiveSocialData next = it2.next();
                if (next.getSocialNetworkId() == i) {
                    arrayList.add(next);
                    it2.remove();
                }
            }
        }
        UserNegativeSocialData userNegativeSocialData = new UserNegativeSocialData();
        userNegativeSocialData.setSocialNetworkId(i);
        userNegativeSocialData.setProfileId("DONTHAVE");
        m28883a.getUserNegativeSocialData().add(userNegativeSocialData);
        BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
        final C17944a m4727d = objectBoxStore.m4727d(UserNegativePositiveData.class);
        final C17944a m4727d2 = objectBoxStore.m4727d(UserPositiveSocialData.class);
        objectBoxStore.m4742a(new Runnable() { // from class: com.callapp.contacts.loader.UserPositiveNegativeManager.3
            @Override // java.lang.Runnable
            public final void run() {
                m4727d.m4711a((C17944a) m28883a);
                m4727d2.m4704b((Collection) arrayList);
            }
        });
    }

    /* renamed from: a */
    public static void m28886a(long j, String str, int i, String str2) {
        boolean z;
        if (!(j == 0 && str == null) && str2 != null && i > 0 && i <= 10) {
            final UserNegativePositiveData m28883a = m28883a(str, j);
            Iterator<UserNegativeSocialData> it2 = m28883a.getUserNegativeSocialData().iterator();
            while (true) {
                z = false;
                if (!it2.hasNext()) {
                    break;
                }
                UserNegativeSocialData next = it2.next();
                if (next.getSocialNetworkId() == i && StringUtils.m26044b((Object) next.getProfileId(), (Object) str2)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                UserNegativeSocialData userNegativeSocialData = new UserNegativeSocialData();
                m28883a.setPhoneOrIdKey(ContactData.generateId(PhoneManager.get().m28239a(str), j));
                userNegativeSocialData.setSocialNetworkId(i);
                userNegativeSocialData.setProfileId(str2);
                m28883a.getUserNegativeSocialData().add(userNegativeSocialData);
            }
            Iterator<UserPositiveSocialData> it3 = m28883a.getUserPositiveSocialData().iterator();
            final ArrayList arrayList = new ArrayList();
            while (it3.hasNext()) {
                UserPositiveSocialData next2 = it3.next();
                if (next2.getSocialNetworkId() == i && StringUtils.m26042b(next2.getProfileId(), str2)) {
                    arrayList.add(next2);
                    it3.remove();
                }
            }
            BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
            final C17944a m4727d = objectBoxStore.m4727d(UserNegativePositiveData.class);
            final C17944a m4727d2 = objectBoxStore.m4727d(UserPositiveSocialData.class);
            objectBoxStore.m4742a(new Runnable() { // from class: com.callapp.contacts.loader.UserPositiveNegativeManager.2
                @Override // java.lang.Runnable
                public final void run() {
                    m4727d.m4711a((C17944a) m28883a);
                    m4727d2.m4704b((Collection) arrayList);
                }
            });
        }
    }

    /* renamed from: a */
    private static void m28882a(List<UserNegativePositiveData> list) {
        if (CollectionUtils.m26068b(list)) {
            Iterator<UserNegativePositiveData> it2 = list.iterator();
            while (it2.hasNext()) {
                m28880a(it2.next());
            }
        }
    }

    /* renamed from: a */
    private static void m28880a(UserNegativePositiveData... userNegativePositiveDataArr) {
        if (CollectionUtils.m26066b(userNegativePositiveDataArr)) {
            for (int i = 0; i <= 0; i++) {
                UserNegativePositiveData userNegativePositiveData = userNegativePositiveDataArr[0];
                Pair<String, Long> splitPhoneOrIdKey = ContactData.splitPhoneOrIdKey(userNegativePositiveData.getPhoneOrIdKey());
                userNegativePositiveData.setPhoneNumber((String) splitPhoneOrIdKey.first);
                userNegativePositiveData.setContactId(((Long) splitPhoneOrIdKey.second).longValue());
            }
        }
    }

    /* renamed from: a */
    public static boolean m28888a(long j, Phone phone, int i) {
        return m28881a(m28877b(phone, j).getUserPositiveSocialData(), i) != null;
    }

    /* renamed from: a */
    public static boolean m28885a(long j, String str, int i, String str2, boolean z) {
        final UserNegativePositiveData m28883a = m28883a(str, j);
        ToMany<UserPositiveSocialData> userPositiveSocialData = m28883a.getUserPositiveSocialData();
        final UserPositiveSocialData m28881a = m28881a(userPositiveSocialData, i);
        if (m28881a != null) {
            userPositiveSocialData.remove(m28881a);
        }
        UserPositiveSocialData userPositiveSocialData2 = new UserPositiveSocialData();
        userPositiveSocialData2.setSocialNetworkId(i);
        userPositiveSocialData2.setProfileId(str2);
        userPositiveSocialData2.setSure(z);
        userPositiveSocialData.add(userPositiveSocialData2);
        BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
        final C17944a m4727d = objectBoxStore.m4727d(UserNegativePositiveData.class);
        final C17944a m4727d2 = objectBoxStore.m4727d(UserPositiveSocialData.class);
        objectBoxStore.m4742a(new Runnable() { // from class: com.callapp.contacts.loader.UserPositiveNegativeManager.4
            @Override // java.lang.Runnable
            public final void run() {
                m4727d.m4711a((C17944a) m28883a);
                UserPositiveSocialData userPositiveSocialData3 = m28881a;
                if (userPositiveSocialData3 != null) {
                    m4727d2.m4705b((C17944a) userPositiveSocialData3);
                }
            }
        });
        return true;
    }

    /* renamed from: b */
    public static SparseArray<Set<String>> m28879b(long j, Phone phone) {
        SparseArray<Set<String>> sparseArray = new SparseArray<>();
        UserNegativePositiveData m28884a = m28884a(phone, j);
        if (m28884a != null) {
            Iterator<UserNegativeSocialData> it2 = m28884a.getUserNegativeSocialData().iterator();
            while (it2.hasNext()) {
                UserNegativeSocialData next = it2.next();
                Set<String> set = sparseArray.get(next.getSocialNetworkId());
                HashSet hashSet = set;
                if (set == null) {
                    hashSet = new HashSet();
                    sparseArray.put(next.getSocialNetworkId(), hashSet);
                }
                hashSet.add(next.getProfileId());
            }
        }
        return sparseArray;
    }

    /* renamed from: b */
    private static UserNegativePositiveData m28877b(Phone phone, long j) {
        UserNegativePositiveData m28884a = m28884a(phone, j);
        UserNegativePositiveData userNegativePositiveData = m28884a;
        if (m28884a == null) {
            userNegativePositiveData = new UserNegativePositiveData();
            userNegativePositiveData.setPhoneOrIdKey(ContactData.generateId(phone, j));
            m28880a(userNegativePositiveData);
        }
        return userNegativePositiveData;
    }

    /* renamed from: b */
    public static boolean m28878b(long j, String str, int i, String str2) {
        final UserNegativePositiveData m28884a = m28884a(PhoneManager.get().m28239a(str), j);
        final ArrayList arrayList = new ArrayList();
        boolean z = false;
        boolean z2 = false;
        if (m28884a != null) {
            Iterator<UserNegativeSocialData> it2 = m28884a.getUserNegativeSocialData().iterator();
            while (it2.hasNext()) {
                UserNegativeSocialData next = it2.next();
                if (StringUtils.m26045b((CharSequence) next.getProfileId()) && next.getProfileId().equalsIgnoreCase("DONTHAVE")) {
                    arrayList.add(next);
                    it2.remove();
                } else if (i > 0 && next.getSocialNetworkId() == i && StringUtils.m26044b((Object) next.getProfileId(), (Object) str2)) {
                    arrayList.add(next);
                    it2.remove();
                }
                z2 = true;
            }
            z = z2;
            if (z2) {
                BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
                final C17944a m4727d = objectBoxStore.m4727d(UserNegativePositiveData.class);
                final C17944a m4727d2 = objectBoxStore.m4727d(UserNegativeSocialData.class);
                objectBoxStore.m4742a(new Runnable() { // from class: com.callapp.contacts.loader.UserPositiveNegativeManager.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        m4727d.m4711a((C17944a) m28884a);
                        m4727d2.m4704b((Collection) arrayList);
                    }
                });
                z = z2;
            }
        }
        return z;
    }

    public static List<UserNegativePositiveData> getAll() {
        return CallAppApplication.get().getObjectBoxStore().m4727d(UserNegativePositiveData.class).m4703c();
    }

    public static List<String> getAllNonContactsWithNegativeOrPositive() {
        List<UserNegativePositiveData> m4628c = CallAppApplication.get().getObjectBoxStore().m4727d(UserNegativePositiveData.class).m4700e().m4601c(UserNegativePositiveData_.phoneOrIdKey, "@").m4618a().m4628c();
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.m26068b(m4628c)) {
            m28882a(m4628c);
            for (UserNegativePositiveData userNegativePositiveData : m4628c) {
                boolean z = CollectionUtils.m26068b(userNegativePositiveData.getUserPositiveSocialData()) || CollectionUtils.m26068b(userNegativePositiveData.getUserNegativeSocialData());
                boolean z2 = false;
                if (userNegativePositiveData.getPhoneNumber() != null) {
                    z2 = false;
                    if (StringUtils.m26045b((CharSequence) userNegativePositiveData.getPhoneNumber())) {
                        z2 = true;
                    }
                }
                if (z && z2) {
                    arrayList.add(userNegativePositiveData.getPhoneNumber());
                }
            }
        }
        return arrayList;
    }
}
