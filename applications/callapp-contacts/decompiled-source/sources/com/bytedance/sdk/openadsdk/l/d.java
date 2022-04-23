package com.bytedance.sdk.openadsdk.l;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.l.a.a;
import com.bytedance.sdk.openadsdk.l.a.b;
import com.bytedance.sdk.openadsdk.l.a.c;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/l/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final ConcurrentLinkedQueue<a> f9823a = new ConcurrentLinkedQueue<>();

    private static String a(String str, int i, int i2) {
        return str + "_core_" + i + "_max_" + i2;
    }

    public static void a(a aVar, long j, long j2) {
        if (aVar != null) {
            f9823a.offer(new a(aVar.a(), aVar.getCorePoolSize(), aVar.getMaximumPoolSize(), j, j2));
            a(false);
        }
    }

    public static void a(boolean z) {
        c g = e.g();
        if ((z || f9823a.size() >= 60) && g != null) {
            ConcurrentLinkedQueue<a> concurrentLinkedQueue = f9823a;
            synchronized (concurrentLinkedQueue) {
                if (!concurrentLinkedQueue.isEmpty()) {
                    a[] aVarArr = (a[]) concurrentLinkedQueue.toArray(new a[concurrentLinkedQueue.size()]);
                    concurrentLinkedQueue.clear();
                    int i = 0;
                    if (aVarArr.length != 0) {
                        HashMap hashMap = new HashMap();
                        for (a aVar : aVarArr) {
                            String a2 = a(aVar.a(), aVar.b(), aVar.c());
                            c cVar = (c) hashMap.get(a2);
                            if (cVar == null) {
                                hashMap.put(a2, new c(aVar.a(), aVar.b(), aVar.c(), aVar.d(), aVar.d(), aVar.e(), aVar.e(), 1));
                            } else {
                                if (aVar.d() > cVar.b()) {
                                    cVar.a(aVar.d());
                                }
                                cVar.b(aVar.d());
                                if (aVar.e() > cVar.c()) {
                                    cVar.c(aVar.e());
                                }
                                cVar.d(aVar.e());
                                cVar.a(1);
                            }
                        }
                        for (c cVar2 : hashMap.values()) {
                            if (cVar2.d() > 0 && !TextUtils.isEmpty(cVar2.a())) {
                                String a3 = cVar2.a();
                                a3.hashCode();
                                if (a3.equals("io")) {
                                    cVar2.b(((ThreadPoolExecutor) e.a()).getLargestPoolSize());
                                } else if (a3.equals("aidl")) {
                                    cVar2.b(((ThreadPoolExecutor) e.c()).getLargestPoolSize());
                                }
                                g.a(cVar2);
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
                    g.a(new b(i2, jSONArray.toString()));
                }
            }
        }
    }
}
