package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ar2.class */
public final class ar2 {

    /* renamed from: b */
    private int f6073b;

    /* renamed from: c */
    private int f6074c;

    /* renamed from: d */
    private int f6075d = 0;

    /* renamed from: e */
    private vq2[] f6076e = new vq2[100];

    /* renamed from: a */
    private final vq2[] f6072a = new vq2[1];

    public ar2(boolean z, int i) {
    }

    /* renamed from: a */
    public final void m8098a() {
        synchronized (this) {
            m8097b(0);
        }
    }

    /* renamed from: b */
    public final void m8097b(int i) {
        synchronized (this) {
            int i2 = this.f6073b;
            this.f6073b = i;
            if (i < i2) {
                m8093f();
            }
        }
    }

    /* renamed from: c */
    public final vq2 m8096c() {
        vq2 vq2Var;
        synchronized (this) {
            this.f6074c++;
            int i = this.f6075d;
            if (i > 0) {
                vq2[] vq2VarArr = this.f6076e;
                int i2 = i - 1;
                this.f6075d = i2;
                vq2Var = vq2VarArr[i2];
                vq2VarArr[i2] = null;
            } else {
                vq2Var = new vq2(new byte[65536], 0);
            }
        }
        return vq2Var;
    }

    /* renamed from: d */
    public final void m8095d(vq2 vq2Var) {
        synchronized (this) {
            vq2[] vq2VarArr = this.f6072a;
            vq2VarArr[0] = vq2Var;
            m8094e(vq2VarArr);
        }
    }

    /* renamed from: e */
    public final void m8094e(vq2[] vq2VarArr) {
        synchronized (this) {
            int length = this.f6075d + vq2VarArr.length;
            vq2[] vq2VarArr2 = this.f6076e;
            int length2 = vq2VarArr2.length;
            if (length >= length2) {
                this.f6076e = (vq2[]) Arrays.copyOf(vq2VarArr2, Math.max(length2 + length2, length));
            }
            for (vq2 vq2Var : vq2VarArr) {
                jr2.m6926a(vq2Var.f8944a.length == 65536);
                vq2[] vq2VarArr3 = this.f6076e;
                int i = this.f6075d;
                this.f6075d = i + 1;
                vq2VarArr3[i] = vq2Var;
            }
            this.f6074c -= vq2VarArr.length;
            notifyAll();
        }
    }

    /* renamed from: f */
    public final void m8093f() {
        synchronized (this) {
            int max = Math.max(0, zr2.m4530e(this.f6073b, 65536) - this.f6074c);
            int i = this.f6075d;
            if (max < i) {
                Arrays.fill(this.f6076e, max, i, (Object) null);
                this.f6075d = max;
            }
        }
    }

    /* renamed from: g */
    public final int m8092g() {
        int i;
        synchronized (this) {
            i = this.f6074c;
        }
        return i * 65536;
    }
}
