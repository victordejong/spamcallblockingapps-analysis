package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.internal.measurement.q3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/q3.class */
public final class C2163q3 {

    /* renamed from: b */
    final Uri f9799b;

    /* renamed from: a */
    final String f9798a = null;

    /* renamed from: c */
    final String f9800c = "";

    /* renamed from: d */
    final String f9801d = "";

    /* renamed from: e */
    final boolean f9802e = false;

    /* renamed from: f */
    final boolean f9803f = false;

    /* renamed from: g */
    final boolean f9804g = false;

    /* renamed from: h */
    final boolean f9805h = false;
    @Nullable

    /* renamed from: i */
    final AbstractC2193w3<Context, Boolean> f9806i = null;

    public C2163q3(Uri uri) {
        this.f9799b = uri;
    }

    /* renamed from: a */
    public final AbstractC2172s3<Long> m4214a(String str, long j) {
        return new m3(this, str, Long.valueOf(j), true);
    }

    /* renamed from: b */
    public final AbstractC2172s3<Boolean> m4213b(String str, boolean z) {
        return new n3(this, str, Boolean.valueOf(z), true);
    }

    /* renamed from: c */
    public final AbstractC2172s3<Double> m4212c(String str, double d) {
        return new o3(this, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
    }

    /* renamed from: d */
    public final AbstractC2172s3<String> m4211d(String str, String str2) {
        return new p3(this, str, str2, true);
    }
}
