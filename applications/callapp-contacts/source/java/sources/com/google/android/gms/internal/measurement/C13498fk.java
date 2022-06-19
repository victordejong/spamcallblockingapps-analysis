package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.measurement.fk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fk.class */
public class C13498fk extends AbstractC13497fj {

    /* renamed from: a */
    protected final byte[] f50715a;

    public C13498fk(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f50715a = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: a */
    public byte mo12865a(int i) {
        return this.f50715a[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: a */
    public int mo12866a() {
        return this.f50715a.length;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: a */
    protected final int mo12864a(int i, int i2) {
        return C13534gt.m12748a(i, this.f50715a, i2);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: a */
    protected final String mo12860a(Charset charset) {
        return new String(this.f50715a, 0, mo12866a(), charset);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: a */
    public final void mo12862a(C13491fd c13491fd) throws IOException {
        ((C13505fr) c13491fd).m12851a(this.f50715a, mo12866a());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: b */
    public byte mo12857b(int i) {
        return this.f50715a[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: b */
    public final boolean mo12858b() {
        return C13598jc.m12503a(this.f50715a, 0, mo12866a());
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13500fm
    /* renamed from: c */
    public final AbstractC13500fm mo12854c(int i) {
        int a = m12863a(0, i, mo12866a());
        return a == 0 ? AbstractC13500fm.f50716b : new C13495fh(this.f50715a, 0, a);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC13500fm
    public final boolean equals(Object obj) {
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC13500fm) || mo12866a() != ((AbstractC13500fm) obj).mo12866a()) {
            return false;
        }
        if (mo12866a() == 0) {
            return true;
        }
        if (!(obj instanceof C13498fk)) {
            return obj.equals(this);
        }
        C13498fk c13498fk = (C13498fk) obj;
        int m12855c = m12855c();
        int m12855c2 = c13498fk.m12855c();
        if (m12855c != 0 && m12855c2 != 0 && m12855c != m12855c2) {
            return false;
        }
        int mo12866a = mo12866a();
        if (mo12866a > c13498fk.mo12866a()) {
            int mo12866a2 = mo12866a();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(mo12866a);
            sb.append(mo12866a2);
            throw new IllegalArgumentException(sb.toString());
        } else if (mo12866a > c13498fk.mo12866a()) {
            int mo12866a3 = c13498fk.mo12866a();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(mo12866a);
            sb2.append(", ");
            sb2.append(mo12866a3);
            throw new IllegalArgumentException(sb2.toString());
        } else {
            if (c13498fk instanceof C13498fk) {
                byte[] bArr = this.f50715a;
                byte[] bArr2 = c13498fk.f50715a;
                int i = 0;
                int i2 = 0;
                while (true) {
                    z = true;
                    if (i >= mo12866a) {
                        break;
                    } else if (bArr[i] != bArr2[i2]) {
                        z = false;
                        break;
                    } else {
                        i++;
                        i2++;
                    }
                }
            } else {
                z = c13498fk.mo12854c(mo12866a).equals(mo12854c(mo12866a));
            }
            return z;
        }
    }
}
