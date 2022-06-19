package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecf.class */
public final class ecf {

    /* renamed from: a */
    public final Uri f48662a;

    /* renamed from: b */
    public final byte[] f48663b;

    /* renamed from: c */
    public final long f48664c;

    /* renamed from: d */
    public final long f48665d;

    /* renamed from: e */
    public final long f48666e;

    /* renamed from: f */
    public final String f48667f;

    /* renamed from: g */
    public final int f48668g;

    public ecf(Uri uri) {
        this(uri, 0);
    }

    private ecf(Uri uri, int i) {
        this(uri, 0L, -1L, null, 0);
    }

    private ecf(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, 0);
    }

    public ecf(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    private ecf(Uri uri, long j, long j2, String str, int i) {
        this(uri, 0L, 0L, -1L, null, 0);
    }

    public ecf(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        ecr.m15249a(j >= 0);
        ecr.m15249a(j2 >= 0);
        ecr.m15249a(j3 <= 0 ? j3 == -1 : true);
        this.f48662a = uri;
        this.f48663b = bArr;
        this.f48664c = j;
        this.f48665d = j2;
        this.f48666e = j3;
        this.f48667f = str;
        this.f48668g = i;
    }

    /* renamed from: a */
    public final boolean m15283a() {
        return (this.f48668g & 1) == 1;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f48662a);
        String arrays = Arrays.toString(this.f48663b);
        long j = this.f48664c;
        long j2 = this.f48665d;
        long j3 = this.f48666e;
        String str = this.f48667f;
        int i = this.f48668g;
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
