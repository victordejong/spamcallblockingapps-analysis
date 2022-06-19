package com.google.android.gms.internal.firebase_perf;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdk.class */
final class zzdk extends zzdn {
    private final int zzml;
    private final int zzmm;

    public zzdk(byte[] bArr, int i, int i2) {
        super(bArr);
        zzc(i, i + i2, bArr.length);
        this.zzml = i;
        this.zzmm = i2;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdn, com.google.android.gms.internal.firebase_perf.zzdd
    public final int size() {
        return this.zzmm;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdn
    protected final int zzfp() {
        return this.zzml;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdn, com.google.android.gms.internal.firebase_perf.zzdd
    public final byte zzq(int i) {
        int size = size();
        if (((size - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(22);
                sb.append("Index < 0: ");
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Index > length: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(size);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        return this.zzmo[this.zzml + i];
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdn, com.google.android.gms.internal.firebase_perf.zzdd
    public final byte zzr(int i) {
        return this.zzmo[this.zzml + i];
    }
}
