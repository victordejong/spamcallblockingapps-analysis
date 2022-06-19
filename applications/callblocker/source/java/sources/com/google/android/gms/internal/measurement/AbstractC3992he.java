package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.he */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/he.class */
abstract class AbstractC3992he {
    /* renamed from: a */
    abstract int mo5217a(int i, byte[] bArr, int i2, int i3);

    /* renamed from: a */
    public abstract int mo5216a(CharSequence charSequence, byte[] bArr, int i, int i2);

    /* renamed from: a */
    public final boolean m5233a(byte[] bArr, int i, int i2) {
        boolean z = false;
        if (mo5217a(0, bArr, i, i2) == 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public abstract String mo5214b(byte[] bArr, int i, int i2);
}
