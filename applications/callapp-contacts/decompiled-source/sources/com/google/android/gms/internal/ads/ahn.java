package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahn.class */
final class ahn implements coq {

    /* renamed from: a  reason: collision with root package name */
    private Context f23350a;

    /* renamed from: b  reason: collision with root package name */
    private String f23351b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ ago f23352c;

    private ahn(ago agoVar) {
        this.f23352c = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.coq
    public final con a() {
        dso.a(this.f23350a, Context.class);
        return new ahq(this.f23352c, this.f23350a, this.f23351b);
    }

    @Override // com.google.android.gms.internal.ads.coq
    public final /* synthetic */ coq a(Context context) {
        this.f23350a = (Context) dso.a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.coq
    public final /* synthetic */ coq a(String str) {
        this.f23351b = str;
        return this;
    }
}
