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

    /* renamed from: b */
    private static List<CallAppPlusData> f25968b;

    /* renamed from: a */
    private static final Object f25967a = new Object();

    /* renamed from: c */
    private static Map<Integer, Drawable> f25969c = new HashMap();

    /* renamed from: a */
    public static CallAppPlusData m28343a(ExtractedInfo extractedInfo) {
        CallAppPlusData callAppPlusData = new CallAppPlusData(extractedInfo);
        callAppPlusData.displayName = extractedInfo.displayName;
        int m28613b = IMDataExtractionUtils.m28613b(callAppPlusData.f20527a.recognizedPersonOrigin);
        Drawable drawable = f25969c.get(Integer.valueOf(m28613b));
        Drawable drawable2 = drawable;
        if (drawable == null) {
            drawable2 = ViewUtils.getDrawable(m28613b);
            f25969c.put(Integer.valueOf(m28613b), drawable2);
        }
        callAppPlusData.setBadge(drawable2);
        callAppPlusData.setBadgeId(m28613b);
        callAppPlusData.setBadgeColor(ThemeUtils.getColor(IMDataExtractionUtils.m28607c(callAppPlusData.f20527a.recognizedPersonOrigin)));
        return callAppPlusData;
    }

    /* renamed from: a */
    public static Map<Integer, SectionData> m28342a(List<CallAppPlusData> list) {
        HashMap hashMap = new HashMap();
        hashMap.put(0, new SectionData(Activities.getString(2131887907)));
        hashMap.put(1, new SectionData(Activities.getString(2131888250)));
        hashMap.put(2, new SectionData(Activities.getString(2131886388)));
        if (CollectionUtils.m26076a(list)) {
            return hashMap;
        }
        Calendar calendar = Calendar.getInstance();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.add(11, -24);
        Calendar calendar3 = Calendar.getInstance();
        for (CallAppPlusData callAppPlusData : list) {
            calendar3.setTimeInMillis(callAppPlusData.m31419a());
            if (DateUtils.m27128a(calendar, calendar3)) {
                callAppPlusData.setSectionId(0);
            } else if (DateUtils.m27128a(calendar2, calendar3)) {
                callAppPlusData.setSectionId(1);
            } else {
                callAppPlusData.setSectionId(2);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m28345a() {
        synchronized (f25967a) {
            f25968b = null;
        }
    }

    /* renamed from: a */
    public static void m28344a(CallAppPlusData callAppPlusData) {
        IMDataExtractionUtils.m28611b(callAppPlusData.f20527a);
    }

    public static List<CallAppPlusData> getContactPlusItemsData() {
        List<CallAppPlusData> list;
        synchronized (f25967a) {
            if (f25968b == null) {
                f25968b = getContactPlusItemsDataInternal();
            }
            list = f25968b;
        }
        return list;
    }

    private static List<CallAppPlusData> getContactPlusItemsDataInternal() {
        CallAppPlusData callAppPlusData;
        List<ExtractedInfo> allImNotificationData = IMDataExtractionUtils.getAllImNotificationData();
        ArrayList arrayList = new ArrayList();
        Map<String, FastCacheData> allFastCacheDataWithName = FastCacheDataManager.getAllFastCacheDataWithName();
        if (CollectionUtils.m26067b(allFastCacheDataWithName)) {
            for (ExtractedInfo extractedInfo : allImNotificationData) {
                if (PhoneManager.get().m28240a(PhoneManager.get().m28239a(extractedInfo.phoneAsRaw))) {
                    callAppPlusData = null;
                } else {
                    CallAppPlusData callAppPlusData2 = new CallAppPlusData(extractedInfo);
                    FastCacheData fastCacheData = allFastCacheDataWithName.get(ContactData.generateId(callAppPlusData2.getPhone(), callAppPlusData2.contactId));
                    if (fastCacheData != null) {
                        callAppPlusData2.displayName = RegexUtils.m31888m(StringUtils.m26059a((CharSequence) fastCacheData.getFullName()) ? "" : fastCacheData.getFullName().toLowerCase());
                    }
                    if (StringUtils.m26059a((CharSequence) callAppPlusData2.displayName)) {
                        callAppPlusData = null;
                    } else {
                        int m28613b = IMDataExtractionUtils.m28613b(callAppPlusData2.f20527a.recognizedPersonOrigin);
                        Drawable drawable = f25969c.get(Integer.valueOf(m28613b));
                        Drawable drawable2 = drawable;
                        if (drawable == null) {
                            drawable2 = ViewUtils.getDrawable(m28613b);
                            f25969c.put(Integer.valueOf(m28613b), drawable2);
                        }
                        callAppPlusData2.setBadge(drawable2);
                        callAppPlusData2.setBadgeId(m28613b);
                        callAppPlusData2.setBadgeColor(ThemeUtils.getColor(IMDataExtractionUtils.m28607c(callAppPlusData2.f20527a.recognizedPersonOrigin)));
                        callAppPlusData = callAppPlusData2;
                    }
                }
                if (callAppPlusData != null) {
                    if (StringUtils.m26059a((CharSequence) callAppPlusData.nameT9)) {
                        ContactUtils.m28331a(callAppPlusData);
                        if (callAppPlusData.f20527a != null) {
                            String m30360a = T9Helper.m30360a((CharSequence) callAppPlusData.f20527a.phoneAsRaw);
                            callAppPlusData.normalNumbers.clear();
                            callAppPlusData.normalNumbers.add(m30360a);
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
            if (callAppPlusData.f22603c) {
                arrayList.add(callAppPlusData);
            }
        }
        return arrayList;
    }

    public static List<CallAppPlusSummaryItem> getLast24ContactPlusItemsData() {
        HashMap hashMap = new HashMap();
        List<CallAppPlusData> contactPlusItemsData = getContactPlusItemsData();
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, -1);
        calendar.set(11, 0);
        calendar.set(12, 0);
        Date time = calendar.getTime();
        Calendar calendar2 = Calendar.getInstance();
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        int i = 0;
        while (i < contactPlusItemsData.size()) {
            CallAppPlusData callAppPlusData = contactPlusItemsData.get(i);
            if (contactPlusItemsData.get(i).m31419a() >= time.getTime() && !hashMap.containsKey(callAppPlusData.getPhone().getRawNumber())) {
                hashMap.put(callAppPlusData.getPhone().getRawNumber(), new CallAppPlusSummaryItem(callAppPlusData.getPhone().getRawNumber(), callAppPlusData.contactId, i == 0, callAppPlusData.displayName, callAppPlusData.getBadgeId(), callAppPlusData.getBadgeColor()));
            }
            i++;
        }
        return new ArrayList(hashMap.values());
    }

    public static boolean isAllowedToShowAccessRequestPopup() {
        if (Prefs.f26333cD.get().intValue() < 2) {
            return true;
        }
        return Prefs.f26333cD.get().intValue() < 4 && DateUtils.m27124a(Prefs.f26332cC.get(), new Date(), TimeUnit.DAYS) >= 4;
    }
}
