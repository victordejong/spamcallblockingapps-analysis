package com.google.android.gms.internal.ads;

import java.util.Map;
import java.util.concurrent.Executor;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bli.class */
public final class bli {

    /* renamed from: a  reason: collision with root package name */
    final bln f24634a;

    /* renamed from: b  reason: collision with root package name */
    final Executor f24635b;

    /* renamed from: c  reason: collision with root package name */
    final Map<String, String> f24636c;

    public bli(bln blnVar, Executor executor) {
        this.f24634a = blnVar;
        this.f24636c = blnVar.a();
        this.f24635b = executor;
    }

    public final blh a() {
        return blh.a(new blh(this));
    }
}
