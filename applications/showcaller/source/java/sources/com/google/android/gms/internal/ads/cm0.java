package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cm0.class */
public final class cm0 implements Iterable<bm0> {

    /* renamed from: d */
    private final List<bm0> f21319d = new ArrayList();

    /* renamed from: c */
    public final boolean m16021c(kk0 kk0Var) {
        ArrayList<bm0> arrayList = new ArrayList();
        Iterator<bm0> it = iterator();
        while (it.hasNext()) {
            bm0 next = it.next();
            if (next.f20524c == kk0Var) {
                arrayList.add(next);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        for (bm0 bm0Var : arrayList) {
            bm0Var.f20525d.mo10618o();
        }
        return true;
    }

    /* renamed from: d */
    public final bm0 m16020d(kk0 kk0Var) {
        Iterator<bm0> it = iterator();
        while (it.hasNext()) {
            bm0 next = it.next();
            if (next.f20524c == kk0Var) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: e */
    public final void m16019e(bm0 bm0Var) {
        this.f21319d.add(bm0Var);
    }

    /* renamed from: h */
    public final void m16018h(bm0 bm0Var) {
        this.f21319d.remove(bm0Var);
    }

    @Override // java.lang.Iterable
    public final Iterator<bm0> iterator() {
        return this.f21319d.iterator();
    }
}
