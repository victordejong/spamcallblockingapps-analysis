package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C1407r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.js */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/js.class */
public final class C1808js implements Iterable<is> {

    /* renamed from: b */
    private final List<is> f6937b = new ArrayList();

    /* renamed from: k */
    static final is m6918k(rq rqVar) {
        Iterator<is> it = C1407r.m8898z().iterator();
        while (it.hasNext()) {
            is next = it.next();
            if (next.c == rqVar) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: p */
    public static final boolean m6917p(rq rqVar) {
        is k = m6918k(rqVar);
        if (k == null) {
            return false;
        }
        k.d.m6054o();
        return true;
    }

    /* renamed from: a */
    public final void m6920a(is isVar) {
        this.f6937b.add(isVar);
    }

    @Override // java.lang.Iterable
    public final Iterator<is> iterator() {
        return this.f6937b.iterator();
    }

    /* renamed from: j */
    public final void m6919j(is isVar) {
        this.f6937b.remove(isVar);
    }
}
