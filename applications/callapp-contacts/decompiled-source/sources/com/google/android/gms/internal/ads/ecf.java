package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecf.class */
public final class ecf {

    /* renamed from: a  reason: collision with root package name */
    public final Uri f27616a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f27617b;

    /* renamed from: c  reason: collision with root package name */
    public final long f27618c;

    /* renamed from: d  reason: collision with root package name */
    public final long f27619d;
    public final long e;
    public final String f;
    public final int g;

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
        ecr.a(j >= 0);
        ecr.a(j2 >= 0);
        ecr.a(j3 <= 0 ? j3 == -1 : true);
        this.f27616a = uri;
        this.f27617b = bArr;
        this.f27618c = j;
        this.f27619d = j2;
        this.e = j3;
        this.f = str;
        this.g = i;
    }

    public final boolean a() {
        return (this.g & 1) == 1;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f27616a);
        String arrays = Arrays.toString(this.f27617b);
        long j = this.f27618c;
        long j2 = this.f27619d;
        long j3 = this.e;
        String str = this.f;
        int i = this.g;
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
