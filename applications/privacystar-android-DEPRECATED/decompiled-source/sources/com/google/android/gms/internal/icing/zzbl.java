package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbl.class */
final class zzbl extends zzbp {
    private final int zzdu;
    private final int zzdv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbl(byte[] bArr, int i, int i2) {
        super(bArr);
        zzb(i, i + i2, bArr.length);
        this.zzdu = i;
        this.zzdv = i2;
    }

    @Override // com.google.android.gms.internal.icing.zzbp, com.google.android.gms.internal.icing.zzbi
    public final int size() {
        return this.zzdv;
    }

    @Override // com.google.android.gms.internal.icing.zzbp, com.google.android.gms.internal.icing.zzbi
    public final byte zzi(int i) {
        int size = size();
        if (((size - (i + 1)) | i) >= 0) {
            return this.zzdx[this.zzdu + i];
        }
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

    @Override // com.google.android.gms.internal.icing.zzbp
    protected final int zzx() {
        return this.zzdu;
    }
}
