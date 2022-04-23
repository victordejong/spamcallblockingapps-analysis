package com.callapp.contacts.activity.missedcall;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData_;
import com.callapp.contacts.model.objectbox.MissedCallCardIds;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.a;
import io.objectbox.g;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/MissedCallFrequentManager.class */
public class MissedCallFrequentManager {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f13410a = new Object();

    public static List<CallReminderFrequentData> a(Phone phone, Set<Integer> set) {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(CallReminderFrequentData.class);
        int[] primitive = ArrayUtils.toPrimitive((Integer[]) set.toArray(new Integer[0]));
        QueryBuilder a2 = d2.e().a(CallReminderFrequentData_.phoneAsGlobal, phone.a());
        g<CallReminderFrequentData> gVar = CallReminderFrequentData_.missedCallType;
        a2.b();
        a2.a(a2.nativeIn(a2.f36247a, gVar.b(), primitive, false));
        return a2.a().c();
    }

    public static void a() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(CallReminderFrequentData.class);
        List<CallReminderFrequentData> c2 = d2.c();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        if (CollectionUtils.b(c2)) {
            for (CallReminderFrequentData callReminderFrequentData : c2) {
                if (!hashSet.contains(callReminderFrequentData.getPhoneAsGlobal()) && StringUtils.e(callReminderFrequentData.getPhoneAsGlobal(), "+")) {
                    hashSet.add(callReminderFrequentData.getPhoneAsGlobal());
                    callReminderFrequentData.setMissedCallType(3);
                    arrayList.add(callReminderFrequentData);
                }
            }
            d2.d();
            if (CollectionUtils.b(arrayList)) {
                d2.a((Collection) arrayList);
            }
        }
    }

    public static void a(CallReminderFrequentData.FrequentType frequentType, List<MissedCallCardIds> list, boolean z) {
        for (MissedCallCardIds missedCallCardIds : list) {
            a(PhoneManager.get().a(missedCallCardIds.getPhoneAsRaw()), frequentType, missedCallCardIds.getMissedCallType(), 0L);
        }
    }

    public static void a(Phone phone) {
        CallAppApplication.get().getObjectBoxStore().d(CallReminderFrequentData.class).e().a(CallReminderFrequentData_.phoneAsGlobal, phone.a()).a().f();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0079, code lost:
        if (r0.getFrequentType().equals(com.callapp.contacts.model.objectbox.CallReminderFrequentData.FrequentType.SHOW_LESS) != false) goto L_0x007c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.callapp.framework.phone.Phone r5, com.callapp.contacts.model.objectbox.CallReminderFrequentData.FrequentType r6, int r7, long r8) {
        /*
            com.callapp.contacts.CallAppApplication r0 = com.callapp.contacts.CallAppApplication.get()
            io.objectbox.BoxStore r0 = r0.getObjectBoxStore()
            java.lang.Class<com.callapp.contacts.model.objectbox.CallReminderFrequentData> r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData.class
            io.objectbox.a r0 = r0.d(r1)
            r10 = r0
            java.lang.Object r0 = com.callapp.contacts.activity.missedcall.MissedCallFrequentManager.f13410a
            r11 = r0
            r0 = r11
            monitor-enter(r0)
            r0 = r10
            io.objectbox.query.QueryBuilder r0 = r0.e()     // Catch: all -> 0x00ba
            io.objectbox.g<com.callapp.contacts.model.objectbox.CallReminderFrequentData> r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData_.phoneAsGlobal     // Catch: all -> 0x00ba
            r2 = r5
            java.lang.String r2 = r2.a()     // Catch: all -> 0x00ba
            io.objectbox.query.QueryBuilder r0 = r0.a(r1, r2)     // Catch: all -> 0x00ba
            io.objectbox.g<com.callapp.contacts.model.objectbox.CallReminderFrequentData> r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData_.missedCallType     // Catch: all -> 0x00ba
            r2 = r7
            long r2 = (long) r2     // Catch: all -> 0x00ba
            io.objectbox.query.QueryBuilder r0 = r0.a(r1, r2)     // Catch: all -> 0x00ba
            io.objectbox.query.Query r0 = r0.a()     // Catch: all -> 0x00ba
            java.lang.Object r0 = r0.a()     // Catch: all -> 0x00ba
            com.callapp.contacts.model.objectbox.CallReminderFrequentData r0 = (com.callapp.contacts.model.objectbox.CallReminderFrequentData) r0     // Catch: all -> 0x00ba
            r12 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0052
            com.callapp.contacts.model.objectbox.CallReminderFrequentData r0 = new com.callapp.contacts.model.objectbox.CallReminderFrequentData     // Catch: all -> 0x00ba
            r12 = r0
            r0 = r12
            r1 = r5
            java.lang.String r1 = r1.a()     // Catch: all -> 0x00ba
            r2 = r6
            r3 = r7
            r0.<init>(r1, r2, r3)     // Catch: all -> 0x00ba
            r0 = r12
            r5 = r0
            goto L_0x008b
        L_0x0052:
            r0 = r6
            r5 = r0
            r0 = r6
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData.FrequentType.DELETE     // Catch: all -> 0x00ba
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x00ba
            if (r0 == 0) goto L_0x0082
            r0 = r12
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r0 = r0.getFrequentType()     // Catch: all -> 0x00ba
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData.FrequentType.DONT_SHOW     // Catch: all -> 0x00ba
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x00ba
            if (r0 != 0) goto L_0x007c
            r0 = r6
            r5 = r0
            r0 = r12
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r0 = r0.getFrequentType()     // Catch: all -> 0x00ba
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData.FrequentType.SHOW_LESS     // Catch: all -> 0x00ba
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x00ba
            if (r0 == 0) goto L_0x0082
        L_0x007c:
            r0 = r12
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r0 = r0.getFrequentType()     // Catch: all -> 0x00ba
            r5 = r0
        L_0x0082:
            r0 = r12
            r1 = r5
            r0.setFrequentType(r1)     // Catch: all -> 0x00ba
            r0 = r12
            r5 = r0
        L_0x008b:
            java.util.Date r0 = new java.util.Date     // Catch: all -> 0x00ba
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: all -> 0x00ba
            r0 = r5
            r1 = r6
            long r1 = r1.getTime()     // Catch: all -> 0x00ba
            r0.setDeleteTimeStamp(r1)     // Catch: all -> 0x00ba
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00aa
            r0 = r5
            long r0 = r0.getLastDeleteFromNotificationTimeStamp()     // Catch: all -> 0x00ba
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00af
        L_0x00aa:
            r0 = r5
            r1 = r8
            r0.setLastDeleteFromNotificationTimeStamp(r1)     // Catch: all -> 0x00ba
        L_0x00af:
            r0 = r10
            r1 = r5
            long r0 = r0.a(r1)     // Catch: all -> 0x00ba
            r0 = r11
            monitor-exit(r0)     // Catch: all -> 0x00ba
            return
        L_0x00ba:
            r5 = move-exception
            r0 = r11
            monitor-exit(r0)     // Catch: all -> 0x00ba
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.missedcall.MissedCallFrequentManager.a(com.callapp.framework.phone.Phone, com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType, int, long):void");
    }
}
