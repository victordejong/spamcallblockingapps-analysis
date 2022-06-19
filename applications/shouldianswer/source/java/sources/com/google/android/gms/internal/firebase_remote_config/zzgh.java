package com.google.android.gms.internal.firebase_remote_config;

import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzgh.class */
public class zzgh extends zzgi {
    protected final byte[] zzpc;

    public zzgh(byte[] bArr) {
        if (bArr != null) {
            this.zzpc = bArr;
            return;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfx
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfx) || size() != ((zzfx) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (!(obj instanceof zzgh)) {
            return obj.equals(this);
        }
        zzgh zzghVar = (zzgh) obj;
        int zzex = zzex();
        int zzex2 = zzghVar.zzex();
        if (zzex != 0 && zzex2 != 0 && zzex != zzex2) {
            return false;
        }
        return zza(zzghVar, 0, size());
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfx
    public int size() {
        return this.zzpc.length;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfx
    protected final int zza(int i, int i2, int i3) {
        return zzhm.zza(i, this.zzpc, zzey(), i3);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfx
    public final void zza(zzfy zzfyVar) {
        zzfyVar.zzb(this.zzpc, zzey(), size());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzgi
    public final boolean zza(zzfx zzfxVar, int i, int i2) {
        if (i2 > zzfxVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        } else if (i2 > zzfxVar.size()) {
            int size2 = zzfxVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: 0, ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        } else if (!(zzfxVar instanceof zzgh)) {
            return zzfxVar.zzb(0, i2).equals(zzb(0, i2));
        } else {
            zzgh zzghVar = (zzgh) zzfxVar;
            byte[] bArr = this.zzpc;
            byte[] bArr2 = zzghVar.zzpc;
            int zzey = zzey();
            int zzey2 = zzey();
            int zzey3 = zzghVar.zzey();
            while (zzey2 < zzey + i2) {
                if (bArr[zzey2] != bArr2[zzey3]) {
                    return false;
                }
                zzey2++;
                zzey3++;
            }
            return true;
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfx
    public final zzfx zzb(int i, int i2) {
        int zzb = zzb(0, i2, size());
        return zzb == 0 ? zzfx.zzov : new zzge(this.zzpc, zzey(), zzb);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfx
    protected final String zzc(Charset charset) {
        return new String(this.zzpc, zzey(), size(), charset);
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfx
    public final boolean zzew() {
        int zzey = zzey();
        return zzkg.zze(this.zzpc, zzey, size() + zzey);
    }

    protected int zzey() {
        return 0;
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfx
    public byte zzv(int i) {
        return this.zzpc[i];
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzfx
    public byte zzw(int i) {
        return this.zzpc[i];
    }
}
