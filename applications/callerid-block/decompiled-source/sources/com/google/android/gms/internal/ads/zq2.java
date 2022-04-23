package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zq2.class */
public final class zq2 {

    /* renamed from: a */
    public final Uri f9427a;

    /* renamed from: b */
    public final long f9428b;

    /* renamed from: c */
    public final long f9429c;

    /* renamed from: d */
    public final long f9430d;

    public zq2(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        boolean z = false;
        jr2.m6926a(j >= 0);
        jr2.m6926a(j2 >= 0);
        jr2.m6926a((j3 > 0 || j3 == -1) ? true : z);
        this.f9427a = uri;
        this.f9428b = j;
        this.f9429c = j2;
        this.f9430d = j3;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9427a);
        String arrays = Arrays.toString((byte[]) null);
        long j = this.f9428b;
        long j2 = this.f9429c;
        long j3 = this.f9430d;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 93 + String.valueOf(arrays).length() + "null".length());
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
        sb.append(", null, 0]");
        return sb.toString();
    }
}
