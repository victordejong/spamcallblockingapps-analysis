package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatx.class */
public final class zzatx implements zzatz {
    private final byte[] zza;
    private Uri zzb;
    private int zzc;
    private int zzd;

    public zzatx(byte[] bArr) {
        Objects.requireNonNull(bArr);
        zzaup.zza(bArr.length > 0);
        this.zza = bArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.ads.zzatz
    public final long zza(zzaub zzaubVar) throws IOException {
        this.zzb = zzaubVar.zza;
        long j = zzaubVar.zzc;
        int i = (int) j;
        this.zzc = i;
        ?? r0 = zzaubVar.zzd;
        int length = r0 == -1 ? this.zza.length - j : r0;
        this.zzd = length;
        if (length <= 0 || i + length > this.zza.length) {
            int length2 = this.zza.length;
            StringBuilder sb = new StringBuilder(77);
            sb.append("Unsatisfiable range: [");
            sb.append(i);
            sb.append(", ");
            sb.append((long) r0);
            sb.append("], length: ");
            sb.append(length2);
            throw new IOException(sb.toString());
        }
        return length;
    }

    @Override // com.google.android.gms.internal.ads.zzatz
    public final int zzb(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.zzd;
        if (i3 == 0) {
            return -1;
        }
        int min = Math.min(i2, i3);
        System.arraycopy(this.zza, this.zzc, bArr, i, min);
        this.zzc += min;
        this.zzd -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzatz
    public final Uri zzc() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzatz
    public final void zzd() throws IOException {
        this.zzb = null;
    }
}
