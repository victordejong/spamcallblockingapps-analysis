package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import com.google.android.gms.common.util.VisibleForTesting;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazd.class */
final class zzazd {
    @VisibleForTesting
    public ByteArrayOutputStream zza = new ByteArrayOutputStream(4096);
    @VisibleForTesting
    public Base64OutputStream zzb = new Base64OutputStream(this.zza, 10);

    /* JADX WARN: Finally extract failed */
    public final String toString() {
        try {
            this.zzb.close();
        } catch (IOException e) {
            zzciz.zzh("HashManager: Unable to convert to Base64.", e);
        }
        try {
            try {
                this.zza.close();
                String byteArrayOutputStream = this.zza.toString();
                this.zza = null;
                this.zzb = null;
                return byteArrayOutputStream;
            } catch (IOException e2) {
                zzciz.zzh("HashManager: Unable to convert to Base64.", e2);
                this.zza = null;
                this.zzb = null;
                return "";
            }
        } catch (Throwable th) {
            this.zza = null;
            this.zzb = null;
            throw th;
        }
    }
}
