package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/abu.class */
public final class abu implements Iterable<abs> {

    /* renamed from: a */
    private final List<abs> f7765a = new ArrayList();

    /* renamed from: a */
    public static boolean m13655a(aad aadVar) {
        boolean z;
        abs m13653b = m13653b(aadVar);
        if (m13653b != null) {
            m13653b.f7759b.mo13634b();
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public static abs m13653b(aad aadVar) {
        abs absVar;
        Iterator<abs> it = C2341q.m14722y().iterator();
        while (true) {
            if (!it.hasNext()) {
                absVar = null;
                break;
            }
            abs next = it.next();
            if (next.f7758a == aadVar) {
                absVar = next;
                break;
            }
        }
        return absVar;
    }

    /* renamed from: a */
    public final void m13654a(abs absVar) {
        this.f7765a.add(absVar);
    }

    /* renamed from: b */
    public final void m13652b(abs absVar) {
        this.f7765a.remove(absVar);
    }

    @Override // java.lang.Iterable
    public final Iterator<abs> iterator() {
        return this.f7765a.iterator();
    }
}
