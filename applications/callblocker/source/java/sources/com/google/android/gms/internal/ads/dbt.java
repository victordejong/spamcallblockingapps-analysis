package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbt.class */
public class dbt extends dbu {

    /* renamed from: b */
    protected final byte[] f13944b;

    public dbt(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        this.f13944b = bArr;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public byte mo9918a(int i) {
        return this.f13944b[i];
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final int mo9916a(int i, int i2, int i3) {
        int mo10204l = mo10204l() + i2;
        return dgd.m9645a(i, this.f13944b, mo10204l, mo10204l + i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.dbi] */
    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final dbi mo9917a(int i, int i2) {
        int c = m10211c(i, i2, mo9911b());
        return c == 0 ? dbi.f13932a : new dbp(this.f13944b, mo10204l() + i, c);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    protected final String mo9912a(Charset charset) {
        return new String(this.f13944b, mo10204l(), mo9911b(), charset);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo9914a(dbj dbjVar) {
        dbjVar.mo6562a(this.f13944b, mo10204l(), mo9911b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dbu
    /* renamed from: a */
    public final boolean mo10203a(dbi dbiVar, int i, int i2) {
        boolean z = false;
        if (i2 > dbiVar.mo9911b()) {
            throw new IllegalArgumentException(new StringBuilder(40).append("Length too large: ").append(i2).append(mo9911b()).toString());
        } else if (i + i2 > dbiVar.mo9911b()) {
            throw new IllegalArgumentException(new StringBuilder(59).append("Ran off end of other: ").append(i).append(", ").append(i2).append(", ").append(dbiVar.mo9911b()).toString());
        } else {
            if (dbiVar instanceof dbt) {
                dbt dbtVar = (dbt) dbiVar;
                byte[] bArr = this.f13944b;
                byte[] bArr2 = dbtVar.f13944b;
                int mo10204l = mo10204l();
                int mo10204l2 = mo10204l();
                int mo10204l3 = dbtVar.mo10204l() + i;
                while (true) {
                    if (mo10204l2 >= mo10204l + i2) {
                        z = true;
                        break;
                    } else if (bArr[mo10204l2] != bArr2[mo10204l3]) {
                        break;
                    } else {
                        mo10204l2++;
                        mo10204l3++;
                    }
                }
            } else {
                z = dbiVar.mo9917a(i, i + i2).equals(mo9917a(0, i2));
            }
            return z;
        }
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public byte mo9910b(int i) {
        return this.f13944b[i];
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public int mo9911b() {
        return this.f13944b.length;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public final int mo9909b(int i, int i2, int i3) {
        return dcz.m10050a(i, this.f13944b, mo10204l() + i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: b */
    public void mo9906b(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f13944b, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final boolean equals(Object obj) {
        boolean equals;
        if (obj == this) {
            equals = true;
        } else if (!(obj instanceof dbi)) {
            equals = false;
        } else if (mo9911b() != ((dbi) obj).mo9911b()) {
            equals = false;
        } else if (mo9911b() == 0) {
            equals = true;
        } else if (obj instanceof dbt) {
            int m10207k = m10207k();
            int m10207k2 = ((dbt) obj).m10207k();
            equals = (m10207k == 0 || m10207k2 == 0 || m10207k == m10207k2) ? mo10203a((dbt) obj, 0, mo9911b()) : false;
        } else {
            equals = obj.equals(this);
        }
        return equals;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: f */
    public final boolean mo9904f() {
        int mo10204l = mo10204l();
        return dgd.m9641a(this.f13944b, mo10204l, mo9911b() + mo10204l);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: g */
    public final dby mo9903g() {
        return dby.m10197a(this.f13944b, mo10204l(), mo9911b(), true);
    }

    /* renamed from: l */
    public int mo10204l() {
        return 0;
    }
}
