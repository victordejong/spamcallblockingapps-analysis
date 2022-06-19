package com.callapp.contacts.activity.missedcall;

import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData_;
import com.callapp.contacts.model.objectbox.MissedCallCardIds;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import io.objectbox.C17944a;
import io.objectbox.C17978g;
import io.objectbox.query.QueryBuilder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.ArrayUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/MissedCallFrequentManager.class */
public class MissedCallFrequentManager {

    /* renamed from: a */
    private static final Object f23842a = new Object();

    /* renamed from: a */
    public static List<CallReminderFrequentData> m29829a(Phone phone, Set<Integer> set) {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(CallReminderFrequentData.class);
        int[] primitive = ArrayUtils.toPrimitive((Integer[]) set.toArray(new Integer[0]));
        QueryBuilder m4611a = m4727d.m4700e().m4611a(CallReminderFrequentData_.phoneAsGlobal, phone.m26101a());
        C17978g<CallReminderFrequentData> c17978g = CallReminderFrequentData_.missedCallType;
        m4611a.m4607b();
        m4611a.m4616a(m4611a.nativeIn(m4611a.f62831a, c17978g.m4652b(), primitive, false));
        return m4611a.m4618a().m4628c();
    }

    /* renamed from: a */
    public static void m29833a() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(CallReminderFrequentData.class);
        List<CallReminderFrequentData> m4703c = m4727d.m4703c();
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        if (CollectionUtils.m26068b(m4703c)) {
            for (CallReminderFrequentData callReminderFrequentData : m4703c) {
                if (!hashSet.contains(callReminderFrequentData.getPhoneAsGlobal()) && StringUtils.m26030e(callReminderFrequentData.getPhoneAsGlobal(), "+")) {
                    hashSet.add(callReminderFrequentData.getPhoneAsGlobal());
                    callReminderFrequentData.setMissedCallType(3);
                    arrayList.add(callReminderFrequentData);
                }
            }
            m4727d.m4701d();
            if (!CollectionUtils.m26068b(arrayList)) {
                return;
            }
            m4727d.m4710a((Collection) arrayList);
        }
    }

    /* renamed from: a */
    public static void m29832a(CallReminderFrequentData.FrequentType frequentType, List<MissedCallCardIds> list, boolean z) {
        for (MissedCallCardIds missedCallCardIds : list) {
            m29830a(PhoneManager.get().m28239a(missedCallCardIds.getPhoneAsRaw()), frequentType, missedCallCardIds.getMissedCallType(), 0L);
        }
    }

    /* renamed from: a */
    public static void m29831a(Phone phone) {
        CallAppApplication.get().getObjectBoxStore().m4727d(CallReminderFrequentData.class).m4700e().m4611a(CallReminderFrequentData_.phoneAsGlobal, phone.m26101a()).m4618a().m4624f();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0079, code lost:
        if (r0.getFrequentType().equals(com.callapp.contacts.model.objectbox.CallReminderFrequentData.FrequentType.SHOW_LESS) != false) goto L17;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m29830a(com.callapp.framework.phone.Phone r5, com.callapp.contacts.model.objectbox.CallReminderFrequentData.FrequentType r6, int r7, long r8) {
        /*
            com.callapp.contacts.CallAppApplication r0 = com.callapp.contacts.CallAppApplication.get()
            io.objectbox.BoxStore r0 = r0.getObjectBoxStore()
            java.lang.Class<com.callapp.contacts.model.objectbox.CallReminderFrequentData> r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData.class
            io.objectbox.a r0 = r0.m4727d(r1)
            r10 = r0
            java.lang.Object r0 = com.callapp.contacts.activity.missedcall.MissedCallFrequentManager.f23842a
            r11 = r0
            r0 = r11
            monitor-enter(r0)
            r0 = r10
            io.objectbox.query.QueryBuilder r0 = r0.m4700e()     // Catch: java.lang.Throwable -> Lba
            io.objectbox.g<com.callapp.contacts.model.objectbox.CallReminderFrequentData> r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData_.phoneAsGlobal     // Catch: java.lang.Throwable -> Lba
            r2 = r5
            java.lang.String r2 = r2.m26101a()     // Catch: java.lang.Throwable -> Lba
            io.objectbox.query.QueryBuilder r0 = r0.m4611a(r1, r2)     // Catch: java.lang.Throwable -> Lba
            io.objectbox.g<com.callapp.contacts.model.objectbox.CallReminderFrequentData> r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData_.missedCallType     // Catch: java.lang.Throwable -> Lba
            r2 = r7
            long r2 = (long) r2     // Catch: java.lang.Throwable -> Lba
            io.objectbox.query.QueryBuilder r0 = r0.m4613a(r1, r2)     // Catch: java.lang.Throwable -> Lba
            io.objectbox.query.Query r0 = r0.m4618a()     // Catch: java.lang.Throwable -> Lba
            java.lang.Object r0 = r0.m4641a()     // Catch: java.lang.Throwable -> Lba
            com.callapp.contacts.model.objectbox.CallReminderFrequentData r0 = (com.callapp.contacts.model.objectbox.CallReminderFrequentData) r0     // Catch: java.lang.Throwable -> Lba
            r12 = r0
            r0 = r12
            if (r0 != 0) goto L52
            com.callapp.contacts.model.objectbox.CallReminderFrequentData r0 = new com.callapp.contacts.model.objectbox.CallReminderFrequentData     // Catch: java.lang.Throwable -> Lba
            r12 = r0
            r0 = r12
            r1 = r5
            java.lang.String r1 = r1.m26101a()     // Catch: java.lang.Throwable -> Lba
            r2 = r6
            r3 = r7
            r0.<init>(r1, r2, r3)     // Catch: java.lang.Throwable -> Lba
            r0 = r12
            r5 = r0
            goto L8b
        L52:
            r0 = r6
            r5 = r0
            r0 = r6
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData.FrequentType.DELETE     // Catch: java.lang.Throwable -> Lba
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lba
            if (r0 == 0) goto L82
            r0 = r12
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r0 = r0.getFrequentType()     // Catch: java.lang.Throwable -> Lba
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData.FrequentType.DONT_SHOW     // Catch: java.lang.Throwable -> Lba
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lba
            if (r0 != 0) goto L7c
            r0 = r6
            r5 = r0
            r0 = r12
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r0 = r0.getFrequentType()     // Catch: java.lang.Throwable -> Lba
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r1 = com.callapp.contacts.model.objectbox.CallReminderFrequentData.FrequentType.SHOW_LESS     // Catch: java.lang.Throwable -> Lba
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lba
            if (r0 == 0) goto L82
        L7c:
            r0 = r12
            com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType r0 = r0.getFrequentType()     // Catch: java.lang.Throwable -> Lba
            r5 = r0
        L82:
            r0 = r12
            r1 = r5
            r0.setFrequentType(r1)     // Catch: java.lang.Throwable -> Lba
            r0 = r12
            r5 = r0
        L8b:
            java.util.Date r0 = new java.util.Date     // Catch: java.lang.Throwable -> Lba
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: java.lang.Throwable -> Lba
            r0 = r5
            r1 = r6
            long r1 = r1.getTime()     // Catch: java.lang.Throwable -> Lba
            r0.setDeleteTimeStamp(r1)     // Catch: java.lang.Throwable -> Lba
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto Laa
            r0 = r5
            long r0 = r0.getLastDeleteFromNotificationTimeStamp()     // Catch: java.lang.Throwable -> Lba
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto Laf
        Laa:
            r0 = r5
            r1 = r8
            r0.setLastDeleteFromNotificationTimeStamp(r1)     // Catch: java.lang.Throwable -> Lba
        Laf:
            r0 = r10
            r1 = r5
            long r0 = r0.m4711a(r1)     // Catch: java.lang.Throwable -> Lba
            r0 = r11
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lba
            return
        Lba:
            r5 = move-exception
            r0 = r11
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lba
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.missedcall.MissedCallFrequentManager.m29830a(com.callapp.framework.phone.Phone, com.callapp.contacts.model.objectbox.CallReminderFrequentData$FrequentType, int, long):void");
    }
}
