package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tn3.class */
public final class tn3 {

    /* renamed from: b */
    private int f30088b;

    /* renamed from: c */
    private int f30089c;

    /* renamed from: d */
    private int f30090d = 0;

    /* renamed from: e */
    private in3[] f30091e = new in3[100];

    /* renamed from: a */
    private final in3[] f30087a = new in3[1];

    public tn3(boolean z, int i) {
    }

    /* renamed from: a */
    public final void m10601a() {
        synchronized (this) {
            m10600b(0);
        }
    }

    /* renamed from: b */
    public final void m10600b(int i) {
        synchronized (this) {
            int i2 = this.f30088b;
            this.f30088b = i;
            if (i < i2) {
                m10596f();
            }
        }
    }

    /* renamed from: c */
    public final in3 m10599c() {
        in3 in3Var;
        synchronized (this) {
            this.f30089c++;
            int i = this.f30090d;
            if (i > 0) {
                in3[] in3VarArr = this.f30091e;
                int i2 = i - 1;
                this.f30090d = i2;
                in3Var = in3VarArr[i2];
                Objects.requireNonNull(in3Var);
                in3VarArr[i2] = null;
            } else {
                in3Var = new in3(new byte[65536], 0);
            }
        }
        return in3Var;
    }

    /* renamed from: d */
    public final void m10598d(in3 in3Var) {
        synchronized (this) {
            in3[] in3VarArr = this.f30087a;
            in3VarArr[0] = in3Var;
            m10597e(in3VarArr);
        }
    }

    /* renamed from: e */
    public final void m10597e(in3[] in3VarArr) {
        synchronized (this) {
            int i = this.f30090d;
            int length = in3VarArr.length;
            int i2 = i + length;
            in3[] in3VarArr2 = this.f30091e;
            int length2 = in3VarArr2.length;
            int i3 = 0;
            if (i2 >= length2) {
                this.f30091e = (in3[]) Arrays.copyOf(in3VarArr2, Math.max(length2 + length2, i2));
                i3 = 0;
            }
            while (i3 < length) {
                in3 in3Var = in3VarArr[i3];
                in3[] in3VarArr3 = this.f30091e;
                int i4 = this.f30090d;
                this.f30090d = i4 + 1;
                in3VarArr3[i4] = in3Var;
                i3++;
            }
            this.f30089c -= in3VarArr.length;
            notifyAll();
        }
    }

    /* renamed from: f */
    public final void m10596f() {
        synchronized (this) {
            int max = Math.max(0, C7101wa.m9698b0(this.f30088b, 65536) - this.f30089c);
            int i = this.f30090d;
            if (max >= i) {
                return;
            }
            Arrays.fill(this.f30091e, max, i, (Object) null);
            this.f30090d = max;
        }
    }

    /* renamed from: g */
    public final int m10595g() {
        int i;
        synchronized (this) {
            i = this.f30089c;
        }
        return i * 65536;
    }
}
