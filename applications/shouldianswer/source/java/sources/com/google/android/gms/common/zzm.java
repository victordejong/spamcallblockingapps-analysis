package com.google.android.gms.common;

import android.util.Log;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
@CheckReturnValue
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzm.class */
public class zzm {
    private static final zzm zzac = new zzm(true, null, null);
    private final Throwable cause;
    final boolean zzad;
    private final String zzae;

    public zzm(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.zzad = z;
        this.zzae = str;
        this.cause = th;
    }

    public static zzm zza(String str, Throwable th) {
        return new zzm(false, str, th);
    }

    public static zzm zza(Callable<String> callable) {
        return new zzo(callable);
    }

    public static zzm zzb(String str) {
        return new zzm(false, str, null);
    }

    public static String zzc(String str, zze zzeVar, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", z2 ? "debug cert rejected" : "not whitelisted", str, Hex.bytesToStringLowercase(AndroidUtilsLight.zzj("SHA-1").digest(zzeVar.getBytes())), Boolean.valueOf(z), "12451009.false");
    }

    public static zzm zze() {
        return zzac;
    }

    @Nullable
    String getErrorMessage() {
        return this.zzae;
    }

    public final void zzf() {
        if (this.zzad || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.cause != null) {
            Log.d("GoogleCertificatesRslt", getErrorMessage(), this.cause);
        } else {
            Log.d("GoogleCertificatesRslt", getErrorMessage());
        }
    }
}
