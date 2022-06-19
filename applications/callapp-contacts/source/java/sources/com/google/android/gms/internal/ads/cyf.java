package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyf.class */
public final class cyf {

    /* renamed from: a */
    final cxp f46757a;

    /* renamed from: b */
    final int f46758b;

    /* renamed from: c */
    private final boolean f46759c;

    /* renamed from: d */
    private final cym f46760d;

    private cyf(cym cymVar) {
        this(cymVar, false, cxt.f46744a, Integer.MAX_VALUE);
    }

    private cyf(cym cymVar, boolean z, cxp cxpVar, int i) {
        this.f46760d = cymVar;
        this.f46759c = false;
        this.f46757a = cxpVar;
        this.f46758b = Integer.MAX_VALUE;
    }

    /* renamed from: a */
    public static cyf m17066a(cxp cxpVar) {
        cyg.m17060a(cxpVar);
        return new cyf(new cyi(cxpVar));
    }

    /* renamed from: a */
    public final Iterable<String> m17065a(CharSequence charSequence) {
        cyg.m17060a(charSequence);
        return new cyk(this, charSequence);
    }

    /* renamed from: b */
    public final Iterator<String> m17064b(CharSequence charSequence) {
        return this.f46760d.mo17051a(this, charSequence);
    }
}
