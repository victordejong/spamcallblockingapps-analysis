package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzds.class */
public class zzds extends zzdj {
    public final zzdm zzb;

    public zzds(zzdm zzdmVar, int i, int i2) {
        super(zzb(AdError.REMOTE_ADS_SERVICE_ERROR, 1));
        this.zzb = zzdmVar;
    }

    public zzds(IOException iOException, zzdm zzdmVar, int i, int i2) {
        super(iOException, zzb(i, i2));
        this.zzb = zzdmVar;
    }

    public zzds(String str, zzdm zzdmVar, int i, int i2) {
        super(str, zzb(AdError.INTERNAL_ERROR_CODE, 1));
        this.zzb = zzdmVar;
    }

    @Deprecated
    public zzds(String str, IOException iOException, zzdm zzdmVar, int i) {
        this(str, iOException, zzdmVar, AdError.SERVER_ERROR_CODE, 1);
    }

    public zzds(String str, IOException iOException, zzdm zzdmVar, int i, int i2) {
        super(str, iOException, zzb(i, 1));
        this.zzb = zzdmVar;
    }

    public static zzds zza(IOException iOException, zzdm zzdmVar, int i) {
        int i2;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i2 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i2 = 1004;
        } else {
            i2 = 2001;
            if (message != null) {
                i2 = 2001;
                if (zzfpn.zza(message).matches("cleartext.*not permitted.*")) {
                    i2 = 2007;
                }
            }
        }
        return i2 == 2007 ? new zzdr(iOException, zzdmVar) : new zzds(iOException, zzdmVar, i2, i);
    }

    private static int zzb(int i, int i2) {
        int i3 = i;
        if (i == 2000) {
            i3 = i2 != 1 ? 2000 : 2001;
        }
        return i3;
    }
}
