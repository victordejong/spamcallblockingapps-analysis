package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.util.C5508e;
import com.zhy.http.okhttp.OkHttpUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.exoplayer2.upstream.l */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/l.class */
public final class C5481l {

    /* renamed from: a */
    public final Uri f17746a;

    /* renamed from: b */
    public final int f17747b;

    /* renamed from: c */
    public final byte[] f17748c;

    /* renamed from: d */
    public final Map<String, String> f17749d;

    /* renamed from: e */
    public final long f17750e;

    /* renamed from: f */
    public final long f17751f;

    /* renamed from: g */
    public final long f17752g;

    /* renamed from: h */
    public final String f17753h;

    /* renamed from: i */
    public final int f17754i;

    public C5481l(Uri uri, int i) {
        this(uri, 0L, -1L, null, i);
    }

    public C5481l(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2) {
        this(uri, i, bArr, j, j2, j3, str, i2, Collections.emptyMap());
    }

    public C5481l(Uri uri, int i, byte[] bArr, long j, long j2, long j3, String str, int i2, Map<String, String> map) {
        C5508e.m18915a(j >= 0);
        C5508e.m18915a(j2 >= 0);
        C5508e.m18915a(j3 <= 0 ? j3 == -1 : true);
        this.f17746a = uri;
        this.f17747b = i;
        this.f17748c = (bArr == null || bArr.length == 0) ? null : bArr;
        this.f17750e = j;
        this.f17751f = j2;
        this.f17752g = j3;
        this.f17753h = str;
        this.f17754i = i2;
        this.f17749d = Collections.unmodifiableMap(new HashMap(map));
    }

    public C5481l(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public C5481l(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    public C5481l(Uri uri, long j, long j2, String str, int i) {
        this(uri, j, j, j2, str, i);
    }

    public C5481l(Uri uri, long j, long j2, String str, int i, Map<String, String> map) {
        this(uri, m19017c(null), null, j, j, j2, str, i, map);
    }

    public C5481l(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        this(uri, m19017c(bArr), bArr, j, j2, j3, str, i);
    }

    /* renamed from: b */
    public static String m19018b(int i) {
        if (i != 1) {
            if (i == 2) {
                return "POST";
            }
            if (i != 3) {
                throw new AssertionError(i);
            }
            return OkHttpUtils.METHOD.HEAD;
        }
        return "GET";
    }

    /* renamed from: c */
    private static int m19017c(byte[] bArr) {
        return bArr != null ? 2 : 1;
    }

    /* renamed from: a */
    public final String m19019a() {
        return m19018b(this.f17747b);
    }

    /* renamed from: d */
    public boolean m19016d(int i) {
        return (this.f17754i & i) == i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: e */
    public C5481l m19015e(long j) {
        long j2 = this.f17752g;
        ?? r11 = true;
        if (j2 != -1) {
            r11 = j2 - j;
        }
        return m19014f(j, r11 == true ? 1L : 0L);
    }

    /* renamed from: f */
    public C5481l m19014f(long j, long j2) {
        return (j == 0 && this.f17752g == j2) ? this : new C5481l(this.f17746a, this.f17747b, this.f17748c, this.f17750e + j, this.f17751f + j, j2, this.f17753h, this.f17754i, this.f17749d);
    }

    public String toString() {
        return "DataSpec[" + m19019a() + " " + this.f17746a + ", " + Arrays.toString(this.f17748c) + ", " + this.f17750e + ", " + this.f17751f + ", " + this.f17752g + ", " + this.f17753h + ", " + this.f17754i + "]";
    }
}
