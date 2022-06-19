package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aha.class */
final class aha implements cgi {

    /* renamed from: a */
    private Context f9345a;

    /* renamed from: b */
    private String f9346b;

    /* renamed from: c */
    private final /* synthetic */ agf f9347c;

    /* JADX INFO: Access modifiers changed from: private */
    public aha(agf agfVar) {
        this.f9347c = agfVar;
    }

    @Override // com.google.android.gms.internal.ads.cgi
    /* renamed from: a */
    public final /* synthetic */ cgi mo11381a(Context context) {
        this.f9345a = (Context) dhz.m9440a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cgi
    /* renamed from: a */
    public final /* synthetic */ cgi mo11380a(String str) {
        this.f9346b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cgi
    /* renamed from: a */
    public final cgj mo11382a() {
        dhz.m9439a(this.f9345a, Context.class);
        return new agz(this.f9347c, this.f9345a, this.f9346b);
    }
}
