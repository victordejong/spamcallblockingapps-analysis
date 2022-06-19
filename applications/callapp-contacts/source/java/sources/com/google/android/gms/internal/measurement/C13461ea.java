package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
/* renamed from: com.google.android.gms.internal.measurement.ea */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ea.class */
public final class C13461ea {

    /* renamed from: b */
    final Uri f50664b;

    /* renamed from: a */
    final String f50663a = null;

    /* renamed from: c */
    final String f50665c = "";

    /* renamed from: d */
    final String f50666d = "";

    /* renamed from: e */
    final boolean f50667e = false;

    /* renamed from: f */
    final boolean f50668f = false;

    /* renamed from: g */
    final boolean f50669g = false;

    /* renamed from: h */
    final boolean f50670h = false;

    /* renamed from: i */
    final AbstractC13468eh<Context, Boolean> f50671i = null;

    public C13461ea(Uri uri) {
        this.f50664b = uri;
    }

    /* renamed from: a */
    public final AbstractC13463ec<Long> m12909a(String str, long j) {
        return new C13456dw(this, str, Long.valueOf(j), true);
    }

    /* renamed from: a */
    public final AbstractC13463ec<String> m12908a(String str, String str2) {
        return new C13459dz(this, str, str2, true);
    }

    /* renamed from: a */
    public final AbstractC13463ec<Boolean> m12907a(String str, boolean z) {
        return new C13457dx(this, str, Boolean.valueOf(z), true);
    }
}
