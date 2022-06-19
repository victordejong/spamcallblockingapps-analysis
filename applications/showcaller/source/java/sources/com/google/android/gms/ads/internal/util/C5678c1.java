package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.ii0;
/* renamed from: com.google.android.gms.ads.internal.util.c1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/c1.class */
public final class C5678c1 extends AbstractC5673b0 {

    /* renamed from: c */
    private final ii0 f18449c;

    /* renamed from: d */
    private final String f18450d;

    public C5678c1(Context context, String str, String str2) {
        this.f18449c = new ii0(C5667s.m18160d().m18092P(context, str));
        this.f18450d = str2;
    }

    @Override // com.google.android.gms.ads.internal.util.AbstractC5673b0
    /* renamed from: a */
    public final void mo13197a() {
        this.f18449c.mo9583n(this.f18450d);
    }
}
