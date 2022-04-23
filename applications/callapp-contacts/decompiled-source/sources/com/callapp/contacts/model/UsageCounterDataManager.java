package com.callapp.contacts.model;

import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import io.objectbox.a;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UsageCounterDataManager.class */
public class UsageCounterDataManager {
    public static long getCounterValue(UsageCounter usageCounter) {
        UsageCounterData usageCounterData = (UsageCounterData) CallAppApplication.get().getObjectBoxStore().d(UsageCounterData.class).e().a(UsageCounterData_.socialNetworkId, usageCounter.id).a(UsageCounterData_.netCallType, usageCounter.callType).a().a();
        if (usageCounterData != null) {
            return usageCounterData.getCount();
        }
        return -1L;
    }

    public static Map<UsageCounter, Pair<Long, Date>> getUsageCounters() {
        a d2 = CallAppApplication.get().getObjectBoxStore().d(UsageCounterData.class);
        UsageCounter[] values = UsageCounter.values();
        final HashMap hashMap = new HashMap();
        for (UsageCounter usageCounter : values) {
            hashMap.put(new Pair(Integer.valueOf(usageCounter.id), Integer.valueOf(usageCounter.callType)), usageCounter);
        }
        final HashMap hashMap2 = new HashMap();
        d2.c().forEach(new Consumer<UsageCounterData>() { // from class: com.callapp.contacts.model.UsageCounterDataManager.1
            public final void accept(UsageCounterData usageCounterData) {
                hashMap2.put(hashMap.get(new Pair(Integer.valueOf(usageCounterData.getSocialNetworkId()), Integer.valueOf(usageCounterData.getNetCallType()))), new Pair(Long.valueOf(usageCounterData.getCount()), new Date(usageCounterData.getDate())));
            }
        });
        return hashMap2;
    }

    public static long incrementCounter(UsageCounter usageCounter, int i) {
        return incrementCounter(usageCounter, 1, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r15v0, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r17v0, types: [long] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Unknown variable types count: 4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long incrementCounter(com.callapp.contacts.model.UsageCounter r5, int r6, int r7) {
        /*
            com.callapp.contacts.CallAppApplication r0 = com.callapp.contacts.CallAppApplication.get()
            io.objectbox.BoxStore r0 = r0.getObjectBoxStore()
            java.lang.Class<com.callapp.contacts.model.UsageCounterData> r1 = com.callapp.contacts.model.UsageCounterData.class
            io.objectbox.a r0 = r0.d(r1)
            r8 = r0
            java.util.Date r0 = new java.util.Date
            r1 = r0
            r1.<init>()
            long r0 = r0.getTime()
            r9 = r0
            r0 = r6
            long r0 = (long) r0
            r11 = r0
            r0 = r8
            io.objectbox.query.QueryBuilder r0 = r0.e()
            io.objectbox.g<com.callapp.contacts.model.UsageCounterData> r1 = com.callapp.contacts.model.UsageCounterData_.socialNetworkId
            r2 = r5
            int r2 = r2.id
            long r2 = (long) r2
            io.objectbox.query.QueryBuilder r0 = r0.a(r1, r2)
            io.objectbox.g<com.callapp.contacts.model.UsageCounterData> r1 = com.callapp.contacts.model.UsageCounterData_.netCallType
            r2 = r5
            int r2 = r2.callType
            long r2 = (long) r2
            io.objectbox.query.QueryBuilder r0 = r0.a(r1, r2)
            io.objectbox.query.Query r0 = r0.a()
            java.lang.Object r0 = r0.a()
            com.callapp.contacts.model.UsageCounterData r0 = (com.callapp.contacts.model.UsageCounterData) r0
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x005a
            com.callapp.contacts.model.UsageCounterData r0 = new com.callapp.contacts.model.UsageCounterData
            r1 = r0
            r1.<init>()
            r14 = r0
            r0 = r9
            r15 = r0
            r0 = r11
            r17 = r0
            goto L_0x0090
        L_0x005a:
            r0 = r9
            r15 = r0
            r0 = r11
            r17 = r0
            r0 = r13
            r14 = r0
            r0 = r13
            long r0 = r0.getDate()
            r1 = r7
            r2 = 60
            int r1 = r1 * r2
            r2 = 1000(0x3e8, float:1.401E-42)
            int r1 = r1 * r2
            long r1 = (long) r1
            long r0 = r0 + r1
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0090
            r0 = r11
            r1 = r13
            long r1 = r1.getCount()
            long r0 = r0 + r1
            r17 = r0
            r0 = r13
            long r0 = r0.getDate()
            r15 = r0
            r0 = r13
            r14 = r0
        L_0x0090:
            r0 = r14
            r1 = r5
            int r1 = r1.id
            r0.setSocialNetworkId(r1)
            r0 = r14
            r1 = r5
            int r1 = r1.callType
            r0.setNetCallType(r1)
            r0 = r14
            r1 = r17
            r0.setCount(r1)
            r0 = r14
            r1 = r15
            r0.setDate(r1)
            r0 = r8
            r1 = r14
            long r0 = r0.a(r1)
            r0 = r17
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.model.UsageCounterDataManager.incrementCounter(com.callapp.contacts.model.UsageCounter, int, int):long");
    }
}
