package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdf.class */
public abstract class zzdf {
    private zzdf() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzdf m13958a(byte[] bArr, int i, int i2, boolean z) {
        zzdh zzdhVar = new zzdh(bArr, 0, i2, false);
        try {
            zzdhVar.m13956c(i2);
            return zzdhVar;
        } catch (zzeh e) {
            throw new IllegalArgumentException(e);
        }
    }
}
