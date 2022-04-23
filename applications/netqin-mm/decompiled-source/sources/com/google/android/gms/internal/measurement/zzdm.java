package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdm.class */
public final class zzdm {

    /* renamed from: a */
    public final Uri f29466a;

    /* renamed from: b */
    public final String f29467b;

    /* renamed from: c */
    public final String f29468c;

    public zzdm(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    public zzdm(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, zzdw<Context, Boolean> zzdwVar) {
        this.f29466a = uri;
        this.f29467b = str2;
        this.f29468c = str3;
    }

    /* renamed from: a */
    public final zzdh<Double> m9830a(String str, double d) {
        zzdh<Double> b;
        b = zzdh.m9836b(this, str, -3.0d, true);
        return b;
    }

    /* renamed from: a */
    public final zzdh<Long> m9829a(String str, long j) {
        zzdh<Long> b;
        b = zzdh.m9835b(this, str, j, true);
        return b;
    }

    /* renamed from: a */
    public final zzdh<String> m9828a(String str, String str2) {
        zzdh<String> b;
        b = zzdh.m9834b(this, str, str2, true);
        return b;
    }

    /* renamed from: a */
    public final zzdh<Boolean> m9827a(String str, boolean z) {
        zzdh<Boolean> b;
        b = zzdh.m9833b(this, str, z, true);
        return b;
    }
}
