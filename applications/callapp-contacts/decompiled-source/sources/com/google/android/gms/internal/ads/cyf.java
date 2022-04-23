package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyf.class */
public final class cyf {

    /* renamed from: a  reason: collision with root package name */
    final cxp f26563a;

    /* renamed from: b  reason: collision with root package name */
    final int f26564b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f26565c;

    /* renamed from: d  reason: collision with root package name */
    private final cym f26566d;

    private cyf(cym cymVar) {
        this(cymVar, false, cxt.f26550a, Integer.MAX_VALUE);
    }

    private cyf(cym cymVar, boolean z, cxp cxpVar, int i) {
        this.f26566d = cymVar;
        this.f26565c = false;
        this.f26563a = cxpVar;
        this.f26564b = Integer.MAX_VALUE;
    }

    public static cyf a(cxp cxpVar) {
        cyg.a(cxpVar);
        return new cyf(new cyi(cxpVar));
    }

    public final Iterable<String> a(CharSequence charSequence) {
        cyg.a(charSequence);
        return new cyk(this, charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Iterator<String> b(CharSequence charSequence) {
        return this.f26566d.a(this, charSequence);
    }
}
