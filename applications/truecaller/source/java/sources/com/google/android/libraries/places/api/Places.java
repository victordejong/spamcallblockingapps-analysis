package com.google.android.libraries.places.api;

import android.content.Context;
import com.google.android.libraries.places.api.net.PlacesClient;
import com.google.android.libraries.places.internal.zzcv;
import com.google.android.libraries.places.internal.zzdb;
import com.google.android.libraries.places.internal.zzdj;
import com.google.android.libraries.places.internal.zzdk;
import com.google.android.libraries.places.internal.zzft;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/api/Places.class */
public final class Places {
    private static final zzdb zza = new zzdb();

    private Places() {
    }

    public static PlacesClient createClient(Context context) {
        PlacesClient zza2;
        synchronized (Places.class) {
            try {
                try {
                    zzft.zza(context, "Context must not be null.");
                    zza2 = zza(context, zzdj.zza(context).zzb());
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Error | RuntimeException e) {
                zzdk.zza(e);
                throw e;
            }
        }
        return zza2;
    }

    public static void deinitialize() {
        synchronized (Places.class) {
            try {
                zza.zze();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void initialize(Context context, String str) {
        try {
            zza(context, str, null, false);
        } catch (Error | RuntimeException e) {
            zzdk.zza(e);
            throw e;
        }
    }

    public static void initialize(Context context, String str, Locale locale) {
        synchronized (Places.class) {
            try {
                try {
                    zza(context, str, locale, false);
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Error | RuntimeException e) {
                zzdk.zza(e);
                throw e;
            }
        }
    }

    public static boolean isInitialized() {
        boolean zzd;
        synchronized (Places.class) {
            try {
                try {
                    zzd = zza.zzd();
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Error | RuntimeException e) {
                zzdk.zza(e);
                throw e;
            }
        }
        return zzd;
    }

    public static PlacesClient zza(Context context, zzdj zzdjVar) {
        PlacesClient zzb;
        synchronized (Places.class) {
            try {
                try {
                    zzft.zza(context, "Context must not be null.");
                    zzft.zza(zzdjVar, "ClientProfile must not be null.");
                    zzft.zzb(isInitialized(), "Places must be initialized first.");
                    zzb = zzcv.zza().zza(context).zza(zza).zza(zzdjVar).zza().zzb();
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Error | RuntimeException e) {
                zzdk.zza(e);
                throw e;
            }
        }
        return zzb;
    }

    private static void zza(Context context, String str, Locale locale, boolean z) {
        synchronized (Places.class) {
            try {
                try {
                    zzft.zza(context, "Application context must not be null.");
                    zzft.zza(str, "API Key must not be null.");
                    zzft.zza(!str.isEmpty(), "API Key must not be empty.");
                    zzdk.zza(context.getApplicationContext(), false);
                    zza.zza(str, locale, false);
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Error | RuntimeException e) {
                zzdk.zza(e);
                throw e;
            }
        }
    }
}
