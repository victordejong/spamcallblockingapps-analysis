package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.AbstractC5673b0;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mh0.class */
public final class mh0 extends AbstractC5673b0 {

    /* renamed from: c */
    final /* synthetic */ ph0 f26601c;

    public mh0(ph0 ph0Var) {
        this.f26601c = ph0Var;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5673b0
    /* renamed from: a */
    public final void mo13197a() {
        Context context;
        zzcgz zzcgzVar;
        Object obj;
        C6864pw c6864pw;
        context = this.f26601c.f28003e;
        zzcgzVar = this.f26601c.f28004f;
        C6790nw c6790nw = new C6790nw(context, zzcgzVar.f33854d);
        obj = this.f26601c.f27999a;
        synchronized (obj) {
            try {
                C5667s.m18151m();
                c6864pw = this.f26601c.f28005g;
                C6901qw.m11784a(c6864pw, c6790nw);
            } catch (IllegalArgumentException e) {
                ei0.m15463g("Cannot config CSI reporter.", e);
            }
        }
    }
}
