package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ub0.class */
public final class ub0 {

    /* renamed from: a */
    public static final AbstractC7093w2<ub0> f30560a = C6744mn.f26664a;

    /* renamed from: b */
    public final long f30561b;

    /* renamed from: c */
    public final int f30562c;

    /* renamed from: d */
    public final Uri[] f30563d;

    /* renamed from: e */
    public final int[] f30564e;

    /* renamed from: f */
    public final long[] f30565f;

    /* renamed from: g */
    public final long f30566g;

    /* renamed from: h */
    public final boolean f30567h;

    public ub0(long j) {
        this(0L, -1, new int[0], new Uri[0], new long[0], 0L, false);
    }

    private ub0(long j, int i, int[] iArr, Uri[] uriArr, long[] jArr, long j2, boolean z) {
        C7173y8.m8898a(iArr.length == uriArr.length);
        this.f30561b = 0L;
        this.f30562c = i;
        this.f30564e = iArr;
        this.f30563d = uriArr;
        this.f30565f = jArr;
        this.f30566g = 0L;
        this.f30567h = false;
    }

    /* renamed from: a */
    public final int m10357a(int i) {
        int i2;
        while (true) {
            i++;
            int[] iArr = this.f30564e;
            if (i >= iArr.length || (i2 = iArr[i]) == 0 || i2 == 1) {
                break;
            }
        }
        return i;
    }

    /* renamed from: b */
    public final ub0 m10356b(int i) {
        int[] iArr = this.f30564e;
        int length = iArr.length;
        int max = Math.max(0, length);
        int[] copyOf = Arrays.copyOf(iArr, max);
        Arrays.fill(copyOf, length, max, 0);
        long[] jArr = this.f30565f;
        int length2 = jArr.length;
        int max2 = Math.max(0, length2);
        long[] copyOf2 = Arrays.copyOf(jArr, max2);
        Arrays.fill(copyOf2, length2, max2, -9223372036854775807L);
        return new ub0(0L, 0, copyOf, (Uri[]) Arrays.copyOf(this.f30563d, 0), copyOf2, 0L, false);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ub0.class != obj.getClass()) {
            return false;
        }
        ub0 ub0Var = (ub0) obj;
        return this.f30562c == ub0Var.f30562c && Arrays.equals(this.f30563d, ub0Var.f30563d) && Arrays.equals(this.f30564e, ub0Var.f30564e) && Arrays.equals(this.f30565f, ub0Var.f30565f);
    }

    public final int hashCode() {
        return ((((((this.f30562c * 961) + Arrays.hashCode(this.f30563d)) * 31) + Arrays.hashCode(this.f30564e)) * 31) + Arrays.hashCode(this.f30565f)) * 961;
    }
}
