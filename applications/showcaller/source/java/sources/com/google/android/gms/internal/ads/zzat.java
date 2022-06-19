package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzat.class */
public class zzat extends zzak {
    public final C6472fb zzb;

    public zzat(C6472fb c6472fb, int i, int i2) {
        super(m8095a(2008, 1));
        this.zzb = c6472fb;
    }

    public zzat(IOException iOException, C6472fb c6472fb, int i, int i2) {
        super(iOException, m8095a(i, i2));
        this.zzb = c6472fb;
    }

    public zzat(String str, C6472fb c6472fb, int i, int i2) {
        super(str, m8095a(2001, 1));
        this.zzb = c6472fb;
    }

    @Deprecated
    public zzat(String str, IOException iOException, C6472fb c6472fb, int i) {
        this(str, iOException, c6472fb, 2000, 1);
    }

    public zzat(String str, IOException iOException, C6472fb c6472fb, int i, int i2) {
        super(str, iOException, m8095a(i, 1));
        this.zzb = c6472fb;
    }

    /* renamed from: a */
    private static int m8095a(int i, int i2) {
        int i3 = i;
        if (i == 2000) {
            i3 = i2 != 1 ? 2000 : 2001;
        }
        return i3;
    }

    public static zzat zza(IOException iOException, C6472fb c6472fb, int i) {
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
                if (fu2.m15053a(message).matches("cleartext.*not permitted.*")) {
                    i2 = 2007;
                }
            }
        }
        return i2 == 2007 ? new zzas(iOException, c6472fb) : new zzat(iOException, c6472fb, i2, i);
    }
}
