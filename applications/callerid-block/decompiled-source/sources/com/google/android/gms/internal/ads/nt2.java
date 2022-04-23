package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nt2.class */
public final class nt2 {

    /* renamed from: b */
    int f7803b;

    /* renamed from: a */
    private final Object f7802a = new Object();

    /* renamed from: c */
    private final List<mt2> f7804c = new LinkedList();

    /* renamed from: a */
    public final mt2 m6388a(boolean z) {
        synchronized (this.f7802a) {
            try {
                mt2 mt2Var = null;
                if (this.f7804c.size() == 0) {
                    C1894po.m6185a("Queue empty");
                    return null;
                }
                int i = 0;
                if (this.f7804c.size() >= 2) {
                    int i2 = Integer.MIN_VALUE;
                    int i3 = 0;
                    for (mt2 mt2Var2 : this.f7804c) {
                        int m = mt2Var2.m6482m();
                        if (m > i2) {
                            i = i3;
                        }
                        i2 = m > i2 ? m : i2;
                        if (m > i2) {
                            mt2Var = mt2Var2;
                        }
                        i3++;
                    }
                    this.f7804c.remove(i);
                    return mt2Var;
                }
                mt2 mt2Var3 = this.f7804c.get(0);
                if (z) {
                    this.f7804c.remove(0);
                } else {
                    mt2Var3.m6490e();
                }
                return mt2Var3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final boolean m6387b(mt2 mt2Var) {
        synchronized (this.f7802a) {
            return this.f7804c.contains(mt2Var);
        }
    }

    /* renamed from: c */
    public final boolean m6386c(mt2 mt2Var) {
        synchronized (this.f7802a) {
            try {
                Iterator<mt2> it = this.f7804c.iterator();
                while (it.hasNext()) {
                    mt2 next = it.next();
                    if (!C1407r.m8916h().m4585l().m8874f()) {
                        if (mt2Var != next && next.m6493b().equals(mt2Var.m6493b())) {
                            it.remove();
                            return true;
                        }
                    } else if (!C1407r.m8916h().m4585l().m8876e() && mt2Var != next && next.m6491d().equals(mt2Var.m6491d())) {
                        it.remove();
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public final void m6385d(mt2 mt2Var) {
        synchronized (this.f7802a) {
            if (this.f7804c.size() >= 10) {
                int size = this.f7804c.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                C1894po.m6185a(sb.toString());
                this.f7804c.remove(0);
            }
            int i = this.f7803b;
            this.f7803b = i + 1;
            mt2Var.m6481n(i);
            mt2Var.m6485j();
            this.f7804c.add(mt2Var);
        }
    }
}
