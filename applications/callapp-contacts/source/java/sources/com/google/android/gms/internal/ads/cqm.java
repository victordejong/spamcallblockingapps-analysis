package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqm.class */
public final class cqm implements arp, AbstractC13070yj {

    /* renamed from: a */
    private final HashSet<C13063yc> f46382a = new HashSet<>();

    /* renamed from: b */
    private final Context f46383b;

    /* renamed from: c */
    private final C13075yo f46384c;

    public cqm(Context context, C13075yo c13075yo) {
        this.f46383b = context;
        this.f46384c = c13075yo;
    }

    /* renamed from: a */
    public final Bundle m17320a() {
        return this.f46384c.m13955a(this.f46383b, this);
    }

    @Override // com.google.android.gms.internal.ads.arp
    /* renamed from: a */
    public final void mo17319a(zzvh zzvhVar) {
        synchronized (this) {
            if (zzvhVar.errorCode != 3) {
                C13075yo c13075yo = this.f46384c;
                HashSet<C13063yc> hashSet = this.f46382a;
                synchronized (c13075yo.f50087a) {
                    c13075yo.f50090d.addAll(hashSet);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13070yj
    /* renamed from: a */
    public final void mo13973a(HashSet<C13063yc> hashSet) {
        synchronized (this) {
            this.f46382a.clear();
            this.f46382a.addAll(hashSet);
        }
    }
}
