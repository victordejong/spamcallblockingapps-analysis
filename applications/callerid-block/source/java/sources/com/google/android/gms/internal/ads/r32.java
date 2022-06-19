package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/r32.class */
public final class r32 {

    /* renamed from: a */
    private final i02 f8321a;

    /* renamed from: b */
    private final l02 f8322b;

    public r32(i02 i02Var) {
        this.f8321a = i02Var;
        this.f8322b = null;
    }

    public r32(l02 l02Var) {
        this.f8321a = null;
        this.f8322b = l02Var;
    }

    /* renamed from: a */
    public final byte[] m5991a(byte[] bArr, byte[] bArr2) {
        i02 i02Var = this.f8321a;
        return i02Var != null ? i02Var.m7208a(bArr, bArr2) : this.f8322b.m6740a(bArr, bArr2);
    }
}
