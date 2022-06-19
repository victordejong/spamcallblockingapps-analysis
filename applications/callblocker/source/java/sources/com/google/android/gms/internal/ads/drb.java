package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/drb.class */
public final class drb {

    /* renamed from: a */
    public final String f15452a;

    /* renamed from: b */
    public final String f15453b;

    /* renamed from: c */
    public final boolean f15454c;

    /* renamed from: d */
    public final boolean f15455d;

    /* renamed from: e */
    public final int f15456e;

    /* renamed from: f */
    public final int f15457f;

    /* renamed from: g */
    public final int f15458g;

    /* renamed from: h */
    public final boolean f15459h;

    /* renamed from: i */
    public final boolean f15460i;

    /* renamed from: j */
    public final int f15461j;

    /* renamed from: k */
    public final int f15462k;

    /* renamed from: l */
    public final boolean f15463l;

    public drb() {
        this(null, null, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true);
    }

    private drb(String str, String str2, boolean z, boolean z2, int i, int i2, int i3, boolean z3, boolean z4, int i4, int i5, boolean z5) {
        this.f15452a = null;
        this.f15453b = null;
        this.f15454c = false;
        this.f15455d = true;
        this.f15456e = Integer.MAX_VALUE;
        this.f15457f = Integer.MAX_VALUE;
        this.f15458g = Integer.MAX_VALUE;
        this.f15459h = true;
        this.f15460i = true;
        this.f15461j = Integer.MAX_VALUE;
        this.f15462k = Integer.MAX_VALUE;
        this.f15463l = true;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                drb drbVar = (drb) obj;
                if (this.f15455d != drbVar.f15455d || this.f15456e != drbVar.f15456e || this.f15457f != drbVar.f15457f || this.f15459h != drbVar.f15459h || this.f15460i != drbVar.f15460i || this.f15463l != drbVar.f15463l || this.f15461j != drbVar.f15461j || this.f15462k != drbVar.f15462k || this.f15458g != drbVar.f15458g || !TextUtils.equals(null, null) || !TextUtils.equals(null, null)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        throw new NullPointerException();
    }
}
