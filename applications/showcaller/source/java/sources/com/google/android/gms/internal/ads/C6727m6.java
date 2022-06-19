package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* renamed from: com.google.android.gms.internal.ads.m6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/m6.class */
public final class C6727m6 {

    /* renamed from: a */
    public static final AbstractC7093w2<C6727m6> f26436a = C6690l6.f25957a;

    /* renamed from: b */
    public final Object f26437b;

    /* renamed from: c */
    public final int f26438c;

    /* renamed from: d */
    public final C6615j5 f26439d;

    /* renamed from: e */
    public final Object f26440e;

    /* renamed from: f */
    public final int f26441f;

    /* renamed from: g */
    public final long f26442g;

    /* renamed from: h */
    public final long f26443h;

    /* renamed from: i */
    public final int f26444i;

    /* renamed from: j */
    public final int f26445j;

    public C6727m6(Object obj, int i, C6615j5 c6615j5, Object obj2, int i2, long j, long j2, int i3, int i4) {
        this.f26437b = obj;
        this.f26438c = i;
        this.f26439d = c6615j5;
        this.f26440e = obj2;
        this.f26441f = i2;
        this.f26442g = j;
        this.f26443h = j2;
        this.f26444i = i3;
        this.f26445j = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6727m6.class != obj.getClass()) {
            return false;
        }
        C6727m6 c6727m6 = (C6727m6) obj;
        return this.f26438c == c6727m6.f26438c && this.f26441f == c6727m6.f26441f && this.f26442g == c6727m6.f26442g && this.f26443h == c6727m6.f26443h && this.f26444i == c6727m6.f26444i && this.f26445j == c6727m6.f26445j && tu2.m10497a(this.f26437b, c6727m6.f26437b) && tu2.m10497a(this.f26440e, c6727m6.f26440e) && tu2.m10497a(this.f26439d, c6727m6.f26439d);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f26437b, Integer.valueOf(this.f26438c), this.f26439d, this.f26440e, Integer.valueOf(this.f26441f), Integer.valueOf(this.f26438c), Long.valueOf(this.f26442g), Long.valueOf(this.f26443h), Integer.valueOf(this.f26444i), Integer.valueOf(this.f26445j)});
    }
}
