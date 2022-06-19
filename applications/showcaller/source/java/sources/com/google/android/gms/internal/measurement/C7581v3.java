package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.net.Uri;
/* renamed from: com.google.android.gms.internal.measurement.v3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/v3.class */
public final class C7581v3 {

    /* renamed from: b */
    final Uri f34723b;

    /* renamed from: a */
    final String f34722a = null;

    /* renamed from: c */
    final String f34724c = "";

    /* renamed from: d */
    final String f34725d = "";

    /* renamed from: e */
    final boolean f34726e = false;

    /* renamed from: f */
    final boolean f34727f = false;

    /* renamed from: g */
    final boolean f34728g = false;

    /* renamed from: h */
    final boolean f34729h = false;

    /* renamed from: i */
    final AbstractC7307b4<Context, Boolean> f34730i = null;

    public C7581v3(Uri uri) {
        this.f34723b = uri;
    }

    /* renamed from: a */
    public final AbstractC7607x3<Long> m6835a(String str, long j) {
        return new C7529r3(this, str, Long.valueOf(j), true);
    }

    /* renamed from: b */
    public final AbstractC7607x3<Boolean> m6834b(String str, boolean z) {
        return new C7542s3(this, str, Boolean.valueOf(z), true);
    }

    /* renamed from: c */
    public final AbstractC7607x3<Double> m6833c(String str, double d) {
        return new C7555t3(this, "measurement.test.double_flag", Double.valueOf(-3.0d), true);
    }

    /* renamed from: d */
    public final AbstractC7607x3<String> m6832d(String str, String str2) {
        return new C7568u3(this, str, str2, true);
    }
}
