package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzon.class */
public final class zzon {

    /* renamed from: a */
    public final Uri f28723a;

    /* renamed from: b */
    public final byte[] f28724b;

    /* renamed from: c */
    public final long f28725c;

    /* renamed from: d */
    public final long f28726d;

    /* renamed from: e */
    public final long f28727e;

    /* renamed from: f */
    public final String f28728f;

    /* renamed from: g */
    public final int f28729g;

    public zzon(Uri uri) {
        this(uri, 0);
    }

    public zzon(Uri uri, int i) {
        this(uri, 0L, -1L, null, 0);
    }

    public zzon(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public zzon(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    public zzon(Uri uri, long j, long j2, String str, int i) {
        this(uri, 0L, 0L, -1L, null, 0);
    }

    public zzon(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        zzoz.m11696a(j >= 0);
        zzoz.m11696a(j2 >= 0);
        zzoz.m11696a(j3 <= 0 ? j3 == -1 : true);
        this.f28723a = uri;
        this.f28724b = bArr;
        this.f28725c = j;
        this.f28726d = j2;
        this.f28727e = j3;
        this.f28728f = str;
        this.f28729g = i;
    }

    /* renamed from: a */
    public final boolean m11730a(int i) {
        return (this.f28729g & 1) == 1;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f28723a);
        String arrays = Arrays.toString(this.f28724b);
        long j = this.f28725c;
        long j2 = this.f28726d;
        long j3 = this.f28727e;
        String str = this.f28728f;
        int i = this.f28729g;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 93 + String.valueOf(arrays).length() + String.valueOf(str).length());
        sb.append("DataSpec[");
        sb.append(valueOf);
        sb.append(", ");
        sb.append(arrays);
        sb.append(", ");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        sb.append(", ");
        sb.append(j3);
        sb.append(", ");
        sb.append(str);
        sb.append(", ");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }
}
