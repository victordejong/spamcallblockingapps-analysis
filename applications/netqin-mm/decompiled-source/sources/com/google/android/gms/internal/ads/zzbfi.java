package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfi.class */
public final class zzbfi implements Iterable<zzbfg> {

    /* renamed from: a */
    public final List<zzbfg> f24931a = new ArrayList();

    /* renamed from: a */
    public static boolean m15672a(zzbdu zzbduVar) {
        zzbfg b = m15670b(zzbduVar);
        if (b == null) {
            return false;
        }
        b.f24928d.mo15642b();
        return true;
    }

    /* renamed from: b */
    public static zzbfg m15670b(zzbdu zzbduVar) {
        Iterator<zzbfg> it = zzp.m17947y().iterator();
        while (it.hasNext()) {
            zzbfg next = it.next();
            if (next.f24927c == zzbduVar) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final void m15671a(zzbfg zzbfgVar) {
        this.f24931a.add(zzbfgVar);
    }

    /* renamed from: b */
    public final void m15669b(zzbfg zzbfgVar) {
        this.f24931a.remove(zzbfgVar);
    }

    @Override // java.lang.Iterable
    public final Iterator<zzbfg> iterator() {
        return this.f24931a.iterator();
    }
}
