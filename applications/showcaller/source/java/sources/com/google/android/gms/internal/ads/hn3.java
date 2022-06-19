package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hn3.class */
public final class hn3 {

    /* renamed from: a */
    public final int f23990a;

    /* renamed from: b */
    public final C7060v6[] f23991b;

    /* renamed from: c */
    public final Object f23992c;

    /* renamed from: d */
    public final mm3[] f23993d;

    public hn3(C7060v6[] c7060v6Arr, mm3[] mm3VarArr, Object obj, byte[] bArr) {
        this.f23991b = c7060v6Arr;
        this.f23993d = (mm3[]) mm3VarArr.clone();
        this.f23992c = obj;
        this.f23990a = c7060v6Arr.length;
    }

    /* renamed from: a */
    public final boolean m14584a(int i) {
        return this.f23991b[i] != null;
    }

    /* renamed from: b */
    public final boolean m14583b(hn3 hn3Var, int i) {
        return hn3Var != null && C7101wa.m9720H(this.f23991b[i], hn3Var.f23991b[i]) && C7101wa.m9720H(this.f23993d[i], hn3Var.f23993d[i]);
    }
}
