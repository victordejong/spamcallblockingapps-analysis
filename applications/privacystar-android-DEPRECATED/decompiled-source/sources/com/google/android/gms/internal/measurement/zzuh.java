package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzuh.class */
final class zzuh extends zzum {
    private final int zzbud;
    private final int zzbue;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzuh(byte[] bArr, int i, int i2) {
        super(bArr);
        zzb(i, i + i2, bArr.length);
        this.zzbud = i;
        this.zzbue = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzum, com.google.android.gms.internal.measurement.zzud
    public final int size() {
        return this.zzbue;
    }

    @Override // com.google.android.gms.internal.measurement.zzum, com.google.android.gms.internal.measurement.zzud
    public final byte zzal(int i) {
        int size = size();
        if (((size - (i + 1)) | i) >= 0) {
            return this.zzbug[this.zzbud + i];
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

    @Override // com.google.android.gms.internal.measurement.zzum
    protected final int zzud() {
        return this.zzbud;
    }
}
