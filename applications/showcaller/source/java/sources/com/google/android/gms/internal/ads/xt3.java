package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xt3.class */
final class xt3 extends zt3 {

    /* renamed from: b */
    public final long f32290b;

    /* renamed from: c */
    public final List<yt3> f32291c = new ArrayList();

    /* renamed from: d */
    public final List<xt3> f32292d = new ArrayList();

    public xt3(int i, long j) {
        super(i);
        this.f32290b = j;
    }

    /* renamed from: c */
    public final void m9062c(yt3 yt3Var) {
        this.f32291c.add(yt3Var);
    }

    /* renamed from: d */
    public final void m9061d(xt3 xt3Var) {
        this.f32292d.add(xt3Var);
    }

    /* renamed from: e */
    public final yt3 m9060e(int i) {
        int size = this.f32291c.size();
        for (int i2 = 0; i2 < size; i2++) {
            yt3 yt3Var = this.f32291c.get(i2);
            if (yt3Var.f33399a == i) {
                return yt3Var;
            }
        }
        return null;
    }

    /* renamed from: f */
    public final xt3 m9059f(int i) {
        int size = this.f32292d.size();
        for (int i2 = 0; i2 < size; i2++) {
            xt3 xt3Var = this.f32292d.get(i2);
            if (xt3Var.f33399a == i) {
                return xt3Var;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zt3
    public final String toString() {
        String m8182b = zt3.m8182b(this.f33399a);
        String arrays = Arrays.toString(this.f32291c.toArray());
        String arrays2 = Arrays.toString(this.f32292d.toArray());
        int length = String.valueOf(arrays).length();
        StringBuilder sb = new StringBuilder(m8182b.length() + 22 + length + String.valueOf(arrays2).length());
        sb.append(m8182b);
        sb.append(" leaves: ");
        sb.append(arrays);
        sb.append(" containers: ");
        sb.append(arrays2);
        return sb.toString();
    }
}
