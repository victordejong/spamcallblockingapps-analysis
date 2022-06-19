package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzmy.class */
final class zzmy {
    private final zzkc zzark;
    private final zzka[] zzbes;
    private zzka zzbet;

    public zzmy(zzka[] zzkaVarArr, zzkc zzkcVar) {
        this.zzbes = zzkaVarArr;
        this.zzark = zzkcVar;
    }

    public final void release() {
        zzka zzkaVar = this.zzbet;
        if (zzkaVar != null) {
            zzkaVar.release();
            this.zzbet = null;
        }
    }

    public final zzka zza(zzjz zzjzVar, Uri uri) throws IOException, InterruptedException {
        zzka zzkaVar = this.zzbet;
        if (zzkaVar != null) {
            return zzkaVar;
        }
        zzka[] zzkaVarArr = this.zzbes;
        int length = zzkaVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            zzka zzkaVar2 = zzkaVarArr[i];
            try {
            } catch (EOFException e) {
            } finally {
                zzjzVar.zzgq();
            }
            if (zzkaVar2.zza(zzjzVar)) {
                this.zzbet = zzkaVar2;
                break;
            }
            i++;
        }
        zzka zzkaVar3 = this.zzbet;
        if (zzkaVar3 != null) {
            zzkaVar3.zza(this.zzark);
            return this.zzbet;
        }
        String zza = zzpt.zza(this.zzbes);
        StringBuilder sb = new StringBuilder(String.valueOf(zza).length() + 58);
        sb.append("None of the available extractors (");
        sb.append(zza);
        sb.append(") could read the stream.");
        throw new zznt(sb.toString(), uri);
    }
}
