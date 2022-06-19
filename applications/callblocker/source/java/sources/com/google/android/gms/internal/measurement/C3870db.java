package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.db */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/db.class */
final class C3870db extends C3873de {

    /* renamed from: c */
    private final int f17973c;

    /* renamed from: d */
    private final int f17974d;

    public C3870db(byte[] bArr, int i, int i2) {
        super(bArr);
        m5807b(i, i + i2, bArr.length);
        this.f17973c = i;
        this.f17974d = i2;
    }

    @Override // com.google.android.gms.internal.measurement.C3873de, com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: a */
    public final byte mo5752a(int i) {
        int mo5753a = mo5753a();
        if (((mo5753a - (i + 1)) | i) < 0) {
            if (i >= 0) {
                throw new ArrayIndexOutOfBoundsException(new StringBuilder(40).append("Index > length: ").append(i).append(", ").append(mo5753a).toString());
            }
            throw new ArrayIndexOutOfBoundsException(new StringBuilder(22).append("Index < 0: ").append(i).toString());
        }
        return this.f17977b[this.f17973c + i];
    }

    @Override // com.google.android.gms.internal.measurement.C3873de, com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: a */
    public final int mo5753a() {
        return this.f17974d;
    }

    @Override // com.google.android.gms.internal.measurement.C3873de, com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: b */
    public final byte mo5747b(int i) {
        return this.f17977b[this.f17973c + i];
    }

    @Override // com.google.android.gms.internal.measurement.C3873de
    /* renamed from: e */
    protected final int mo5745e() {
        return this.f17973c;
    }
}
