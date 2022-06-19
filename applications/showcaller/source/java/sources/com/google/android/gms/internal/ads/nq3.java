package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nq3.class */
public final class nq3 implements ur3 {

    /* renamed from: a */
    public final int f27264a;

    /* renamed from: b */
    public final int[] f27265b;

    /* renamed from: c */
    public final long[] f27266c;

    /* renamed from: d */
    public final long[] f27267d;

    /* renamed from: e */
    public final long[] f27268e;

    /* renamed from: f */
    private final long f27269f;

    public nq3(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f27265b = iArr;
        this.f27266c = jArr;
        this.f27267d = jArr2;
        this.f27268e = jArr3;
        int length = iArr.length;
        this.f27264a = length;
        if (length <= 0) {
            this.f27269f = 0L;
            return;
        }
        int i = length - 1;
        this.f27269f = jArr2[i] + jArr3[i];
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: a */
    public final boolean mo9064a() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ur3
    /* renamed from: b */
    public final sr3 mo9063b(long j) {
        int m9695d = C7101wa.m9695d(this.f27268e, j, true, true);
        vr3 vr3Var = new vr3(this.f27268e[m9695d], this.f27266c[m9695d]);
        if (vr3Var.f31337b >= j || m9695d == this.f27264a - 1) {
            return new sr3(vr3Var, vr3Var);
        }
        int i = m9695d + 1;
        return new sr3(vr3Var, new vr3(this.f27268e[i], this.f27266c[i]));
    }

    public final String toString() {
        int i = this.f27264a;
        String arrays = Arrays.toString(this.f27265b);
        String arrays2 = Arrays.toString(this.f27266c);
        String arrays3 = Arrays.toString(this.f27268e);
        String arrays4 = Arrays.toString(this.f27267d);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 71 + String.valueOf(arrays2).length() + String.valueOf(arrays3).length() + String.valueOf(arrays4).length());
        sb.append("ChunkIndex(length=");
        sb.append(i);
        sb.append(", sizes=");
        sb.append(arrays);
        sb.append(", offsets=");
        sb.append(arrays2);
        sb.append(", timeUs=");
        sb.append(arrays3);
        sb.append(", durationsUs=");
        sb.append(arrays4);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.ur3
    public final long zzg() {
        return this.f27269f;
    }
}
