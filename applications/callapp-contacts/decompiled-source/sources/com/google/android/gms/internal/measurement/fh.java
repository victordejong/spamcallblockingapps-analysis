package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fh.class */
public final class fh extends fk {

    /* renamed from: c  reason: collision with root package name */
    private final int f29015c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fh(byte[] bArr, int i, int i2) {
        super(bArr);
        a(0, i2, bArr.length);
        this.f29015c = i2;
    }

    @Override // com.google.android.gms.internal.measurement.fk, com.google.android.gms.internal.measurement.fm
    public final byte a(int i) {
        int i2 = this.f29015c;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.f29016a[i];
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
        sb2.append(i2);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.measurement.fk, com.google.android.gms.internal.measurement.fm
    public final int a() {
        return this.f29015c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.fk, com.google.android.gms.internal.measurement.fm
    public final byte b(int i) {
        return this.f29016a[i];
    }
}
