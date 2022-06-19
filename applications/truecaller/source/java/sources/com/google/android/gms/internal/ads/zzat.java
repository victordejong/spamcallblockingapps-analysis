package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzat.class */
public class zzat extends zzak {
    public final zzan zzb;

    public zzat(zzan zzanVar, int i, int i2) {
        super(zzb(AdError.REMOTE_ADS_SERVICE_ERROR, 1));
        this.zzb = zzanVar;
    }

    public zzat(IOException iOException, zzan zzanVar, int i, int i2) {
        super(iOException, zzb(i, i2));
        this.zzb = zzanVar;
    }

    public zzat(String str, zzan zzanVar, int i, int i2) {
        super(str, zzb(AdError.INTERNAL_ERROR_CODE, 1));
        this.zzb = zzanVar;
    }

    @Deprecated
    public zzat(String str, IOException iOException, zzan zzanVar, int i) {
        this(str, iOException, zzanVar, 2000, 1);
    }

    public zzat(String str, IOException iOException, zzan zzanVar, int i, int i2) {
        super(str, iOException, zzb(i, 1));
        this.zzb = zzanVar;
    }

    public static zzat zza(IOException iOException, zzan zzanVar, int i) {
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
                if (zzflf.zza(message).matches("cleartext.*not permitted.*")) {
                    i2 = 2007;
                }
            }
        }
        return i2 == 2007 ? new zzas(iOException, zzanVar) : new zzat(iOException, zzanVar, i2, i);
    }

    private static int zzb(int i, int i2) {
        int i3 = i;
        if (i == 2000) {
            i3 = i2 != 1 ? 2000 : 2001;
        }
        return i3;
    }
}
