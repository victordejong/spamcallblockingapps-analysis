package com.google.android.gms.common;

import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.security.MessageDigest;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
@CheckReturnValue
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzw.class */
public class zzw {
    private static final zzw zzd = new zzw(true, null, null);
    final boolean zza;
    @Nullable
    final String zzb;
    @Nullable
    final Throwable zzc;

    public zzw(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.zza = z;
        this.zzb = str;
        this.zzc = th;
    }

    public static zzw zzb() {
        return zzd;
    }

    public static zzw zzc(Callable<String> callable) {
        return new zzv(callable, null);
    }

    public static zzw zzd(String str) {
        return new zzw(false, str, null);
    }

    public static zzw zze(String str, Throwable th) {
        return new zzw(false, str, th);
    }

    public static String zzg(String str, zzi zziVar, boolean z, boolean z2) {
        String str2 = true != z2 ? "not allowed" : "debug cert rejected";
        MessageDigest zza = AndroidUtilsLight.zza("SHA-1");
        Preconditions.checkNotNull(zza);
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", str2, str, Hex.bytesToStringLowercase(zza.digest(zziVar.zzc())), Boolean.valueOf(z), "12451000.false");
    }

    @Nullable
    String zza() {
        return this.zzb;
    }

    public final void zzf() {
        if (this.zza || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.zzc != null) {
            Log.d("GoogleCertificatesRslt", zza(), this.zzc);
        } else {
            Log.d("GoogleCertificatesRslt", zza());
        }
    }
}
