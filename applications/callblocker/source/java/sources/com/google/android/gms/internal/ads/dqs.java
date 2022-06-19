package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dqs.class */
public final class dqs {

    /* renamed from: a */
    public final int f15427a;

    /* renamed from: b */
    private final dlf[] f15428b;

    /* renamed from: c */
    private int f15429c;

    public dqs(dlf... dlfVarArr) {
        drz.m8770b(dlfVarArr.length > 0);
        this.f15428b = dlfVarArr;
        this.f15427a = dlfVarArr.length;
    }

    /* renamed from: a */
    public final int m8841a(dlf dlfVar) {
        int i = 0;
        while (true) {
            if (i >= this.f15428b.length) {
                i = -1;
                break;
            } else if (dlfVar == this.f15428b[i]) {
                break;
            } else {
                i++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public final dlf m8842a(int i) {
        return this.f15428b[i];
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                z = false;
            } else {
                dqs dqsVar = (dqs) obj;
                if (this.f15427a != dqsVar.f15427a || !Arrays.equals(this.f15428b, dqsVar.f15428b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        if (this.f15429c == 0) {
            this.f15429c = Arrays.hashCode(this.f15428b) + 527;
        }
        return this.f15429c;
    }
}
