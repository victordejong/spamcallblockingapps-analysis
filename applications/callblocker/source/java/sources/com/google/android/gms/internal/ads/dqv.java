package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dqv.class */
public final class dqv {

    /* renamed from: a */
    public static final dqv f15437a = new dqv(new dqs[0]);

    /* renamed from: b */
    public final int f15438b;

    /* renamed from: c */
    private final dqs[] f15439c;

    /* renamed from: d */
    private int f15440d;

    public dqv(dqs... dqsVarArr) {
        this.f15439c = dqsVarArr;
        this.f15438b = dqsVarArr.length;
    }

    /* renamed from: a */
    public final int m8834a(dqs dqsVar) {
        int i = 0;
        while (true) {
            if (i >= this.f15438b) {
                i = -1;
                break;
            } else if (this.f15439c[i] == dqsVar) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public final dqs m8835a(int i) {
        return this.f15439c[i];
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dqv dqvVar = (dqv) obj;
                if (this.f15438b != dqvVar.f15438b || !Arrays.equals(this.f15439c, dqvVar.f15439c)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        if (this.f15440d == 0) {
            this.f15440d = Arrays.hashCode(this.f15439c);
        }
        return this.f15440d;
    }
}
