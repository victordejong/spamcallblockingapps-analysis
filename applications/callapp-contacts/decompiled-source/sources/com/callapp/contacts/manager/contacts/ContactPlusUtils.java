package com.callapp.contacts.manager.contacts;

import android.graphics.drawable.Drawable;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.activity.callappplus.CallAppPlusData;
import com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryItem;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.objectbox.ExtractedInfo;
import com.callapp.contacts.model.objectbox.FastCacheData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/contacts/ContactPlusUtils.class */
public class ContactPlusUtils {

    /* renamed from: b  reason: collision with root package name */
    private static List<CallAppPlusData> f15031b;

    /* renamed from: a  reason: collision with root package name */
    private static final Object f15030a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static Map<Integer, Drawable> f15032c = new HashMap();

    public static CallAppPlusData a(ExtractedInfo extractedInfo) {
        CallAppPlusData callAppPlusData = new CallAppPlusData(extractedInfo);
        callAppPlusData.displayName = extractedInfo.displayName;
        int b2 = IMDataExtractionUtils.b(callAppPlusData.f11269a.recognizedPersonOrigin);
        Drawable drawable = f15032c.get(Integer.valueOf(b2));
        Drawable drawable2 = drawable;
        if (drawable == null) {
            drawable2 = ViewUtils.getDrawable(b2);
            f15032c.put(Integer.valueOf(b2), drawable2);
        }
        callAppPlusData.setBadge(drawable2);
        callAppPlusData.setBadgeId(b2);
        callAppPlusData.setBadgeColor(ThemeUtils.getColor(IMDataExtractionUtils.c(callAppPlusData.f11269a.recognizedPersonOrigin)));
        return callAppPlusData;
    }

    public static Map<Integer, SectionData> a(List<CallAppPlusData> list) {
        HashMap hashMap = new HashMap();
        hashMap.put(0, new SectionData(Activities.getString(2131887907)));
        hashMap.put(1, new SectionData(Activities.getString(2131888250)));
        hashMap.put(2, new SectionData(Activities.getString(2131886388)));
        if (CollectionUtils.a(list)) {
            return hashMap;
        }
        Calendar instance = Calendar.getInstance();
        Calendar instance2 = Calendar.getInstance();
        instance2.add(11, -24);
        Calendar instance3 = Calendar.getInstance();
        for (CallAppPlusData callAppPlusData : list) {
            instance3.setTimeInMillis(callAppPlusData.a());
            if (DateUtils.a(instance, instance3)) {
                callAppPlusData.setSectionId(0);
            } else if (DateUtils.a(instance2, instance3)) {
                callAppPlusData.setSectionId(1);
            } else {
                callAppPlusData.setSectionId(2);
            }
        }
        return hashMap;
    }

    public static void a() {
        synchronized (f15030a) {
            f15031b = null;
        }
    }

    public static void a(CallAppPlusData callAppPlusData) {
        IMDataExtractionUtils.b(callAppPlusData.f11269a);
    }

    public static List<CallAppPlusData> getContactPlusItemsData() {
        List<CallAppPlusData> list;
        synchronized (f15030a) {
            if (f15031b == null) {
                f15031b = getContactPlusItemsDataInternal();
            }
            list = f15031b;
        }
        return list;
    }

    private static List<CallAppPlusData> getContactPlusItemsDataInternal() {
        CallAppPlusData callAppPlusData;
        List<ExtractedInfo> allImNotificationData = IMDataExtractionUtils.getAllImNotificationData();
        ArrayList arrayList = new ArrayList();
        Map<String, FastCacheData> allFastCacheDataWithName = FastCacheDataManager.getAllFastCacheDataWithName();
        if (CollectionUtils.b(allFastCacheDataWithName)) {
            for (ExtractedInfo extractedInfo : allImNotificationData) {
                if (PhoneManager.get().a(PhoneManager.get().a(extractedInfo.phoneAsRaw))) {
                    callAppPlusData = null;
                } else {
                    CallAppPlusData callAppPlusData2 = new CallAppPlusData(extractedInfo);
                    FastCacheData fastCacheData = allFastCacheDataWithName.get(ContactData.generateId(callAppPlusData2.getPhone(), callAppPlusData2.contactId));
                    if (fastCacheData != null) {
                        callAppPlusData2.displayName = RegexUtils.m(StringUtils.a((CharSequence) fastCacheData.getFullName()) ? "" : fastCacheData.getFullName().toLowerCase());
                    }
                    if (StringUtils.a((CharSequence) callAppPlusData2.displayName)) {
                        callAppPlusData = null;
                    } else {
                        int b2 = IMDataExtractionUtils.b(callAppPlusData2.f11269a.recognizedPersonOrigin);
                        Drawable drawable = f15032c.get(Integer.valueOf(b2));
                        Drawable drawable2 = drawable;
                        if (drawable == null) {
                            drawable2 = ViewUtils.getDrawable(b2);
                            f15032c.put(Integer.valueOf(b2), drawable2);
                        }
                        callAppPlusData2.setBadge(drawable2);
                        callAppPlusData2.setBadgeId(b2);
                        callAppPlusData2.setBadgeColor(ThemeUtils.getColor(IMDataExtractionUtils.c(callAppPlusData2.f11269a.recognizedPersonOrigin)));
                        callAppPlusData = callAppPlusData2;
                    }
                }
                if (callAppPlusData != null) {
                    if (StringUtils.a((CharSequence) callAppPlusData.nameT9)) {
                        ContactUtils.a(callAppPlusData);
                        if (callAppPlusData.f11269a != null) {
                            String a2 = T9Helper.a((CharSequence) callAppPlusData.f11269a.phoneAsRaw);
                            callAppPlusData.normalNumbers.clear();
                            callAppPlusData.normalNumbers.add(a2);
                        }
                    }
                    arrayList.add(callAppPlusData);
                }
            }
        }
        return arrayList;
    }

    public static List<CallAppPlusData> getFavoriteContactPlusItems() {
        List<CallAppPlusData> contactPlusItemsData = getContactPlusItemsData();
        ArrayList arrayList = new ArrayList();
        for (CallAppPlusData callAppPlusData : contactPlusItemsData) {
            if (callAppPlusData.f12645c) {
                arrayList.add(callAppPlusData);
            }
        }
        return arrayList;
    }

    public static List<CallAppPlusSummaryItem> getLast24ContactPlusItemsData() {
        HashMap hashMap = new HashMap();
        List<CallAppPlusData> contactPlusItemsData = getContactPlusItemsData();
        Calendar instance = Calendar.getInstance();
        instance.add(5, -1);
        instance.set(11, 0);
        instance.set(12, 0);
        Date time = instance.getTime();
        Calendar instance2 = Calendar.getInstance();
        instance2.set(11, 0);
        instance2.set(12, 0);
        int i = 0;
        while (i < contactPlusItemsData.size()) {
            CallAppPlusData callAppPlusData = contactPlusItemsData.get(i);
            if (contactPlusItemsData.get(i).a() >= time.getTime() && !hashMap.containsKey(callAppPlusData.getPhone().getRawNumber())) {
                hashMap.put(callAppPlusData.getPhone().getRawNumber(), new CallAppPlusSummaryItem(callAppPlusData.getPhone().getRawNumber(), callAppPlusData.contactId, i == 0, callAppPlusData.displayName, callAppPlusData.getBadgeId(), callAppPlusData.getBadgeColor()));
            }
            i++;
        }
        return new ArrayList(hashMap.values());
    }

    public static boolean isAllowedToShowAccessRequestPopup() {
        if (Prefs.cD.get().intValue() < 2) {
            return true;
        }
        return Prefs.cD.get().intValue() < 4 && DateUtils.a(Prefs.cC.get(), new Date(), TimeUnit.DAYS) >= 4;
    }
}
