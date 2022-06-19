package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ahn.class */
final class ahn implements coq {

    /* renamed from: a */
    private Context f41773a;

    /* renamed from: b */
    private String f41774b;

    /* renamed from: c */
    private final /* synthetic */ ago f41775c;

    /* JADX INFO: Access modifiers changed from: private */
    public ahn(ago agoVar) {
        this.f41775c = agoVar;
    }

    @Override // com.google.android.gms.internal.ads.coq
    /* renamed from: a */
    public final con mo17376a() {
        dso.m15766a(this.f41773a, Context.class);
        return new ahq(this.f41775c, this.f41773a, this.f41774b);
    }

    @Override // com.google.android.gms.internal.ads.coq
    /* renamed from: a */
    public final /* synthetic */ coq mo17375a(Context context) {
        this.f41773a = (Context) dso.m15767a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.coq
    /* renamed from: a */
    public final /* synthetic */ coq mo17374a(String str) {
        this.f41774b = str;
        return this;
    }
}
