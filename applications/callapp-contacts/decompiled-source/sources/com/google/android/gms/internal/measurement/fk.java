package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fk.class */
public class fk extends fj {

    /* renamed from: a  reason: collision with root package name */
    protected final byte[] f29016a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fk(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.f29016a = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.fm
    public byte a(int i) {
        return this.f29016a[i];
    }

    @Override // com.google.android.gms.internal.measurement.fm
    public int a() {
        return this.f29016a.length;
    }

    @Override // com.google.android.gms.internal.measurement.fm
    protected final int a(int i, int i2) {
        return gt.a(i, this.f29016a, i2);
    }

    @Override // com.google.android.gms.internal.measurement.fm
    protected final String a(Charset charset) {
        return new String(this.f29016a, 0, a(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.fm
    public final void a(fd fdVar) throws IOException {
        ((fr) fdVar).a(this.f29016a, a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.fm
    public byte b(int i) {
        return this.f29016a[i];
    }

    @Override // com.google.android.gms.internal.measurement.fm
    public final boolean b() {
        return jc.a(this.f29016a, 0, a());
    }

    @Override // com.google.android.gms.internal.measurement.fm
    public final fm c(int i) {
        int a2 = a(0, i, a());
        return a2 == 0 ? fm.f29017b : new fh(this.f29016a, 0, a2);
    }

    @Override // com.google.android.gms.internal.measurement.fm
    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof fm) || a() != ((fm) obj).a()) {
            return false;
        }
        if (a() == 0) {
            return true;
        }
        if (!(obj instanceof fk)) {
            return obj.equals(this);
        }
        fk fkVar = (fk) obj;
        int c2 = c();
        int c3 = fkVar.c();
        if (c2 != 0 && c3 != 0 && c2 != c3) {
            return false;
        }
        int a2 = a();
        if (a2 > fkVar.a()) {
            int a3 = a();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(a2);
            sb.append(a3);
            throw new IllegalArgumentException(sb.toString());
        } else if (a2 <= fkVar.a()) {
            if (fkVar instanceof fk) {
                byte[] bArr = this.f29016a;
                byte[] bArr2 = fkVar.f29016a;
                int i = 0;
                int i2 = 0;
                while (true) {
                    if (i >= a2) {
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
                z = fkVar.c(a2).equals(c(a2));
            }
            return z;
        } else {
            int a4 = fkVar.a();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(a2);
            sb2.append(", ");
            sb2.append(a4);
            throw new IllegalArgumentException(sb2.toString());
        }
    }
}
