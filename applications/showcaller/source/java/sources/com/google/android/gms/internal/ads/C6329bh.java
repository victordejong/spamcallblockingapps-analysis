package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.ads.bh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bh.class */
public class C6329bh {

    /* renamed from: a */
    protected final C7144xg f20446a;

    /* renamed from: b */
    protected final int[] f20447b;

    /* renamed from: c */
    private final zzanm[] f20448c = new zzanm[1];

    /* renamed from: d */
    private int f20449d;

    public C6329bh(C7144xg c7144xg, int... iArr) {
        Objects.requireNonNull(c7144xg);
        this.f20446a = c7144xg;
        for (int i = 0; i <= 0; i++) {
            this.f20448c[i] = c7144xg.m9185a(iArr[i]);
        }
        Arrays.sort(this.f20448c, new C7218zg(null));
        this.f20447b = new int[1];
        for (int i2 = 0; i2 <= 0; i2++) {
            this.f20447b[i2] = c7144xg.m9184b(this.f20448c[i2]);
        }
    }

    /* renamed from: a */
    public final C7144xg m16377a() {
        return this.f20446a;
    }

    /* renamed from: b */
    public final int m16376b() {
        int length = this.f20447b.length;
        return 1;
    }

    /* renamed from: c */
    public final zzanm m16375c(int i) {
        return this.f20448c[i];
    }

    /* renamed from: d */
    public final int m16374d(int i) {
        return this.f20447b[0];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C6329bh c6329bh = (C6329bh) obj;
        return this.f20446a == c6329bh.f20446a && Arrays.equals(this.f20447b, c6329bh.f20447b);
    }

    public final int hashCode() {
        int i = this.f20449d;
        int i2 = i;
        if (i == 0) {
            i2 = (System.identityHashCode(this.f20446a) * 31) + Arrays.hashCode(this.f20447b);
            this.f20449d = i2;
        }
        return i2;
    }
}
