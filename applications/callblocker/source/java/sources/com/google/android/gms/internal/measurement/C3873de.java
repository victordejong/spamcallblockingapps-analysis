package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
/* renamed from: com.google.android.gms.internal.measurement.de */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/de.class */
public class C3873de extends AbstractC3874df {

    /* renamed from: b */
    protected final byte[] f17977b;

    public C3873de(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        this.f17977b = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: a */
    public byte mo5752a(int i) {
        return this.f17977b[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: a */
    public int mo5753a() {
        return this.f17977b.length;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: a */
    protected final int mo5750a(int i, int i2, int i3) {
        return C3908ef.m5615a(i, this.f17977b, mo5745e(), i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.measurement.ct] */
    @Override // com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: a */
    public final AbstractC3859ct mo5751a(int i, int i2) {
        int b = m5807b(0, i2, mo5753a());
        return b == 0 ? AbstractC3859ct.f17943a : new C3870db(this.f17977b, mo5745e(), b);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: a */
    protected final String mo5748a(Charset charset) {
        return new String(this.f17977b, mo5745e(), mo5753a(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: a */
    public final void mo5749a(AbstractC3861cv abstractC3861cv) {
        abstractC3861cv.mo4865a(this.f17977b, mo5745e(), mo5753a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.AbstractC3874df
    /* renamed from: a */
    public final boolean mo5744a(AbstractC3859ct abstractC3859ct, int i, int i2) {
        boolean z = false;
        if (i2 > abstractC3859ct.mo5753a()) {
            throw new IllegalArgumentException(new StringBuilder(40).append("Length too large: ").append(i2).append(mo5753a()).toString());
        } else if (i2 > abstractC3859ct.mo5753a()) {
            throw new IllegalArgumentException(new StringBuilder(59).append("Ran off end of other: 0, ").append(i2).append(", ").append(abstractC3859ct.mo5753a()).toString());
        } else {
            if (abstractC3859ct instanceof C3873de) {
                C3873de c3873de = (C3873de) abstractC3859ct;
                byte[] bArr = this.f17977b;
                byte[] bArr2 = c3873de.f17977b;
                int mo5745e = mo5745e();
                int mo5745e2 = mo5745e();
                int mo5745e3 = c3873de.mo5745e();
                while (true) {
                    if (mo5745e2 >= mo5745e + i2) {
                        z = true;
                        break;
                    } else if (bArr[mo5745e2] != bArr2[mo5745e3]) {
                        break;
                    } else {
                        mo5745e2++;
                        mo5745e3++;
                    }
                }
            } else {
                z = abstractC3859ct.mo5751a(0, i2).equals(mo5751a(0, i2));
            }
            return z;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: b */
    public byte mo5747b(int i) {
        return this.f17977b[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3859ct
    /* renamed from: c */
    public final boolean mo5746c() {
        int mo5745e = mo5745e();
        return C3991hd.m5240a(this.f17977b, mo5745e, mo5753a() + mo5745e);
    }

    /* renamed from: e */
    protected int mo5745e() {
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC3859ct
    public final boolean equals(Object obj) {
        boolean equals;
        if (obj == this) {
            equals = true;
        } else if (!(obj instanceof AbstractC3859ct)) {
            equals = false;
        } else if (mo5753a() != ((AbstractC3859ct) obj).mo5753a()) {
            equals = false;
        } else if (mo5753a() == 0) {
            equals = true;
        } else if (obj instanceof C3873de) {
            int m5805d = m5805d();
            int m5805d2 = ((C3873de) obj).m5805d();
            equals = (m5805d == 0 || m5805d2 == 0 || m5805d == m5805d2) ? mo5744a((C3873de) obj, 0, mo5753a()) : false;
        } else {
            equals = obj.equals(this);
        }
        return equals;
    }
}
