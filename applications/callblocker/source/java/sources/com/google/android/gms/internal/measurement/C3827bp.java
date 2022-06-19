package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.internal.measurement.bp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/bp.class */
public final class C3827bp {

    /* renamed from: a */
    final String f17898a;

    /* renamed from: b */
    final Uri f17899b;

    /* renamed from: c */
    final String f17900c;

    /* renamed from: d */
    final String f17901d;

    /* renamed from: e */
    final boolean f17902e;

    /* renamed from: f */
    final boolean f17903f;

    /* renamed from: g */
    final boolean f17904g;

    /* renamed from: h */
    final boolean f17905h;
    @Nullable

    /* renamed from: i */
    final AbstractC3832bu<Context, Boolean> f17906i;

    public C3827bp(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    private C3827bp(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, @Nullable AbstractC3832bu<Context, Boolean> abstractC3832bu) {
        this.f17898a = null;
        this.f17899b = uri;
        this.f17900c = str2;
        this.f17901d = str3;
        this.f17902e = false;
        this.f17903f = false;
        this.f17904g = false;
        this.f17905h = false;
        this.f17906i = null;
    }

    /* renamed from: a */
    public final AbstractC3821bj<Double> m5861a(String str, double d) {
        AbstractC3821bj<Double> m5870b;
        m5870b = AbstractC3821bj.m5870b(this, str, -3.0d, false);
        return m5870b;
    }

    /* renamed from: a */
    public final AbstractC3821bj<Long> m5860a(String str, long j) {
        AbstractC3821bj<Long> m5869b;
        m5869b = AbstractC3821bj.m5869b(this, str, j, false);
        return m5869b;
    }

    /* renamed from: a */
    public final AbstractC3821bj<String> m5859a(String str, String str2) {
        AbstractC3821bj<String> m5868b;
        m5868b = AbstractC3821bj.m5868b(this, str, str2, false);
        return m5868b;
    }

    /* renamed from: a */
    public final AbstractC3821bj<Boolean> m5858a(String str, boolean z) {
        AbstractC3821bj<Boolean> m5867b;
        m5867b = AbstractC3821bj.m5867b(this, str, z, false);
        return m5867b;
    }
}
