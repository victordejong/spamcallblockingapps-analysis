package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acr.class */
public final class acr implements Iterable<acp> {

    /* renamed from: a */
    final List<acp> f39916a = new ArrayList();

    /* renamed from: a */
    public static boolean m18878a(abb abbVar) {
        acp m18877b = m18877b(abbVar);
        if (m18877b != null) {
            m18877b.f39913b.mo18857b();
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public static acp m18877b(abb abbVar) {
        Iterator<acp> it2 = zzr.zzlr().iterator();
        while (it2.hasNext()) {
            acp next = it2.next();
            if (next.f39912a == abbVar) {
                return next;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator<acp> iterator() {
        return this.f39916a.iterator();
    }
}
