package com.bytedance.sdk.openadsdk.p184l;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.p184l.p185a.C5046a;
import com.bytedance.sdk.openadsdk.p184l.p185a.C5047b;
import com.bytedance.sdk.openadsdk.p184l.p185a.C5048c;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONArray;
import org.json.JSONException;
/* renamed from: com.bytedance.sdk.openadsdk.l.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/d.class */
public class C5051d {

    /* renamed from: a */
    private static final ConcurrentLinkedQueue<C5046a> f18287a = new ConcurrentLinkedQueue<>();

    /* renamed from: a */
    private static String m33165a(String str, int i, int i2) {
        return str + "_core_" + i + "_max_" + i2;
    }

    /* renamed from: a */
    public static void m33166a(C5043a c5043a, long j, long j2) {
        if (c5043a == null) {
            return;
        }
        f18287a.offer(new C5046a(c5043a.m33193a(), c5043a.getCorePoolSize(), c5043a.getMaximumPoolSize(), j, j2));
        m33164a(false);
    }

    /* renamed from: a */
    public static void m33164a(boolean z) {
        AbstractC5050c m33152g = C5052e.m33152g();
        if ((z || f18287a.size() >= 60) && m33152g != null) {
            ConcurrentLinkedQueue<C5046a> concurrentLinkedQueue = f18287a;
            synchronized (concurrentLinkedQueue) {
                if (concurrentLinkedQueue.isEmpty()) {
                    return;
                }
                C5046a[] c5046aArr = (C5046a[]) concurrentLinkedQueue.toArray(new C5046a[concurrentLinkedQueue.size()]);
                concurrentLinkedQueue.clear();
                int i = 0;
                if (c5046aArr.length != 0) {
                    HashMap hashMap = new HashMap();
                    for (C5046a c5046a : c5046aArr) {
                        String m33165a = m33165a(c5046a.m33191a(), c5046a.m33184b(), c5046a.m33182c());
                        C5048c c5048c = (C5048c) hashMap.get(m33165a);
                        if (c5048c == null) {
                            hashMap.put(m33165a, new C5048c(c5046a.m33191a(), c5046a.m33184b(), c5046a.m33182c(), c5046a.m33181d(), c5046a.m33181d(), c5046a.m33180e(), c5046a.m33180e(), 1));
                        } else {
                            if (c5046a.m33181d() > c5048c.m33176b()) {
                                c5048c.m33177a(c5046a.m33181d());
                            }
                            c5048c.m33174b(c5046a.m33181d());
                            if (c5046a.m33180e() > c5048c.m33173c()) {
                                c5048c.m33172c(c5046a.m33180e());
                            }
                            c5048c.m33170d(c5046a.m33180e());
                            c5048c.m33178a(1);
                        }
                    }
                    for (C5048c c5048c2 : hashMap.values()) {
                        if (c5048c2.m33171d() > 0 && !TextUtils.isEmpty(c5048c2.m33179a())) {
                            String m33179a = c5048c2.m33179a();
                            m33179a.hashCode();
                            if (m33179a.equals("io")) {
                                c5048c2.m33175b(((ThreadPoolExecutor) C5052e.m33163a()).getLargestPoolSize());
                            } else if (m33179a.equals("aidl")) {
                                c5048c2.m33175b(((ThreadPoolExecutor) C5052e.m33156c()).getLargestPoolSize());
                            }
                            m33152g.m33167a(c5048c2);
                        }
                    }
                }
                Set<Thread> keySet = Thread.getAllStackTraces().keySet();
                HashMap hashMap2 = new HashMap();
                int i2 = 0;
                for (Thread thread : keySet) {
                    String name = thread.getName();
                    if (!TextUtils.isEmpty(name) && name.startsWith("tt_pangle_thread_")) {
                        i2++;
                        Integer num = (Integer) hashMap2.get(name);
                        hashMap2.put(name, num == null ? 1 : Integer.valueOf(num.intValue() + 1));
                    }
                }
                JSONArray jSONArray = new JSONArray();
                for (String str : hashMap2.keySet()) {
                    try {
                        jSONArray.put(i, ((Integer) hashMap2.get(str)) + "_" + str);
                        i++;
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                m33152g.m33168a(new C5047b(i2, jSONArray.toString()));
            }
        }
    }
}
