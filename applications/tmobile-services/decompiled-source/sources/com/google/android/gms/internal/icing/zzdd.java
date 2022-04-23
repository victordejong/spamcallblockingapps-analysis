package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzdd.class */
public class zzdd extends zzde {

    /* renamed from: i */
    protected final byte[] f7966i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdd(byte[] bArr) {
        if (bArr != null) {
            this.f7966i = bArr;
            return;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.icing.zzct
    /* renamed from: d */
    protected final int mo13967d(int i, int i2, int i3) {
        return zzeb.m13804c(i, this.f7966i, mo13959w(), i3);
    }

    @Override // com.google.android.gms.internal.icing.zzct
    /* renamed from: e */
    public final zzct mo13966e(int i, int i2) {
        int p = zzct.m13975p(0, i2, size());
        return p == 0 ? zzct.f7956g : new zzda(this.f7966i, mo13959w(), p);
    }

    @Override // com.google.android.gms.internal.icing.zzct
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzct) || size() != ((zzct) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzdd)) {
            return obj.equals(this);
        }
        zzdd zzddVar = (zzdd) obj;
        int k = m13977k();
        int k2 = zzddVar.m13977k();
        if (k == 0 || k2 == 0 || k == k2) {
            return m13960v(zzddVar, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.icing.zzct
    /* renamed from: f */
    protected final String mo13965f(Charset charset) {
        return new String(this.f7966i, mo13959w(), size(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzct
    /* renamed from: g */
    public final void mo13964g(zzcu zzcuVar) throws IOException {
        zzcuVar.mo13884a(this.f7966i, mo13959w(), size());
    }

    @Override // com.google.android.gms.internal.icing.zzct
    /* renamed from: j */
    public final boolean mo13963j() {
        int w = mo13959w();
        return zzgv.m13536f(this.f7966i, w, size() + w);
    }

    @Override // com.google.android.gms.internal.icing.zzct
    /* renamed from: r */
    public byte mo13962r(int i) {
        return this.f7966i[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.icing.zzct
    /* renamed from: s */
    public byte mo13961s(int i) {
        return this.f7966i[i];
    }

    @Override // com.google.android.gms.internal.icing.zzct
    public int size() {
        return this.f7966i.length;
    }

    /* renamed from: v */
    final boolean m13960v(zzct zzctVar, int i, int i2) {
        if (i2 > zzctVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zzctVar.size()) {
            int size2 = zzctVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzctVar instanceof zzdd)) {
            return zzctVar.mo13966e(0, i2).equals(mo13966e(0, i2));
        } else {
            zzdd zzddVar = (zzdd) zzctVar;
            byte[] bArr = this.f7966i;
            byte[] bArr2 = zzddVar.f7966i;
            int w = mo13959w();
            int w2 = mo13959w();
            int w3 = zzddVar.mo13959w();
            while (w2 < w + i2) {
                if (bArr[w2] != bArr2[w3]) {
                    return false;
                }
                w2++;
                w3++;
            }
            return true;
        }
    }

    /* renamed from: w */
    protected int mo13959w() {
        return 0;
    }
}
