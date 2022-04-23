package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/acr.class */
public final class acr implements Iterable<acp> {

    /* renamed from: a  reason: collision with root package name */
    final List<acp> f23112a = new ArrayList();

    public static boolean a(abb abbVar) {
        acp b2 = b(abbVar);
        if (b2 == null) {
            return false;
        }
        b2.f23109b.b();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static acp b(abb abbVar) {
        Iterator<acp> it2 = zzr.zzlr().iterator();
        while (it2.hasNext()) {
            acp next = it2.next();
            if (next.f23108a == abbVar) {
                return next;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator<acp> iterator() {
        return this.f23112a.iterator();
    }
}
