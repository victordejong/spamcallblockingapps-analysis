package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdm.class */
public final class zzdm {

    /* renamed from: a */
    final Uri f8356a;

    /* renamed from: b */
    final String f8357b;

    /* renamed from: c */
    final String f8358c;

    public zzdm(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    private zzdm(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, @Nullable zzdw<Context, Boolean> zzdwVar) {
        this.f8356a = uri;
        this.f8357b = str2;
        this.f8358c = str3;
    }

    /* renamed from: a */
    public final zzdh<Double> m12760a(String str, double d) {
        zzdh<Double> i;
        i = zzdh.m12770i(this, str, -3.0d, true);
        return i;
    }

    /* renamed from: b */
    public final zzdh<Long> m12759b(String str, long j) {
        zzdh<Long> j2;
        j2 = zzdh.m12769j(this, str, j, true);
        return j2;
    }

    /* renamed from: c */
    public final zzdh<String> m12758c(String str, String str2) {
        zzdh<String> k;
        k = zzdh.m12768k(this, str, str2, true);
        return k;
    }

    /* renamed from: d */
    public final zzdh<Boolean> m12757d(String str, boolean z) {
        zzdh<Boolean> l;
        l = zzdh.m12767l(this, str, z, true);
        return l;
    }
}
