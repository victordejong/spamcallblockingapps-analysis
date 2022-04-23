package com.google.android.gms.internal.ads;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eey.class */
public final class eey {

    /* renamed from: b  reason: collision with root package name */
    private int f27756b;

    /* renamed from: a  reason: collision with root package name */
    private final Object f27755a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private List<eev> f27757c = new LinkedList();

    public final eev a(boolean z) {
        synchronized (this.f27755a) {
            eev eevVar = null;
            if (this.f27757c.size() == 0) {
                zzd.zzdz("Queue empty");
                return null;
            }
            int i = 0;
            if (this.f27757c.size() >= 2) {
                int i2 = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                int i3 = 0;
                for (eev eevVar2 : this.f27757c) {
                    int i4 = eevVar2.e;
                    i2 = i2;
                    if (i4 > i2) {
                        i = i3;
                        eevVar = eevVar2;
                        i2 = i4;
                    }
                    i3++;
                }
                this.f27757c.remove(i);
                return eevVar;
            }
            eev eevVar3 = this.f27757c.get(0);
            if (z) {
                this.f27757c.remove(0);
            } else {
                synchronized (eevVar3.f27747a) {
                    eevVar3.e -= 100;
                }
            }
            return eevVar3;
        }
    }

    public final boolean a(eev eevVar) {
        synchronized (this.f27755a) {
            return this.f27757c.contains(eevVar);
        }
    }

    public final boolean b(eev eevVar) {
        synchronized (this.f27755a) {
            Iterator<eev> it2 = this.f27757c.iterator();
            while (it2.hasNext()) {
                eev next = it2.next();
                if (!zzr.zzkz().d().zzzb()) {
                    if (eevVar != next && next.f.equals(eevVar.f)) {
                        it2.remove();
                        return true;
                    }
                } else if (!zzr.zzkz().d().zzzd() && eevVar != next && next.h.equals(eevVar.h)) {
                    it2.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void c(eev eevVar) {
        synchronized (this.f27755a) {
            if (this.f27757c.size() >= 10) {
                int size = this.f27757c.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                zzd.zzdz(sb.toString());
                this.f27757c.remove(0);
            }
            int i = this.f27756b;
            this.f27756b = i + 1;
            eevVar.f27749c = i;
            synchronized (eevVar.f27747a) {
                int a2 = eevVar.a(eevVar.f27748b, eevVar.f27749c);
                if (a2 > eevVar.e) {
                    eevVar.e = a2;
                }
            }
            this.f27757c.add(eevVar);
        }
    }
}
