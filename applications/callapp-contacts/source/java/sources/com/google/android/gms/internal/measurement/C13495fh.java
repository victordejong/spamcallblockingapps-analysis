package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.fh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fh.class */
public final class C13495fh extends C13498fk {

    /* renamed from: c */
    private final int f50714c;

    public C13495fh(byte[] bArr, int i, int i2) {
        super(bArr);
        m12863a(0, i2, bArr.length);
        this.f50714c = i2;
    }

    @Override // com.google.android.gms.internal.measurement.C13498fk, com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: a */
    public final byte mo12865a(int i) {
        int i2 = this.f50714c;
        if (((i2 - (i + 1)) | i) < 0) {
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
            sb2.append(i2);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        return this.f50715a[i];
    }

    @Override // com.google.android.gms.internal.measurement.C13498fk, com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: a */
    public final int mo12866a() {
        return this.f50714c;
    }

    @Override // com.google.android.gms.internal.measurement.C13498fk, com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: b */
    public final byte mo12857b(int i) {
        return this.f50715a[i];
    }
}
