package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jv3.class */
final class jv3 {

    /* renamed from: a */
    private final kv3 f25001a = new kv3();

    /* renamed from: b */
    private final C6694la f25002b = new C6694la(new byte[65025], 0);

    /* renamed from: c */
    private int f25003c = -1;

    /* renamed from: d */
    private int f25004d;

    /* renamed from: e */
    private boolean f25005e;

    /* renamed from: f */
    private final int m14027f(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.f25004d = 0;
        do {
            int i5 = this.f25004d;
            int i6 = i + i5;
            kv3 kv3Var = this.f25001a;
            i2 = i4;
            if (i6 >= kv3Var.f25430c) {
                break;
            }
            int[] iArr = kv3Var.f25433f;
            this.f25004d = i5 + 1;
            i3 = iArr[i6];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    /* renamed from: a */
    public final void m14032a() {
        this.f25001a.m13773a();
        this.f25002b.m13642i(0);
        this.f25003c = -1;
        this.f25005e = false;
    }

    /* renamed from: b */
    public final boolean m14031b(vq3 vq3Var) {
        if (this.f25005e) {
            this.f25005e = false;
            this.f25002b.m13642i(0);
        }
        while (true) {
            boolean z = true;
            if (!this.f25005e) {
                int i = this.f25003c;
                int i2 = i;
                if (i < 0) {
                    if (!this.f25001a.m13772b(vq3Var, -1L) || !this.f25001a.m13771c(vq3Var, true)) {
                        return false;
                    }
                    kv3 kv3Var = this.f25001a;
                    int i3 = kv3Var.f25431d;
                    if ((kv3Var.f25428a & 1) == 1 && this.f25002b.m13638m() == 0) {
                        i3 += m14027f(0);
                        i2 = this.f25004d;
                    } else {
                        i2 = 0;
                    }
                    if (!yq3.m8718d(vq3Var, i3)) {
                        return false;
                    }
                    this.f25003c = i2;
                }
                int m14027f = m14027f(i2);
                int i4 = this.f25003c + this.f25004d;
                if (m14027f > 0) {
                    C6694la c6694la = this.f25002b;
                    c6694la.m13640k(c6694la.m13638m() + m14027f);
                    if (!yq3.m8719c(vq3Var, this.f25002b.m13634q(), this.f25002b.m13638m(), m14027f)) {
                        return false;
                    }
                    C6694la c6694la2 = this.f25002b;
                    c6694la2.m13637n(c6694la2.m13638m() + m14027f);
                    if (this.f25001a.f25433f[i4 - 1] == 255) {
                        z = false;
                    }
                    this.f25005e = z;
                }
                int i5 = i4;
                if (i4 == this.f25001a.f25430c) {
                    i5 = -1;
                }
                this.f25003c = i5;
            } else {
                return true;
            }
        }
    }

    /* renamed from: c */
    public final kv3 m14030c() {
        return this.f25001a;
    }

    /* renamed from: d */
    public final C6694la m14029d() {
        return this.f25002b;
    }

    /* renamed from: e */
    public final void m14028e() {
        if (this.f25002b.m13634q().length == 65025) {
            return;
        }
        C6694la c6694la = this.f25002b;
        c6694la.m13641j(Arrays.copyOf(c6694la.m13634q(), Math.max(65025, this.f25002b.m13638m())), this.f25002b.m13638m());
    }
}
