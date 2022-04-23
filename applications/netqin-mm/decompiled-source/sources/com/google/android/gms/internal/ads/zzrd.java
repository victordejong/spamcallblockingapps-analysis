package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrd.class */
public final class zzrd {
    @VisibleForTesting

    /* renamed from: b */
    public int f28892b;

    /* renamed from: a */
    public final Object f28891a = new Object();

    /* renamed from: c */
    public List<zzre> f28893c = new LinkedList();

    /* renamed from: a */
    public final zzre m11531a(boolean z) {
        synchronized (this.f28891a) {
            try {
                zzre zzreVar = null;
                if (this.f28893c.size() == 0) {
                    zzbbq.m15858a("Queue empty");
                    return null;
                }
                int i = 0;
                if (this.f28893c.size() >= 2) {
                    int i2 = Integer.MIN_VALUE;
                    int i3 = 0;
                    for (zzre zzreVar2 : this.f28893c) {
                        int a = zzreVar2.m11528a();
                        i2 = i2;
                        if (a > i2) {
                            i = i3;
                            zzreVar = zzreVar2;
                            i2 = a;
                        }
                        i3++;
                    }
                    this.f28893c.remove(i);
                    return zzreVar;
                }
                zzre zzreVar3 = this.f28893c.get(0);
                if (z) {
                    this.f28893c.remove(0);
                } else {
                    zzreVar3.m11517f();
                }
                return zzreVar3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final boolean m11532a(zzre zzreVar) {
        synchronized (this.f28891a) {
            return this.f28893c.contains(zzreVar);
        }
    }

    /* renamed from: b */
    public final boolean m11530b(zzre zzreVar) {
        synchronized (this.f28891a) {
            try {
                Iterator<zzre> it = this.f28893c.iterator();
                while (it.hasNext()) {
                    zzre next = it.next();
                    if (!zzp.m17965g().m16176i().mo16052k()) {
                        if (zzreVar != next && next.m11521c().equals(zzreVar.m11521c())) {
                            it.remove();
                            return true;
                        }
                    } else if (!zzp.m17965g().m16176i().mo16056g() && zzreVar != next && next.m11518e().equals(zzreVar.m11518e())) {
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

    /* renamed from: c */
    public final void m11529c(zzre zzreVar) {
        synchronized (this.f28891a) {
            if (this.f28893c.size() >= 10) {
                int size = this.f28893c.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzbbq.m15858a(sb.toString());
                this.f28893c.remove(0);
            }
            int i = this.f28892b;
            this.f28892b = i + 1;
            zzreVar.m11527a(i);
            zzreVar.m11514i();
            this.f28893c.add(zzreVar);
        }
    }
}
