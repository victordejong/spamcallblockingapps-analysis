package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eey.class */
public final class eey {

    /* renamed from: b */
    private int f48916b;

    /* renamed from: a */
    private final Object f48915a = new Object();

    /* renamed from: c */
    private List<eev> f48917c = new LinkedList();

    /* renamed from: a */
    public final eev m15109a(boolean z) {
        synchronized (this.f48915a) {
            eev eevVar = null;
            if (this.f48917c.size() == 0) {
                zzd.zzdz("Queue empty");
                return null;
            }
            int i = 0;
            if (this.f48917c.size() < 2) {
                eev eevVar2 = this.f48917c.get(0);
                if (z) {
                    this.f48917c.remove(0);
                } else {
                    synchronized (eevVar2.f48894a) {
                        eevVar2.f48898e -= 100;
                    }
                }
                return eevVar2;
            }
            int i2 = Integer.MIN_VALUE;
            int i3 = 0;
            for (eev eevVar3 : this.f48917c) {
                int i4 = eevVar3.f48898e;
                int i5 = i2;
                if (i4 > i2) {
                    i = i3;
                    eevVar = eevVar3;
                    i5 = i4;
                }
                i3++;
                i2 = i5;
            }
            this.f48917c.remove(i);
            return eevVar;
        }
    }

    /* renamed from: a */
    public final boolean m15110a(eev eevVar) {
        synchronized (this.f48915a) {
            return this.f48917c.contains(eevVar);
        }
    }

    /* renamed from: b */
    public final boolean m15108b(eev eevVar) {
        synchronized (this.f48915a) {
            Iterator<eev> it2 = this.f48917c.iterator();
            while (it2.hasNext()) {
                eev next = it2.next();
                if (!zzr.zzkz().m13975d().zzzb()) {
                    if (eevVar != next && next.f48899f.equals(eevVar.f48899f)) {
                        it2.remove();
                        return true;
                    }
                } else if (!zzr.zzkz().m13975d().zzzd() && eevVar != next && next.f48901h.equals(eevVar.f48901h)) {
                    it2.remove();
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: c */
    public final void m15107c(eev eevVar) {
        synchronized (this.f48915a) {
            if (this.f48917c.size() >= 10) {
                int size = this.f48917c.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzd.zzdz(sb.toString());
                this.f48917c.remove(0);
            }
            int i = this.f48916b;
            this.f48916b = i + 1;
            eevVar.f48896c = i;
            synchronized (eevVar.f48894a) {
                int m15119a = eevVar.m15119a(eevVar.f48895b, eevVar.f48896c);
                if (m15119a > eevVar.f48898e) {
                    eevVar.f48898e = m15119a;
                }
            }
            this.f48917c.add(eevVar);
        }
    }
}
