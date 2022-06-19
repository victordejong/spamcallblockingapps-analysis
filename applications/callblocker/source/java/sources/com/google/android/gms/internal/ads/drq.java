package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drq.class */
public final class drq {

    /* renamed from: a */
    public final Uri f15488a;

    /* renamed from: b */
    public final byte[] f15489b;

    /* renamed from: c */
    public final long f15490c;

    /* renamed from: d */
    public final long f15491d;

    /* renamed from: e */
    public final long f15492e;

    /* renamed from: f */
    public final String f15493f;

    /* renamed from: g */
    public final int f15494g;

    public drq(Uri uri) {
        this(uri, 0);
    }

    private drq(Uri uri, int i) {
        this(uri, 0L, -1L, null, 0);
    }

    private drq(Uri uri, long j, long j2, long j3, String str, int i) {
        this(uri, null, j, j2, j3, str, i);
    }

    public drq(Uri uri, long j, long j2, String str) {
        this(uri, j, j, j2, str, 0);
    }

    private drq(Uri uri, long j, long j2, String str, int i) {
        this(uri, 0L, 0L, -1L, null, 0);
    }

    public drq(Uri uri, byte[] bArr, long j, long j2, long j3, String str, int i) {
        drz.m8772a(j >= 0);
        drz.m8772a(j2 >= 0);
        drz.m8772a(j3 > 0 || j3 == -1);
        this.f15488a = uri;
        this.f15489b = bArr;
        this.f15490c = j;
        this.f15491d = j2;
        this.f15492e = j3;
        this.f15493f = str;
        this.f15494g = i;
    }

    /* renamed from: a */
    public final boolean m8813a(int i) {
        boolean z = true;
        if ((this.f15494g & 1) != 1) {
            z = false;
        }
        return z;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f15488a);
        String arrays = Arrays.toString(this.f15489b);
        long j = this.f15490c;
        long j2 = this.f15491d;
        long j3 = this.f15492e;
        String str = this.f15493f;
        return new StringBuilder(String.valueOf(valueOf).length() + 93 + String.valueOf(arrays).length() + String.valueOf(str).length()).append("DataSpec[").append(valueOf).append(", ").append(arrays).append(", ").append(j).append(", ").append(j2).append(", ").append(j3).append(", ").append(str).append(", ").append(this.f15494g).append("]").toString();
    }
}
