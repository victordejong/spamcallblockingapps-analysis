package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agq.class */
final class agq implements cdo {

    /* renamed from: a */
    private Context f8775a;

    /* renamed from: b */
    private String f8776b;

    /* renamed from: c */
    private final /* synthetic */ agf f8777c;

    /* JADX INFO: Access modifiers changed from: private */
    public agq(agf agfVar) {
        this.f8777c = agfVar;
    }

    @Override // com.google.android.gms.internal.ads.cdo
    /* renamed from: a */
    public final cdl mo11447a() {
        dhz.m9439a(this.f8775a, Context.class);
        dhz.m9439a(this.f8776b, String.class);
        return new agp(this.f8777c, this.f8775a, this.f8776b);
    }

    @Override // com.google.android.gms.internal.ads.cdo
    /* renamed from: a */
    public final /* synthetic */ cdo mo11446a(Context context) {
        this.f8775a = (Context) dhz.m9440a(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.cdo
    /* renamed from: a */
    public final /* synthetic */ cdo mo11445a(String str) {
        this.f8776b = (String) dhz.m9440a(str);
        return this;
    }
}
