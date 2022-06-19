package com.huawei.updatesdk.p111b.p120g;

import android.os.AsyncTask;
import com.huawei.updatesdk.a.b.c.c.d;
import com.huawei.updatesdk.b.b.c;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.huawei.updatesdk.p097a.p106b.p109c.AsyncTaskC2534b;
import com.huawei.updatesdk.p097a.p106b.p109c.p110c.AbstractC2535a;
import com.huawei.updatesdk.p097a.p106b.p109c.p110c.C2538c;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ThreadPoolExecutor;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.updatesdk.b.g.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/b/g/b.class */
public class C2566b {

    /* renamed from: a */
    private static List<AsyncTask> f8274a = new CopyOnWriteArrayList();

    /* renamed from: a */
    public static AsyncTaskC2534b m36602a(c cVar, AbstractC2535a abstractC2535a) {
        AsyncTaskC2534b asyncTaskC2534b = new AsyncTaskC2534b(cVar, abstractC2535a);
        m36604a(asyncTaskC2534b, cVar);
        return asyncTaskC2534b;
    }

    /* renamed from: a */
    public static d m36603a(C2538c c2538c) {
        return new AsyncTaskC2534b(c2538c, null).m36730c();
    }

    /* renamed from: a */
    public static List<AsyncTask> m36606a() {
        return f8274a;
    }

    /* renamed from: a */
    public static void m36605a(AsyncTask asyncTask) {
        if (asyncTask == null) {
            return;
        }
        for (AsyncTask asyncTask2 : f8274a) {
            if (asyncTask2 != null && (asyncTask2.getStatus() == AsyncTask.Status.FINISHED || asyncTask2.isCancelled())) {
                f8274a.remove(asyncTask);
            }
        }
        f8274a.add(asyncTask);
    }

    /* renamed from: a */
    private static void m36604a(AsyncTaskC2534b asyncTaskC2534b, c cVar) {
        StringBuilder m8728C = C22128a.m8728C("executeTask, ActiveCount:");
        ThreadPoolExecutor threadPoolExecutor = C2567c.f8275a;
        m8728C.append(threadPoolExecutor.getActiveCount());
        m8728C.append(", TaskCount:");
        m8728C.append(threadPoolExecutor.getTaskCount());
        C2515a.m36849a("StoreAgent", m8728C.toString());
        asyncTaskC2534b.m36735a(threadPoolExecutor);
    }
}
