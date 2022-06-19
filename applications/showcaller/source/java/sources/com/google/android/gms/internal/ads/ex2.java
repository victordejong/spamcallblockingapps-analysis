package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ex2.class */
final class ex2 extends jy2 {

    /* renamed from: d */
    final Iterator<? extends zzfoe> f22596d;

    /* renamed from: e */
    Iterator f22597e = ix2.f24534f;

    /* renamed from: f */
    final /* synthetic */ zzfor f22598f;

    public ex2(zzfor zzforVar) {
        this.f22598f = zzforVar;
        this.f22596d = ((zzfoj) zzforVar.f34072g.values()).listIterator(0);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22597e.hasNext() || this.f22596d.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f22597e.hasNext()) {
            this.f22597e = this.f22596d.next().iterator();
        }
        return this.f22597e.next();
    }
}
