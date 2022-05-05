package com.google.android.gms.common;

import android.support.annotation.NonNull;
import android.util.Log;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.util.concurrent.Callable;
import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
@CheckReturnValue
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzm.class */
public class zzm {
    private static final zzm zzab = new zzm(true, null, null);
    private final Throwable cause;
    final boolean zzac;
    private final String zzad;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzm(boolean z, @Nullable String str, @Nullable Throwable th) {
        this.zzac = z;
        this.zzad = str;
        this.cause = th;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzm zza(@NonNull String str, @NonNull Throwable th) {
        return new zzm(false, str, th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzm zza(Callable<String> callable) {
        return new zzo(callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zza(String str, zze zzeVar, boolean z, boolean z2) {
        return String.format("%s: pkg=%s, sha1=%s, atk=%s, ver=%s", z2 ? "debug cert rejected" : "not whitelisted", str, Hex.zza(AndroidUtilsLight.zzi("SHA-1").digest(zzeVar.getBytes())), Boolean.valueOf(z), "12451009.false");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzm zzb(@NonNull String str) {
        return new zzm(false, str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzm zze() {
        return zzab;
    }

    @Nullable
    String getErrorMessage() {
        return this.zzad;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzf() {
        if (!this.zzac && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (this.cause != null) {
                Log.d("GoogleCertificatesRslt", getErrorMessage(), this.cause);
            } else {
                Log.d("GoogleCertificatesRslt", getErrorMessage());
            }
        }
    }
}
