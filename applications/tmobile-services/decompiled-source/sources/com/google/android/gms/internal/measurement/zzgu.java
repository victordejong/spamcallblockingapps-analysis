package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgu.class */
public final class zzgu extends zzhb {

    /* renamed from: j */
    private final int f8465j;

    /* renamed from: k */
    private final int f8466k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgu(byte[] bArr, int i, int i2) {
        super(bArr);
        zzgr.m12630t(i, i + i2, bArr.length);
        this.f8465j = i;
        this.f8466k = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzhb, com.google.android.gms.internal.measurement.zzgr
    /* renamed from: c */
    public final byte mo12618c(int i) {
        int d = mo12617d();
        if (((d - (i + 1)) | i) >= 0) {
            return this.f8472i[this.f8465j + i];
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
        sb2.append(d);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzhb, com.google.android.gms.internal.measurement.zzgr
    /* renamed from: d */
    public final int mo12617d() {
        return this.f8466k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzhb, com.google.android.gms.internal.measurement.zzgr
    /* renamed from: r */
    public final byte mo12612r(int i) {
        return this.f8472i[this.f8465j + i];
    }

    @Override // com.google.android.gms.internal.measurement.zzhb
    /* renamed from: z */
    protected final int mo12609z() {
        return this.f8465j;
    }
}
