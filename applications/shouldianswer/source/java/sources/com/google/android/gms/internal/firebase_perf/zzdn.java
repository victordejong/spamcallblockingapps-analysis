package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzde;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzdn.class */
public class zzdn extends zzdo {
    protected final byte[] zzmo;

    public zzdn(byte[] bArr) {
        if (bArr != null) {
            this.zzmo = bArr;
            return;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdd
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdd) || size() != ((zzdd) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzdn)) {
            return obj.equals(this);
        }
        zzdn zzdnVar = (zzdn) obj;
        int zzfo = zzfo();
        int zzfo2 = zzdnVar.zzfo();
        if (zzfo != 0 && zzfo2 != 0 && zzfo != zzfo2) {
            return false;
        }
        return zza(zzdnVar, 0, size());
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdd
    public int size() {
        return this.zzmo.length;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdd
    protected final String zza(Charset charset) {
        return new String(this.zzmo, zzfp(), size(), charset);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdd
    public final void zza(zzde zzdeVar) {
        zzdeVar.zza(this.zzmo, zzfp(), size());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_perf.zzdo
    public final boolean zza(zzdd zzddVar, int i, int i2) {
        if (i2 > zzddVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zzddVar.size()) {
            int size2 = zzddVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzddVar instanceof zzdn)) {
            return zzddVar.zzd(0, i2).equals(zzd(0, i2));
        } else {
            zzdn zzdnVar = (zzdn) zzddVar;
            byte[] bArr = this.zzmo;
            byte[] bArr2 = zzdnVar.zzmo;
            int zzfp = zzfp();
            int zzfp2 = zzfp();
            int zzfp3 = zzdnVar.zzfp();
            while (zzfp2 < zzfp + i2) {
                if (bArr[zzfp2] != bArr2[zzfp3]) {
                    return false;
                }
                zzfp2++;
                zzfp3++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdd
    protected final int zzb(int i, int i2, int i3) {
        return zzei.zza(i, this.zzmo, zzfp(), i3);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdd
    public final zzdd zzd(int i, int i2) {
        int zzc = zzc(0, i2, size());
        return zzc == 0 ? zzdd.zzmh : new zzdk(this.zzmo, zzfp(), zzc);
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdd
    public final boolean zzfn() {
        int zzfp = zzfp();
        return zzhf.zzc(this.zzmo, zzfp, size() + zzfp);
    }

    protected int zzfp() {
        return 0;
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdd
    public byte zzq(int i) {
        return this.zzmo[i];
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzdd
    public byte zzr(int i) {
        return this.zzmo[i];
    }
}
