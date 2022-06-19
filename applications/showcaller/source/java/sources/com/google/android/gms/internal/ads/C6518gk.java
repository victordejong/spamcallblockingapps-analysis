package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C5667s;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.gk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gk.class */
public final class C6518gk {

    /* renamed from: b */
    int f23372b;

    /* renamed from: a */
    private final Object f23371a = new Object();

    /* renamed from: c */
    private final List<C6481fk> f23373c = new LinkedList();

    /* renamed from: a */
    public final C6481fk m14924a(boolean z) {
        synchronized (this.f23371a) {
            C6481fk c6481fk = null;
            if (this.f23373c.size() == 0) {
                ei0.m15469a("Queue empty");
                return null;
            }
            int i = 0;
            if (this.f23373c.size() < 2) {
                C6481fk c6481fk2 = this.f23373c.get(0);
                if (z) {
                    this.f23373c.remove(0);
                } else {
                    c6481fk2.m15173e();
                }
                return c6481fk2;
            }
            int i2 = Integer.MIN_VALUE;
            int i3 = 0;
            for (C6481fk c6481fk3 : this.f23373c) {
                int m15165m = c6481fk3.m15165m();
                if (m15165m > i2) {
                    i = i3;
                }
                int i4 = m15165m > i2 ? m15165m : i2;
                if (m15165m > i2) {
                    c6481fk = c6481fk3;
                }
                i3++;
                i2 = i4;
            }
            this.f23373c.remove(i);
            return c6481fk;
        }
    }

    /* renamed from: b */
    public final boolean m14923b(C6481fk c6481fk) {
        synchronized (this.f23371a) {
            return this.f23373c.contains(c6481fk);
        }
    }

    /* renamed from: c */
    public final boolean m14922c(C6481fk c6481fk) {
        synchronized (this.f23371a) {
            Iterator<C6481fk> it = this.f23373c.iterator();
            while (it.hasNext()) {
                C6481fk next = it.next();
                if (!C5667s.m18156h().m12230p().mo17959e()) {
                    if (c6481fk != next && next.m15176b().equals(c6481fk.m15176b())) {
                        it.remove();
                        return true;
                    }
                } else if (!C5667s.m18156h().m12230p().mo17958f() && c6481fk != next && next.m15174d().equals(c6481fk.m15174d())) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: d */
    public final void m14921d(C6481fk c6481fk) {
        synchronized (this.f23371a) {
            if (this.f23373c.size() >= 10) {
                int size = this.f23373c.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                ei0.m15469a(sb.toString());
                this.f23373c.remove(0);
            }
            int i = this.f23372b;
            this.f23372b = i + 1;
            c6481fk.m15164n(i);
            c6481fk.m15168j();
            this.f23373c.add(c6481fk);
        }
    }
}
