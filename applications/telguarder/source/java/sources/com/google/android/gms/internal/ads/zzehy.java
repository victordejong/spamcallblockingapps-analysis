package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehy.class */
public final class zzehy {
    private final zzeil zzijq;
    private final zzeil zzijr;

    public zzehy(byte[] bArr, byte[] bArr2) {
        this.zzijq = zzeil.zzr(bArr);
        this.zzijr = zzeil.zzr(bArr2);
    }

    public final byte[] zzbfq() {
        zzeil zzeilVar = this.zzijq;
        if (zzeilVar == null) {
            return null;
        }
        return zzeilVar.getBytes();
    }

    public final byte[] zzbfr() {
        zzeil zzeilVar = this.zzijr;
        if (zzeilVar == null) {
            return null;
        }
        return zzeilVar.getBytes();
    }
}
