package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzum.class */
public class zzum extends zzul {
    protected final byte[] zzbug;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzum(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        this.zzbug = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzud
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzud) || size() != ((zzud) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzum)) {
            return obj.equals(this);
        }
        zzum zzumVar = (zzum) obj;
        int zzuc = zzuc();
        int zzuc2 = zzumVar.zzuc();
        if (zzuc == 0 || zzuc2 == 0 || zzuc == zzuc2) {
            return zza(zzumVar, 0, size());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzud
    public int size() {
        return this.zzbug.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzud
    protected final int zza(int i, int i2, int i3) {
        return zzvo.zza(i, this.zzbug, zzud(), i3);
    }

    @Override // com.google.android.gms.internal.measurement.zzud
    protected final String zza(Charset charset) {
        return new String(this.zzbug, zzud(), size(), charset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzud
    public final void zza(zzuc zzucVar) throws IOException {
        zzucVar.zza(this.zzbug, zzud(), size());
    }

    @Override // com.google.android.gms.internal.measurement.zzul
    final boolean zza(zzud zzudVar, int i, int i2) {
        if (i2 > zzudVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zzudVar.size()) {
            int size2 = zzudVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzudVar instanceof zzum)) {
            return zzudVar.zzb(0, i2).equals(zzb(0, i2));
        } else {
            zzum zzumVar = (zzum) zzudVar;
            byte[] bArr = this.zzbug;
            byte[] bArr2 = zzumVar.zzbug;
            int zzud = zzud();
            int zzud2 = zzud();
            int zzud3 = zzumVar.zzud();
            while (zzud2 < zzud + i2) {
                if (bArr[zzud2] != bArr2[zzud3]) {
                    return false;
                }
                zzud2++;
                zzud3++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzud
    public byte zzal(int i) {
        return this.zzbug[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzud
    public final zzud zzb(int i, int i2) {
        int zzb = zzb(0, i2, size());
        return zzb == 0 ? zzud.zzbtz : new zzuh(this.zzbug, zzud(), zzb);
    }

    @Override // com.google.android.gms.internal.measurement.zzud
    public final boolean zzub() {
        int zzud = zzud();
        return zzyj.zzf(this.zzbug, zzud, size() + zzud);
    }

    protected int zzud() {
        return 0;
    }
}
