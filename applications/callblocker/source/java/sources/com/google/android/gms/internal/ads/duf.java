package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/duf.class */
public final class duf {

    /* renamed from: b */
    private int f15777b;

    /* renamed from: a */
    private final Object f15776a = new Object();

    /* renamed from: c */
    private List<duc> f15778c = new LinkedList();

    /* renamed from: a */
    public final duc m8561a(boolean z) {
        duc ducVar = null;
        synchronized (this.f15776a) {
            if (this.f15778c.size() == 0) {
                C3556uu.m6751b("Queue empty");
                ducVar = null;
            } else if (this.f15778c.size() >= 2) {
                int i = Integer.MIN_VALUE;
                int i2 = 0;
                int i3 = 0;
                for (duc ducVar2 : this.f15778c) {
                    int m8570j = ducVar2.m8570j();
                    if (m8570j > i) {
                        i2 = i3;
                        i = m8570j;
                        ducVar = ducVar2;
                    }
                    i3++;
                }
                this.f15778c.remove(i2);
            } else {
                ducVar = this.f15778c.get(0);
                if (z) {
                    this.f15778c.remove(0);
                } else {
                    ducVar.m8575e();
                }
            }
        }
        return ducVar;
    }

    /* renamed from: a */
    public final boolean m8562a(duc ducVar) {
        boolean z;
        synchronized (this.f15776a) {
            z = this.f15778c.contains(ducVar);
        }
        return z;
    }

    /* renamed from: b */
    public final boolean m8560b(duc ducVar) {
        boolean z;
        synchronized (this.f15776a) {
            Iterator<duc> it = this.f15778c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                duc next = it.next();
                if (C2341q.m14740g().m7084h().mo7032b()) {
                    if (!C2341q.m14740g().m7084h().mo7024d() && ducVar != next && next.m8576d().equals(ducVar.m8576d())) {
                        it.remove();
                        z = true;
                        break;
                    }
                } else if (ducVar != next && next.m8580b().equals(ducVar.m8580b())) {
                    it.remove();
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    public final void m8559c(duc ducVar) {
        synchronized (this.f15776a) {
            if (this.f15778c.size() >= 10) {
                C3556uu.m6751b(new StringBuilder(41).append("Queue is full, current size = ").append(this.f15778c.size()).toString());
                this.f15778c.remove(0);
            }
            int i = this.f15777b;
            this.f15777b = i + 1;
            ducVar.m8584a(i);
            ducVar.m8572h();
            this.f15778c.add(ducVar);
        }
    }
}
