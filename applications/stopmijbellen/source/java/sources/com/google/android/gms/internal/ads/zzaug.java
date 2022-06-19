package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.recyclerview.widget.C0608b;
import java.io.EOFException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaug.class */
final class zzaug {
    private final zzarj[] zza;
    private final zzark zzb;
    private zzarj zzc;

    public zzaug(zzarj[] zzarjVarArr, zzark zzarkVar) {
        this.zza = zzarjVarArr;
        this.zzb = zzarkVar;
    }

    public final void zza() {
        if (this.zzc != null) {
            this.zzc = null;
        }
    }

    public final zzarj zzb(zzari zzariVar, Uri uri) throws IOException, InterruptedException {
        zzarj zzarjVar = this.zzc;
        if (zzarjVar != null) {
            return zzarjVar;
        }
        zzarj[] zzarjVarArr = this.zza;
        int length = zzarjVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            zzarj zzarjVar2 = zzarjVarArr[i];
            try {
            } catch (EOFException e) {
            } catch (Throwable th) {
                zzariVar.zze();
                throw th;
            }
            if (zzarjVar2.zzg(zzariVar)) {
                this.zzc = zzarjVar2;
                zzariVar.zze();
                break;
            }
            continue;
            zzariVar.zze();
            i++;
        }
        zzarj zzarjVar3 = this.zzc;
        if (zzarjVar3 != null) {
            zzarjVar3.zzd(this.zzb);
            return this.zzc;
        }
        String zzk = zzaxb.zzk(this.zza);
        throw new zzave(C0608b.m7625j(new StringBuilder(zzk.length() + 58), "None of the available extractors (", zzk, ") could read the stream."), uri);
    }
}
