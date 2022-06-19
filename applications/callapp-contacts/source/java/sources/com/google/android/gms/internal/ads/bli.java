package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bli.class */
public final class bli {

    /* renamed from: a */
    final bln f44192a;

    /* renamed from: b */
    final Executor f44193b;

    /* renamed from: c */
    final Map<String, String> f44194c;

    public bli(bln blnVar, Executor executor) {
        this.f44192a = blnVar;
        this.f44194c = blnVar.m17763a();
        this.f44193b = executor;
    }

    /* renamed from: a */
    public final blh m17765a() {
        return r0.f44190a.putAll(new blh(this).f44191b.f44194c);
    }
}
