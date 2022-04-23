package com.callapp.contacts.manager;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.objectbox.CallRemindersData;
import com.callapp.contacts.model.objectbox.CallRemindersData_;
import io.objectbox.a;
import io.objectbox.g;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallRemindersManager.class */
public class CallRemindersManager {
    public static int a(String str, String str2, Calendar calendar, int i, String str3) {
        CallAppApplication.get().getObjectBoxStore().d(CallRemindersData.class).a((a) new CallRemindersData(new Date(), str, str2, Long.valueOf(calendar.getTimeInMillis()), Long.valueOf(i), str3));
        return i;
    }

    public static List<com.callapp.contacts.activity.callreminder.CallRemindersData> a(Long l) {
        ArrayList arrayList = new ArrayList();
        QueryBuilder a2 = CallAppApplication.get().getObjectBoxStore().d(CallRemindersData.class).e().b(CallRemindersData_.notificationTime).a((g) CallRemindersData_.notificationTime, 0);
        if (l != null) {
            a2.a(CallRemindersData_.notificationId, l.longValue());
        }
        for (CallRemindersData callRemindersData : a2.a().c()) {
            arrayList.add(new com.callapp.contacts.activity.callreminder.CallRemindersData(callRemindersData.getDate(), PhoneManager.get().a(callRemindersData.getPhoneAsRaw()), callRemindersData.getDisplayName(), callRemindersData.getNotificationId(), callRemindersData.getNotificationTime(), callRemindersData.getJobStringId()));
        }
        return arrayList;
    }

    public static void a(int i, Long l, String str) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(CallRemindersData.class);
        CallRemindersData callRemindersData = (CallRemindersData) d2.e().a(CallRemindersData_.notificationId, i).a().a();
        if (callRemindersData != null) {
            if (l != null) {
                callRemindersData.setNotificationTime(l);
            }
            callRemindersData.setJobStringId(str);
            d2.a((a) callRemindersData);
        }
    }

    public static long b(Long l) {
        return CallAppApplication.get().getObjectBoxStore().d(CallRemindersData.class).e().a(CallRemindersData_.notificationId, l.longValue()).a().f();
    }
}
