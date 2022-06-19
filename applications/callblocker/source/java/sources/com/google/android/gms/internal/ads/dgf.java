package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgf.class */
abstract class dgf {
    /* renamed from: a */
    public abstract int mo9633a(int i, byte[] bArr, int i2, int i3);

    /* renamed from: a */
    public abstract int mo9632a(CharSequence charSequence, byte[] bArr, int i, int i2);

    /* renamed from: a */
    public abstract String mo9631a(byte[] bArr, int i, int i2);

    /* renamed from: b */
    public final boolean m9634b(byte[] bArr, int i, int i2) {
        boolean z = false;
        if (mo9633a(0, bArr, i, i2) == 0) {
            z = true;
        }
        return z;
    }
}
