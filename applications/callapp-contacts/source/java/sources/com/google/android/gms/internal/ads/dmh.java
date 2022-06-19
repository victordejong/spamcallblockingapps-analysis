package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmh.class */
public class dmh extends dmd {

    /* renamed from: b */
    protected final byte[] f47215b;

    public dmh(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f47215b = bArr;
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    public byte mo16145a(int i) {
        return this.f47215b[i];
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    public final int mo16143a(int i, int i2, int i3) {
        int mo16457l = mo16457l() + i2;
        return dqp.m15944a(i, this.f47215b, mo16457l, i3 + mo16457l);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    public final dlw mo16144a(int i, int i2) {
        int c = m16468c(i, i2, mo16138b());
        return c == 0 ? dlw.f47199a : new dlz(this.f47215b, mo16457l() + i, c);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    protected final String mo16139a(Charset charset) {
        return new String(this.f47215b, mo16457l(), mo16138b(), charset);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: a */
    public final void mo16142a(dlt dltVar) throws IOException {
        dltVar.mo13646a(this.f47215b, mo16457l(), mo16138b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dmd
    /* renamed from: a */
    public final boolean mo16458a(dlw dlwVar, int i, int i2) {
        if (i2 > dlwVar.mo16138b()) {
            int mo16138b = mo16138b();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(mo16138b);
            throw new IllegalArgumentException(sb.toString());
        }
        int i3 = i + i2;
        if (i3 > dlwVar.mo16138b()) {
            int mo16138b2 = dlwVar.mo16138b();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(mo16138b2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(dlwVar instanceof dmh)) {
            return dlwVar.mo16144a(i, i3).equals(mo16144a(0, i2));
        } else {
            dmh dmhVar = (dmh) dlwVar;
            byte[] bArr = this.f47215b;
            byte[] bArr2 = dmhVar.f47215b;
            int mo16457l = mo16457l();
            int mo16457l2 = mo16457l();
            int mo16457l3 = dmhVar.mo16457l() + i;
            int i4 = mo16457l2;
            int i5 = mo16457l3;
            while (i4 < mo16457l + i2) {
                if (bArr[i4] != bArr2[i5]) {
                    return false;
                }
                i4++;
                i5++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public byte mo16137b(int i) {
        return this.f47215b[i];
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public int mo16138b() {
        return this.f47215b.length;
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public final int mo16136b(int i, int i2, int i3) {
        return dnj.m16318a(i, this.f47215b, mo16457l() + i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: b */
    public void mo16133b(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f47215b, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dlw) || mo16138b() != ((dlw) obj).mo16138b()) {
            return false;
        }
        if (mo16138b() == 0) {
            return true;
        }
        if (!(obj instanceof dmh)) {
            return obj.equals(this);
        }
        dmh dmhVar = (dmh) obj;
        int m16464k = m16464k();
        int m16464k2 = dmhVar.m16464k();
        if (m16464k != 0 && m16464k2 != 0 && m16464k != m16464k2) {
            return false;
        }
        return mo16458a(dmhVar, 0, mo16138b());
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: f */
    public final boolean mo16131f() {
        int mo16457l = mo16457l();
        return dqp.m15940a(this.f47215b, mo16457l, mo16138b() + mo16457l);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    /* renamed from: g */
    public final dmi mo16130g() {
        return dmi.m16455a(this.f47215b, mo16457l(), mo16138b(), true);
    }

    /* renamed from: l */
    public int mo16457l() {
        return 0;
    }
}
