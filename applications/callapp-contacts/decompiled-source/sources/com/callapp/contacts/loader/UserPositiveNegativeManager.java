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
import io.objectbox.a;
import io.objectbox.query.QueryBuilder;
import io.objectbox.relation.ToMany;
import io.objectbox.relation.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/UserPositiveNegativeManager.class */
public class UserPositiveNegativeManager {
    public static UserNegativePositiveData a(long j, Phone phone) {
        return a(phone, j);
    }

    private static UserNegativePositiveData a(Phone phone, long j) {
        String generateId = ContactData.generateId(phone, j);
        QueryBuilder e = CallAppApplication.get().getObjectBoxStore().d(UserNegativePositiveData.class).e();
        e.a(UserNegativePositiveData_.phoneOrIdKey, generateId).a(UserNegativePositiveData_.userNegativeSocialData, new b[0]).a(UserNegativePositiveData_.userPositiveSocialData, new b[0]);
        return (UserNegativePositiveData) e.a().a();
    }

    private static UserNegativePositiveData a(String str, long j) {
        return b(PhoneManager.get().a(str), j);
    }

    private static UserPositiveSocialData a(List<UserPositiveSocialData> list, int i) {
        if (!CollectionUtils.b(list)) {
            return null;
        }
        for (UserPositiveSocialData userPositiveSocialData : list) {
            if (userPositiveSocialData.getSocialNetworkId() == i) {
                return userPositiveSocialData;
            }
        }
        return null;
    }

    public static void a(long j) {
        final UserNegativePositiveData a2 = a(Phone.f17100b, j);
        if (a2 != null && CollectionUtils.b(a2.getUserPositiveSocialData())) {
            boolean z = false;
            Iterator<UserPositiveSocialData> it2 = a2.getUserPositiveSocialData().iterator();
            final ArrayList arrayList = new ArrayList();
            while (it2.hasNext()) {
                UserPositiveSocialData next = it2.next();
                if (!next.isSure()) {
                    it2.remove();
                    arrayList.add(next);
                    z = true;
                }
            }
            if (z) {
                BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
                final a d2 = objectBoxStore.d(UserNegativePositiveData.class);
                final a d3 = objectBoxStore.d(UserPositiveSocialData.class);
                objectBoxStore.a(new Runnable() { // from class: com.callapp.contacts.loader.UserPositiveNegativeManager.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.a((a) a2);
                        d3.b((Collection) arrayList);
                    }
                });
            }
        }
    }

    public static void a(long j, String str, int i) {
        final UserNegativePositiveData a2 = a(str, j);
        ToMany<UserPositiveSocialData> userPositiveSocialData = a2.getUserPositiveSocialData();
        final ArrayList arrayList = new ArrayList();
        if (CollectionUtils.b(userPositiveSocialData)) {
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
        a2.getUserNegativeSocialData().add(userNegativeSocialData);
        BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
        final a d2 = objectBoxStore.d(UserNegativePositiveData.class);
        final a d3 = objectBoxStore.d(UserPositiveSocialData.class);
        objectBoxStore.a(new Runnable() { // from class: com.callapp.contacts.loader.UserPositiveNegativeManager.3
            @Override // java.lang.Runnable
            public final void run() {
                a.this.a((a) a2);
                d3.b((Collection) arrayList);
            }
        });
    }

    public static void a(long j, String str, int i, String str2) {
        if (!(j == 0 && str == null) && str2 != null && i > 0 && i <= 10) {
            final UserNegativePositiveData a2 = a(str, j);
            boolean z = false;
            Iterator<UserNegativeSocialData> it2 = a2.getUserNegativeSocialData().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                UserNegativeSocialData next = it2.next();
                if (next.getSocialNetworkId() == i && StringUtils.b((Object) next.getProfileId(), (Object) str2)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                UserNegativeSocialData userNegativeSocialData = new UserNegativeSocialData();
                a2.setPhoneOrIdKey(ContactData.generateId(PhoneManager.get().a(str), j));
                userNegativeSocialData.setSocialNetworkId(i);
                userNegativeSocialData.setProfileId(str2);
                a2.getUserNegativeSocialData().add(userNegativeSocialData);
            }
            Iterator<UserPositiveSocialData> it3 = a2.getUserPositiveSocialData().iterator();
            final ArrayList arrayList = new ArrayList();
            while (it3.hasNext()) {
                UserPositiveSocialData next2 = it3.next();
                if (next2.getSocialNetworkId() == i && StringUtils.b(next2.getProfileId(), str2)) {
                    arrayList.add(next2);
                    it3.remove();
                }
            }
            BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
            final a d2 = objectBoxStore.d(UserNegativePositiveData.class);
            final a d3 = objectBoxStore.d(UserPositiveSocialData.class);
            objectBoxStore.a(new Runnable() { // from class: com.callapp.contacts.loader.UserPositiveNegativeManager.2
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.a((a) a2);
                    d3.b((Collection) arrayList);
                }
            });
        }
    }

    private static void a(List<UserNegativePositiveData> list) {
        if (CollectionUtils.b(list)) {
            Iterator<UserNegativePositiveData> it2 = list.iterator();
            while (it2.hasNext()) {
                a(it2.next());
            }
        }
    }

    private static void a(UserNegativePositiveData... userNegativePositiveDataArr) {
        if (CollectionUtils.b(userNegativePositiveDataArr)) {
            for (int i = 0; i <= 0; i++) {
                UserNegativePositiveData userNegativePositiveData = userNegativePositiveDataArr[0];
                Pair<String, Long> splitPhoneOrIdKey = ContactData.splitPhoneOrIdKey(userNegativePositiveData.getPhoneOrIdKey());
                userNegativePositiveData.setPhoneNumber((String) splitPhoneOrIdKey.first);
                userNegativePositiveData.setContactId(((Long) splitPhoneOrIdKey.second).longValue());
            }
        }
    }

    public static boolean a(long j, Phone phone, int i) {
        return a(b(phone, j).getUserPositiveSocialData(), i) != null;
    }

    public static boolean a(long j, String str, int i, String str2, boolean z) {
        final UserNegativePositiveData a2 = a(str, j);
        ToMany<UserPositiveSocialData> userPositiveSocialData = a2.getUserPositiveSocialData();
        final UserPositiveSocialData a3 = a(userPositiveSocialData, i);
        if (a3 != null) {
            userPositiveSocialData.remove(a3);
        }
        UserPositiveSocialData userPositiveSocialData2 = new UserPositiveSocialData();
        userPositiveSocialData2.setSocialNetworkId(i);
        userPositiveSocialData2.setProfileId(str2);
        userPositiveSocialData2.setSure(z);
        userPositiveSocialData.add(userPositiveSocialData2);
        BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
        final a d2 = objectBoxStore.d(UserNegativePositiveData.class);
        final a d3 = objectBoxStore.d(UserPositiveSocialData.class);
        objectBoxStore.a(new Runnable() { // from class: com.callapp.contacts.loader.UserPositiveNegativeManager.4
            @Override // java.lang.Runnable
            public final void run() {
                a.this.a((a) a2);
                UserPositiveSocialData userPositiveSocialData3 = a3;
                if (userPositiveSocialData3 != null) {
                    d3.b((a) userPositiveSocialData3);
                }
            }
        });
        return true;
    }

    public static SparseArray<Set<String>> b(long j, Phone phone) {
        SparseArray<Set<String>> sparseArray = new SparseArray<>();
        UserNegativePositiveData a2 = a(phone, j);
        if (a2 != null) {
            Iterator<UserNegativeSocialData> it2 = a2.getUserNegativeSocialData().iterator();
            while (it2.hasNext()) {
                UserNegativeSocialData next = it2.next();
                Set<String> set = sparseArray.get(next.getSocialNetworkId());
                Set<String> set2 = set;
                if (set == null) {
                    set2 = new HashSet<>();
                    sparseArray.put(next.getSocialNetworkId(), set2);
                }
                set2.add(next.getProfileId());
            }
        }
        return sparseArray;
    }

    private static UserNegativePositiveData b(Phone phone, long j) {
        UserNegativePositiveData a2 = a(phone, j);
        UserNegativePositiveData userNegativePositiveData = a2;
        if (a2 == null) {
            userNegativePositiveData = new UserNegativePositiveData();
            userNegativePositiveData.setPhoneOrIdKey(ContactData.generateId(phone, j));
            a(userNegativePositiveData);
        }
        return userNegativePositiveData;
    }

    public static boolean b(long j, String str, int i, String str2) {
        final UserNegativePositiveData a2 = a(PhoneManager.get().a(str), j);
        final ArrayList arrayList = new ArrayList();
        boolean z = false;
        boolean z2 = false;
        if (a2 != null) {
            Iterator<UserNegativeSocialData> it2 = a2.getUserNegativeSocialData().iterator();
            while (it2.hasNext()) {
                UserNegativeSocialData next = it2.next();
                if (StringUtils.b((CharSequence) next.getProfileId()) && next.getProfileId().equalsIgnoreCase("DONTHAVE")) {
                    arrayList.add(next);
                    it2.remove();
                } else if (i > 0 && next.getSocialNetworkId() == i && StringUtils.b((Object) next.getProfileId(), (Object) str2)) {
                    arrayList.add(next);
                    it2.remove();
                }
                z2 = true;
            }
            z = z2;
            if (z2) {
                BoxStore objectBoxStore = CallAppApplication.get().getObjectBoxStore();
                final a d2 = objectBoxStore.d(UserNegativePositiveData.class);
                final a d3 = objectBoxStore.d(UserNegativeSocialData.class);
                objectBoxStore.a(new Runnable() { // from class: com.callapp.contacts.loader.UserPositiveNegativeManager.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        a.this.a((a) a2);
                        d3.b((Collection) arrayList);
                    }
                });
                z = z2;
            }
        }
        return z;
    }

    public static List<UserNegativePositiveData> getAll() {
        return CallAppApplication.get().getObjectBoxStore().d(UserNegativePositiveData.class).c();
    }

    public static List<String> getAllNonContactsWithNegativeOrPositive() {
        List<UserNegativePositiveData> c2 = CallAppApplication.get().getObjectBoxStore().d(UserNegativePositiveData.class).e().c(UserNegativePositiveData_.phoneOrIdKey, "@").a().c();
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.b(c2)) {
            a(c2);
            for (UserNegativePositiveData userNegativePositiveData : c2) {
                boolean z = CollectionUtils.b(userNegativePositiveData.getUserPositiveSocialData()) || CollectionUtils.b(userNegativePositiveData.getUserNegativeSocialData());
                boolean z2 = false;
                if (userNegativePositiveData.getPhoneNumber() != null) {
                    z2 = false;
                    if (StringUtils.b((CharSequence) userNegativePositiveData.getPhoneNumber())) {
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
