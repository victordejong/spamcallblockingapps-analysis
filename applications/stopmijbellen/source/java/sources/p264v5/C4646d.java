package p264v5;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p275w5.AbstractC4739b;
import p305z4.C5096p;
/* renamed from: v5.d */
/* loaded from: classes-dex2jar.jar:v5/d.class */
public class C4646d implements AbstractC4648f {

    /* renamed from: b */
    public static final /* synthetic */ int f14342b = 0;

    /* renamed from: a */
    public AbstractC4739b<C4649g> f14343a;

    public C4646d(final Context context, Set<AbstractC4647e> set) {
        C5096p c5096p = new C5096p(new AbstractC4739b() { // from class: v5.b
            @Override // p275w5.AbstractC4739b
            public final Object get() {
                C4649g c4649g;
                Context context2 = context;
                C4649g c4649g2 = C4649g.f14344b;
                synchronized (C4649g.class) {
                    try {
                        if (C4649g.f14344b == null) {
                            C4649g.f14344b = new C4649g(context2);
                        }
                        c4649g = C4649g.f14344b;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return c4649g;
            }
        });
        new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), ThreadFactoryC4643a.f14336a);
        this.f14343a = c5096p;
    }

    @Override // p264v5.AbstractC4648f
    /* renamed from: a */
    public int mo682a(String str) {
        boolean m681a;
        long currentTimeMillis = System.currentTimeMillis();
        boolean m681a2 = this.f14343a.get().m681a(str, currentTimeMillis);
        C4649g c4649g = this.f14343a.get();
        synchronized (c4649g) {
            m681a = c4649g.m681a("fire-global", currentTimeMillis);
        }
        if (!m681a2 || !m681a) {
            if (m681a) {
                return 3;
            }
            return m681a2 ? 2 : 1;
        }
        return 4;
    }
}
