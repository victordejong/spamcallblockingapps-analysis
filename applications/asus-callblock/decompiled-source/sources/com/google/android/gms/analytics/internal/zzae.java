package com.google.android.gms.analytics.internal;

import android.util.Log;
import com.google.android.gms.analytics.Logger;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzae.class */
public class zzae {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Logger f3825a;

    static {
        setLogger(new g());
    }

    public static Logger getLogger() {
        return f3825a;
    }

    public static void setLogger(Logger logger) {
        f3825a = logger;
    }

    public static void v(String str) {
        zzaf zznZ = zzaf.zznZ();
        if (zznZ != null) {
            zznZ.zzbG(str);
        } else if (zzX(0)) {
            Log.v(zzy.zzXF.get(), str);
        }
        Logger logger = f3825a;
        if (logger != null) {
            logger.verbose(str);
        }
    }

    public static boolean zzX(int i) {
        boolean z = false;
        if (getLogger() != null) {
            z = false;
            if (getLogger().getLogLevel() <= i) {
                z = true;
            }
        }
        return z;
    }

    public static void zzaV(String str) {
        zzaf zznZ = zzaf.zznZ();
        if (zznZ != null) {
            zznZ.zzbI(str);
        } else if (zzX(1)) {
            Log.i(zzy.zzXF.get(), str);
        }
        Logger logger = f3825a;
        if (logger != null) {
            logger.info(str);
        }
    }

    public static void zzaW(String str) {
        zzaf zznZ = zzaf.zznZ();
        if (zznZ != null) {
            zznZ.zzbJ(str);
        } else if (zzX(2)) {
            Log.w(zzy.zzXF.get(), str);
        }
        Logger logger = f3825a;
        if (logger != null) {
            logger.warn(str);
        }
    }

    public static void zzf(String str, Object obj) {
        String str2;
        zzaf zznZ = zzaf.zznZ();
        if (zznZ != null) {
            zznZ.zze(str, obj);
        } else if (zzX(3)) {
            if (obj != null) {
                String valueOf = String.valueOf(obj);
                str2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(valueOf).length()).append(str).append(":").append(valueOf).toString();
            } else {
                str2 = str;
            }
            Log.e(zzy.zzXF.get(), str2);
        }
        Logger logger = f3825a;
        if (logger != null) {
            logger.error(str);
        }
    }
}
