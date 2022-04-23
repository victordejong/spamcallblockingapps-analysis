package com.callapp.contacts.model;

import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.birthday.BirthdayReminderData;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.BirthdayData;
import com.callapp.contacts.model.objectbox.BirthdayData_;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.a;
import io.objectbox.g;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/BirthdayManager.class */
public class BirthdayManager {
    private static final int DAYS_BACK_TO_SHOW_BIRTHDAY = 3;

    private static void extractPhoneAndContactIdFromKey(List<BirthdayData> list) {
        HashSet hashSet = new HashSet();
        for (BirthdayData birthdayData : list) {
            long longValue = ((Long) ContactData.splitPhoneOrIdKey(birthdayData.getPhoneOrIdKey()).second).longValue();
            if (longValue > 0) {
                hashSet.add(Long.valueOf(longValue));
            }
        }
        Map<Long, MemoryContactItem> a2 = ContactUtils.a(hashSet);
        for (BirthdayData birthdayData2 : list) {
            Pair<String, Long> splitPhoneOrIdKey = ContactData.splitPhoneOrIdKey(birthdayData2.getPhoneOrIdKey());
            long longValue2 = ((Long) splitPhoneOrIdKey.second).longValue();
            Phone phone = Phone.f17100b;
            if (longValue2 > 0) {
                MemoryContactItem memoryContactItem = a2.get(Long.valueOf(longValue2));
                if (memoryContactItem != null) {
                    phone = memoryContactItem.getPhone();
                }
            } else {
                phone = PhoneManager.get().a((String) splitPhoneOrIdKey.first);
            }
            birthdayData2.setContactId(longValue2);
            birthdayData2.setPhone(phone);
        }
    }

    public static String getBirthdayNameForSocialId(int i, String str) {
        BirthdayData birthdayData = (BirthdayData) CallAppApplication.get().getObjectBoxStore().d(BirthdayData.class).e().a(BirthdayData_.socialNetId, i).a(BirthdayData_.socialProfileId, str).a().a();
        if (birthdayData != null) {
            return birthdayData.getDisplayName();
        }
        return null;
    }

    public static List<BirthdayData> getBirthdays(boolean z) {
        QueryBuilder e = CallAppApplication.get().getObjectBoxStore().d(BirthdayData.class).e();
        if (z) {
            Calendar instance = Calendar.getInstance();
            int i = instance.get(5);
            int i2 = instance.get(2);
            e.a(BirthdayData_.dayOfMonth, i);
            e.a(BirthdayData_.month, i2 + 1);
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        List c2 = e.a((g) BirthdayData_.phoneOrIdKey, 0).a().c();
        HashSet hashSet = new HashSet();
        if (CollectionUtils.b(c2)) {
            for (int size = c2.size() - 1; size >= 0; size--) {
                BirthdayData birthdayData = (BirthdayData) c2.get(size);
                if (birthdayData.isConnectedToSocialNetwork()) {
                    Pair create = Pair.create(Integer.valueOf(birthdayData.getSocialNetId()), birthdayData.getSocialProfileId());
                    if (!hashSet.contains(create)) {
                        hashSet.add(create);
                    }
                }
                if (birthdayData.isContact() && birthdayData.isConnectedToSocialNetwork()) {
                    hashMap.put(birthdayData.getPhoneOrIdKey(), birthdayData);
                } else if (birthdayData.isContact()) {
                    hashMap.put(birthdayData.getPhoneOrIdKey(), birthdayData);
                } else {
                    arrayList.add(birthdayData);
                }
            }
        }
        arrayList.addAll(hashMap.values());
        extractPhoneAndContactIdFromKey(arrayList);
        return arrayList;
    }

    public static List<BirthdayReminderData> getBirthdaysAsReminders() {
        List<BirthdayData> birthdays = getBirthdays(false);
        Calendar instance = Calendar.getInstance();
        instance.add(5, -3);
        final int i = (instance.get(2) * 35) + instance.get(5);
        Collections.sort(birthdays, new Comparator<BirthdayData>() { // from class: com.callapp.contacts.model.BirthdayManager.1
            public final int compare(BirthdayData birthdayData, BirthdayData birthdayData2) {
                int month = birthdayData.getMonth();
                int dayOfMonth = birthdayData.getDayOfMonth();
                int month2 = birthdayData2.getMonth();
                int dayOfMonth2 = birthdayData2.getDayOfMonth();
                int i2 = i;
                int i3 = (((month - 1) * 35) + dayOfMonth) - i2;
                int i4 = (((month2 - 1) * 35) + dayOfMonth2) - i2;
                if (i3 < 0) {
                    i3 = i3 + 420 + 420;
                }
                if (i4 < 0) {
                    i4 = i4 + 420 + 420;
                }
                return i4 == i3 ? birthdayData.getDisplayName().compareTo(birthdayData2.getDisplayName()) : i3 < i4 ? -1 : 1;
            }
        });
        ArrayList arrayList = new ArrayList(birthdays.size());
        for (BirthdayData birthdayData : birthdays) {
            arrayList.add(BirthdayData.birthdayPojoToReminder(birthdayData));
        }
        return arrayList;
    }

    public static BirthdayData getExistingContactWithSocialDataOrCreateNew(long j, Phone phone, int i, String str) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(BirthdayData.class);
        String generateId = ContactData.generateId(phone, j);
        BirthdayData birthdayData = (BirthdayData) d2.e().a(BirthdayData_.phoneOrIdKey, generateId).a(BirthdayData_.socialNetId, i).a(BirthdayData_.socialProfileId, str).a().a();
        BirthdayData birthdayData2 = birthdayData;
        if (birthdayData == null) {
            birthdayData2 = new BirthdayData();
            birthdayData2.setPhoneOrIdKey(generateId);
            birthdayData2.setSocialNetId(i);
            birthdayData2.setSocialProfileId(str);
        }
        extractPhoneAndContactIdFromKey(Collections.singletonList(birthdayData2));
        return birthdayData2;
    }

    public static BirthdayData getExistingContactWithoutSocialDataOrCreateNew(long j, Phone phone) {
        BirthdayData birthdayData;
        a d2 = CallAppApplication.get().getObjectBoxStore().d(BirthdayData.class);
        String generateId = ContactData.generateId(phone, j);
        List c2 = d2.e().a(BirthdayData_.phoneOrIdKey, generateId).a((g) BirthdayData_.socialNetId, 0L).a(BirthdayData_.socialProfileId).a().c();
        if (CollectionUtils.a(c2)) {
            birthdayData = new BirthdayData();
            birthdayData.setPhoneOrIdKey(generateId);
        } else {
            birthdayData = (BirthdayData) c2.remove(c2.size() - 1);
            d2.b((Collection) c2);
        }
        extractPhoneAndContactIdFromKey(Collections.singletonList(birthdayData));
        return birthdayData;
    }

    public static BirthdayData getExistingNonContactWithSocialNetworkOrCreateNew(int i, String str) {
        BirthdayData birthdayData = (BirthdayData) CallAppApplication.get().getObjectBoxStore().d(BirthdayData.class).e().a(BirthdayData_.phoneOrIdKey).a(BirthdayData_.socialNetId, i).a(BirthdayData_.socialProfileId, str).a().a();
        BirthdayData birthdayData2 = birthdayData;
        if (birthdayData == null) {
            birthdayData2 = new BirthdayData();
            birthdayData2.setSocialNetId(i);
            birthdayData2.setSocialProfileId(str);
        }
        extractPhoneAndContactIdFromKey(Collections.singletonList(birthdayData2));
        return birthdayData2;
    }

    public static void insert(BirthdayData birthdayData) {
        CallAppApplication.get().getObjectBoxStore().d(BirthdayData.class).a((a) birthdayData);
        if (StringUtils.b((CharSequence) birthdayData.getSocialProfileId())) {
            removeOtherEntriesForContact(birthdayData.getPhoneOrIdKey(), birthdayData.getSocialNetId(), birthdayData.getSocialProfileId());
        }
    }

    public static void insert(Collection collection) {
        CallAppApplication.get().getObjectBoxStore().d(BirthdayData.class).a(collection);
    }

    public static void removeAllSocialEntries(long j, Phone phone) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(BirthdayData.class);
        List c2 = d2.e().a(BirthdayData_.phoneOrIdKey, ContactData.generateId(phone, j)).d(BirthdayData_.socialNetId, 0L).a().c();
        if (CollectionUtils.b(c2)) {
            d2.b((Collection) c2);
        }
    }

    public static void removeDeviceDataEntries(long j, Phone phone) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(BirthdayData.class);
        List c2 = d2.e().a(BirthdayData_.phoneOrIdKey, ContactData.generateId(phone, j)).a((g) BirthdayData_.socialNetId, 0L).a().c();
        if (CollectionUtils.b(c2)) {
            d2.b((Collection) c2);
        }
    }

    private static void removeOtherEntriesForContact(String str, int i, String str2) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(BirthdayData.class);
        List c2 = d2.e().a(BirthdayData_.phoneOrIdKey, str).a(BirthdayData_.socialNetId, i).b(BirthdayData_.socialProfileId, str2).a().c();
        if (CollectionUtils.b(c2)) {
            d2.b((Collection) c2);
        }
    }
}
