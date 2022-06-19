package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzen.class */
public final class zzen implements zzer {
    private final ContentResolver zzc;
    private final Uri zzd;
    private final ContentObserver zze;
    private volatile Map<String, String> zzg;
    private static final Map<Uri, zzen> zzb = new ArrayMap();
    public static final String[] zza = {SDKConstants.PARAM_KEY, "value"};
    private final Object zzf = new Object();
    private final List<zzeo> zzh = new ArrayList();

    private zzen(ContentResolver contentResolver, Uri uri) {
        zzem zzemVar = new zzem(this, null);
        this.zze = zzemVar;
        Objects.requireNonNull(contentResolver);
        Objects.requireNonNull(uri);
        this.zzc = contentResolver;
        this.zzd = uri;
        contentResolver.registerContentObserver(uri, false, zzemVar);
    }

    public static zzen zza(ContentResolver contentResolver, Uri uri) {
        zzen zzenVar;
        synchronized (zzen.class) {
            try {
                Map<Uri, zzen> map = zzb;
                zzen zzenVar2 = map.get(uri);
                zzenVar = zzenVar2;
                if (zzenVar2 == null) {
                    try {
                        zzenVar = new zzen(contentResolver, uri);
                        try {
                            map.put(uri, zzenVar);
                        } catch (SecurityException e) {
                        }
                    } catch (SecurityException e2) {
                        zzenVar = zzenVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzenVar;
    }

    public static void zzd() {
        synchronized (zzen.class) {
            try {
                for (zzen zzenVar : zzb.values()) {
                    zzenVar.zzc.unregisterContentObserver(zzenVar.zze);
                }
                zzb.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Map<String, String> zzb() {
        Map<String, String> map = this.zzg;
        Map<String, String> map2 = map;
        if (map == null) {
            synchronized (this.zzf) {
                Map<String, String> map3 = this.zzg;
                map2 = map3;
                if (map3 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        map2 = (Map) zzep.zza(new zzeq(this) { // from class: com.google.android.gms.internal.measurement.zzel
                            private final zzen zza;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.zza = this;
                            }

                            @Override // com.google.android.gms.internal.measurement.zzeq
                            public final Object zza() {
                                return this.zza.zzf();
                            }
                        });
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (SQLiteException | IllegalStateException | SecurityException e) {
                        Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        map2 = null;
                    }
                    this.zzg = map2;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    public final void zzc() {
        synchronized (this.zzf) {
            this.zzg = null;
            zzfg.zzc();
        }
        synchronized (this) {
            for (zzeo zzeoVar : this.zzh) {
                zzeoVar.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzer
    public final /* bridge */ /* synthetic */ Object zze(String str) {
        return zzb().get(str);
    }

    public final /* synthetic */ Map zzf() {
        Cursor query = this.zzc.query(this.zzd, zza, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map arrayMap = count <= 256 ? new ArrayMap(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                arrayMap.put(query.getString(0), query.getString(1));
            }
            query.close();
            return arrayMap;
        } finally {
            query.close();
        }
    }
}
