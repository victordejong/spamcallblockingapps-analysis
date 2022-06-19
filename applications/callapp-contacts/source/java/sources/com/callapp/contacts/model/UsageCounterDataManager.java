package com.callapp.contacts.model;

import android.util.Pair;
import com.callapp.contacts.CallAppApplication;
import io.objectbox.C17944a;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/UsageCounterDataManager.class */
public class UsageCounterDataManager {
    public static long getCounterValue(UsageCounter usageCounter) {
        UsageCounterData usageCounterData = (UsageCounterData) CallAppApplication.get().getObjectBoxStore().m4727d(UsageCounterData.class).m4700e().m4613a(UsageCounterData_.socialNetworkId, usageCounter.f26736id).m4613a(UsageCounterData_.netCallType, usageCounter.callType).m4618a().m4641a();
        if (usageCounterData != null) {
            return usageCounterData.getCount();
        }
        return -1L;
    }

    public static Map<UsageCounter, Pair<Long, Date>> getUsageCounters() {
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(UsageCounterData.class);
        UsageCounter[] values = UsageCounter.values();
        final HashMap hashMap = new HashMap();
        for (UsageCounter usageCounter : values) {
            hashMap.put(new Pair(Integer.valueOf(usageCounter.f26736id), Integer.valueOf(usageCounter.callType)), usageCounter);
        }
        final HashMap hashMap2 = new HashMap();
        m4727d.m4703c().forEach(new Consumer<UsageCounterData>() { // from class: com.callapp.contacts.model.UsageCounterDataManager.1
            public final void accept(UsageCounterData usageCounterData) {
                hashMap2.put(hashMap.get(new Pair(Integer.valueOf(usageCounterData.getSocialNetworkId()), Integer.valueOf(usageCounterData.getNetCallType()))), new Pair(Long.valueOf(usageCounterData.getCount()), new Date(usageCounterData.getDate())));
            }
        });
        return hashMap2;
    }

    public static long incrementCounter(UsageCounter usageCounter, int i) {
        return incrementCounter(usageCounter, 1, i);
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    private static long incrementCounter(UsageCounter usageCounter, int i, int i2) {
        char c;
        char c2;
        UsageCounterData usageCounterData;
        C17944a m4727d = CallAppApplication.get().getObjectBoxStore().m4727d(UsageCounterData.class);
        ?? time = new Date().getTime();
        ?? r0 = i;
        UsageCounterData usageCounterData2 = (UsageCounterData) m4727d.m4700e().m4613a(UsageCounterData_.socialNetworkId, usageCounter.f26736id).m4613a(UsageCounterData_.netCallType, usageCounter.callType).m4618a().m4641a();
        if (usageCounterData2 == null) {
            usageCounterData = new UsageCounterData();
            c2 = time;
            c = r0;
        } else {
            c2 = time;
            c = r0;
            usageCounterData = usageCounterData2;
            if (usageCounterData2.getDate() + (i2 * 60 * 1000) >= time) {
                c = r0 + usageCounterData2.getCount();
                c2 = usageCounterData2.getDate();
                usageCounterData = usageCounterData2;
            }
        }
        usageCounterData.setSocialNetworkId(usageCounter.f26736id);
        usageCounterData.setNetCallType(usageCounter.callType);
        usageCounterData.setCount(c);
        usageCounterData.setDate(c2);
        m4727d.m4711a((C17944a) usageCounterData);
        return c;
    }
}
