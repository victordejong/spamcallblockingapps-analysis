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
import io.objectbox.C17944a;
import io.objectbox.C17978g;
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
        Map<Long, MemoryContactItem> m28316a = ContactUtils.m28316a(hashSet);
        for (BirthdayData birthdayData2 : list) {
            Pair<String, Long> splitPhoneOrIdKey = ContactData.splitPhoneOrIdKey(birthdayData2.getPhoneOrIdKey());
            long longValue2 = ((Long) splitPhoneOrIdKey.second).longValue();
            Phone phone = Phone.f29662b;
            if (longValue2 > 0) {
                MemoryContactItem memoryContactItem = m28316a.get(Long.valueOf(longValue2));
                if (memoryContactItem != null) {
                    phone = memoryContactItem.getPhone();
                }
            } else {
                phone = PhoneManager.get().m28239a((String) splitPhoneOrIdKey.first);
            }
            birthdayData2.setContactId(longValue2);
            birthdayData2.setPhone(phone);
        }
    }

    public static String getBirthdayNameForSocialId(int i, String str) {
        BirthdayData birthdayData = (BirthdayData) CallAppApplication.get().getObjectBoxStore().m4727d(BirthdayData.class).m4700e().m4613a(BirthdayData_.socialNetId, i).m4611a(BirthdayData_.socialProfileId, str).m4618a().m4641a();
        if (birthdayData != null) {
            return birthdayData.getDisplayName();
        }
        return null;
    }

    public static List<BirthdayData> getBirthdays(boolean z) {
        QueryBuilder m4700e = CallAppApplication.get().getObjectBoxStore().m4727d(BirthdayData.class).m4700e();
        if (z) {
            Calendar calendar = Calendar.getInstance();
            int i = calendar.get(5);
            int i2 = calendar.get(2);
            m4700e.m4613a(BirthdayData_.dayOfMonth, i);
            m4700e.m4613a(BirthdayData_.month, i2 + 1);
        }
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        List m4628c = m4700e.m4614a((C17978g) BirthdayData_.phoneOrIdKey, 0).m4618a().m4628c();
        HashSet hashSet = new HashSet();
        if (CollectionUtils.m26068b(m4628c)) {
            for (int size = m4628c.size() - 1; size >= 0; size--) {
                BirthdayData birthdayData = (BirthdayData) m4628c.get(size);
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
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, -3);
        final int i = (calendar.get(2) * 35) + calendar.get(5);
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
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(BirthdayData.class);
        String generateId = ContactData.generateId(phone, j);
        BirthdayData birthdayData = (BirthdayData) m4727d.m4700e().m4611a(BirthdayData_.phoneOrIdKey, generateId).m4613a(BirthdayData_.socialNetId, i).m4611a(BirthdayData_.socialProfileId, str).m4618a().m4641a();
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
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(BirthdayData.class);
        String generateId = ContactData.generateId(phone, j);
        List m4628c = m4727d.m4700e().m4611a(BirthdayData_.phoneOrIdKey, generateId).m4613a((C17978g) BirthdayData_.socialNetId, 0L).m4615a(BirthdayData_.socialProfileId).m4618a().m4628c();
        if (CollectionUtils.m26076a(m4628c)) {
            birthdayData = new BirthdayData();
            birthdayData.setPhoneOrIdKey(generateId);
        } else {
            birthdayData = (BirthdayData) m4628c.remove(m4628c.size() - 1);
            m4727d.m4704b((Collection) m4628c);
        }
        extractPhoneAndContactIdFromKey(Collections.singletonList(birthdayData));
        return birthdayData;
    }

    public static BirthdayData getExistingNonContactWithSocialNetworkOrCreateNew(int i, String str) {
        BirthdayData birthdayData = (BirthdayData) CallAppApplication.get().getObjectBoxStore().m4727d(BirthdayData.class).m4700e().m4615a(BirthdayData_.phoneOrIdKey).m4613a(BirthdayData_.socialNetId, i).m4611a(BirthdayData_.socialProfileId, str).m4618a().m4641a();
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
        CallAppApplication.get().getObjectBoxStore().m4727d(BirthdayData.class).m4711a((C17944a) birthdayData);
        if (StringUtils.m26045b((CharSequence) birthdayData.getSocialProfileId())) {
            removeOtherEntriesForContact(birthdayData.getPhoneOrIdKey(), birthdayData.getSocialNetId(), birthdayData.getSocialProfileId());
        }
    }

    public static void insert(Collection collection) {
        CallAppApplication.get().getObjectBoxStore().m4727d(BirthdayData.class).m4710a(collection);
    }

    public static void removeAllSocialEntries(long j, Phone phone) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(BirthdayData.class);
        List m4628c = m4727d.m4700e().m4611a(BirthdayData_.phoneOrIdKey, ContactData.generateId(phone, j)).m4599d(BirthdayData_.socialNetId, 0L).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            m4727d.m4704b((Collection) m4628c);
        }
    }

    public static void removeDeviceDataEntries(long j, Phone phone) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(BirthdayData.class);
        List m4628c = m4727d.m4700e().m4611a(BirthdayData_.phoneOrIdKey, ContactData.generateId(phone, j)).m4613a((C17978g) BirthdayData_.socialNetId, 0L).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            m4727d.m4704b((Collection) m4628c);
        }
    }

    private static void removeOtherEntriesForContact(String str, int i, String str2) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(BirthdayData.class);
        List m4628c = m4727d.m4700e().m4611a(BirthdayData_.phoneOrIdKey, str).m4613a(BirthdayData_.socialNetId, i).m4604b(BirthdayData_.socialProfileId, str2).m4618a().m4628c();
        if (CollectionUtils.m26068b(m4628c)) {
            m4727d.m4704b((Collection) m4628c);
        }
    }
}
