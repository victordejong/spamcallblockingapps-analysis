package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmh.class */
public class dmh extends dmd {

    /* renamed from: b  reason: collision with root package name */
    protected final byte[] f26955b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dmh(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f26955b = bArr;
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public byte a(int i) {
        return this.f26955b[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dlw
    public final int a(int i, int i2, int i3) {
        int l = l() + i2;
        return dqp.a(i, this.f26955b, l, i3 + l);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final dlw a(int i, int i2) {
        int c2 = c(i, i2, b());
        return c2 == 0 ? dlw.f26941a : new dlz(this.f26955b, l() + i, c2);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    protected final String a(Charset charset) {
        return new String(this.f26955b, l(), b(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dlw
    public final void a(dlt dltVar) throws IOException {
        dltVar.a(this.f26955b, l(), b());
    }

    @Override // com.google.android.gms.internal.ads.dmd
    final boolean a(dlw dlwVar, int i, int i2) {
        if (i2 <= dlwVar.b()) {
            int i3 = i + i2;
            if (i3 > dlwVar.b()) {
                int b2 = dlwVar.b();
                StringBuilder sb = new StringBuilder(59);
                sb.append("Ran off end of other: ");
                sb.append(i);
                sb.append(", ");
                sb.append(i2);
                sb.append(", ");
                sb.append(b2);
                throw new IllegalArgumentException(sb.toString());
            } else if (!(dlwVar instanceof dmh)) {
                return dlwVar.a(i, i3).equals(a(0, i2));
            } else {
                dmh dmhVar = (dmh) dlwVar;
                byte[] bArr = this.f26955b;
                byte[] bArr2 = dmhVar.f26955b;
                int l = l();
                int l2 = l();
                int l3 = dmhVar.l() + i;
                while (l2 < l + i2) {
                    if (bArr[l2] != bArr2[l3]) {
                        return false;
                    }
                    l2++;
                    l3++;
                }
                return true;
            }
        } else {
            int b3 = b();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(i2);
            sb2.append(b3);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.dlw
    public byte b(int i) {
        return this.f26955b[i];
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public int b() {
        return this.f26955b.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dlw
    public final int b(int i, int i2, int i3) {
        return dnj.a(i, this.f26955b, l() + i2, i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dlw
    public void b(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f26955b, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dlw) || b() != ((dlw) obj).b()) {
            return false;
        }
        if (b() == 0) {
            return true;
        }
        if (!(obj instanceof dmh)) {
            return obj.equals(this);
        }
        dmh dmhVar = (dmh) obj;
        int k = k();
        int k2 = dmhVar.k();
        if (k == 0 || k2 == 0 || k == k2) {
            return a(dmhVar, 0, b());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final boolean f() {
        int l = l();
        return dqp.a(this.f26955b, l, b() + l);
    }

    @Override // com.google.android.gms.internal.ads.dlw
    public final dmi g() {
        return dmi.a(this.f26955b, l(), b(), true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int l() {
        return 0;
    }
}
