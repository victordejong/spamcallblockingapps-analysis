package com.facebook.appevents;

import com.facebook.internal.C1127d0;
import com.facebook.internal.p037u0.p040m.C1220a;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.facebook.appevents.h */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/h.class */
public final /* synthetic */ class RunnableC0961h implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC0961h f2651a = new RunnableC0961h();

    @Override // java.lang.Runnable
    public final void run() {
        HashSet hashSet = new HashSet();
        C1091t c1091t = C1091t.f3016a;
        Set<C1071p> set = null;
        if (!C1220a.m41623b(C1091t.class)) {
            try {
                set = C1091t.f3019d.m41779e();
            } catch (Throwable th) {
                C1220a.m41624a(th, C1091t.class);
            }
        }
        for (C1071p c1071p : set) {
            hashSet.add(c1071p.f2954a);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            C1127d0 c1127d0 = C1127d0.f3107a;
            C1127d0.m41738f(str, true);
        }
    }
}
