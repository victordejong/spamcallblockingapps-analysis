package com.callapp.contacts.manager;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.objectbox.CallRemindersData;
import com.callapp.contacts.model.objectbox.CallRemindersData_;
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/CallRemindersManager.class */
public class CallRemindersManager {
    /* renamed from: a */
    public static int m28693a(String str, String str2, Calendar calendar, int i, String str3) {
        CallAppApplication.get().getObjectBoxStore().m4727d(CallRemindersData.class).m4711a((C17944a) new CallRemindersData(new Date(), str, str2, Long.valueOf(calendar.getTimeInMillis()), Long.valueOf(i), str3));
        return i;
    }

    /* renamed from: a */
    public static List<com.callapp.contacts.activity.callreminder.CallRemindersData> m28694a(Long l) {
        ArrayList arrayList = new ArrayList();
        QueryBuilder m4614a = CallAppApplication.get().getObjectBoxStore().m4727d(CallRemindersData.class).m4700e().m4606b(CallRemindersData_.notificationTime).m4614a((C17978g) CallRemindersData_.notificationTime, 0);
        if (l != null) {
            m4614a.m4613a(CallRemindersData_.notificationId, l.longValue());
        }
        for (CallRemindersData callRemindersData : m4614a.m4618a().m4628c()) {
            arrayList.add(new com.callapp.contacts.activity.callreminder.CallRemindersData(callRemindersData.getDate(), PhoneManager.get().m28239a(callRemindersData.getPhoneAsRaw()), callRemindersData.getDisplayName(), callRemindersData.getNotificationId(), callRemindersData.getNotificationTime(), callRemindersData.getJobStringId()));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m28695a(int i, Long l, String str) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(CallRemindersData.class);
        CallRemindersData callRemindersData = (CallRemindersData) m4727d.m4700e().m4613a(CallRemindersData_.notificationId, i).m4618a().m4641a();
        if (callRemindersData != null) {
            if (l != null) {
                callRemindersData.setNotificationTime(l);
            }
            callRemindersData.setJobStringId(str);
            m4727d.m4711a((C17944a) callRemindersData);
        }
    }

    /* renamed from: b */
    public static long m28692b(Long l) {
        return CallAppApplication.get().getObjectBoxStore().m4727d(CallRemindersData.class).m4700e().m4613a(CallRemindersData_.notificationId, l.longValue()).m4618a().m4624f();
    }
}
