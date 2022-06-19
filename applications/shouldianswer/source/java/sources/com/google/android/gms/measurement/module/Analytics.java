package com.google.android.gms.measurement.module;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzv;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzgv;
import com.google.android.gms.measurement.internal.zzgy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/module/Analytics.class */
public class Analytics {
    public static final String CRASH_ORIGIN = "crash";
    public static final String FCM_ORIGIN = "fcm";
    public static final String FIAM_ORIGIN = "fiam";
    private static volatile Analytics zza;
    private final zzga zzb;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/module/Analytics$Event.class */
    public static final class Event extends zzgv {
        public static final String AD_REWARD = "_ar";
        public static final String APP_EXCEPTION = "_ae";

        private Event() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/module/Analytics$Param.class */
    public static final class Param extends zzgy {
        public static final String FATAL = "fatal";
        public static final String TIMESTAMP = "timestamp";
        public static final String TYPE = "type";

        private Param() {
        }
    }

    private Analytics(zzga zzgaVar) {
        Preconditions.checkNotNull(zzgaVar);
        this.zzb = zzgaVar;
    }

    public static Analytics getInstance(Context context) {
        if (zza == null) {
            synchronized (Analytics.class) {
                try {
                    if (zza == null) {
                        zza = new Analytics(zzga.zza(context, (zzv) null));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return zza;
    }
}
