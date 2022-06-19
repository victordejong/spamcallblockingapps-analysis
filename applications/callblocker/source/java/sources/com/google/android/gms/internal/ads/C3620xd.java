package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
/* renamed from: com.google.android.gms.internal.ads.xd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xd.class */
public final class C3620xd extends AbstractC3552uq {

    /* renamed from: a */
    private final C3649yf f17584a;

    /* renamed from: b */
    private final String f17585b;

    public C3620xd(Context context, String str, String str2) {
        this(str2, C2341q.m14744c().m6975b(context, str));
    }

    private C3620xd(String str, String str2) {
        this.f17584a = new C3649yf(str2);
        this.f17585b = str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3552uq
    /* renamed from: a */
    public final void mo6839a() {
        this.f17584a.mo6739a(this.f17585b);
    }
}
