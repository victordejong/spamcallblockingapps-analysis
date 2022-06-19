package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.p014c.C0374a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbx.class */
public final class zzbx implements zzcb {
    private static final Map<Uri, zzbx> zza = new C0374a();
    private static final String[] zzh = {"key", "value"};
    private final ContentResolver zzb;
    private final Uri zzc;
    private volatile Map<String, String> zzf;
    private final ContentObserver zzd = new zzbz(this, null);
    private final Object zze = new Object();
    private final List<zzcc> zzg = new ArrayList();

    private zzbx(ContentResolver contentResolver, Uri uri) {
        this.zzb = contentResolver;
        this.zzc = uri;
        contentResolver.registerContentObserver(uri, false, this.zzd);
    }

    public static zzbx zza(ContentResolver contentResolver, Uri uri) {
        zzbx zzbxVar;
        synchronized (zzbx.class) {
            try {
                zzbx zzbxVar2 = zza.get(uri);
                zzbxVar = zzbxVar2;
                if (zzbxVar2 == null) {
                    try {
                        zzbxVar = new zzbx(contentResolver, uri);
                        try {
                            zza.put(uri, zzbxVar);
                        } catch (SecurityException e) {
                        }
                    } catch (SecurityException e2) {
                        zzbxVar = zzbxVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbxVar;
    }

    public static void zzc() {
        synchronized (zzbx.class) {
            try {
                for (zzbx zzbxVar : zza.values()) {
                    zzbxVar.zzb.unregisterContentObserver(zzbxVar.zzd);
                }
                zza.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    private final Map<String, String> zze() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                Map<String, String> map = (Map) zzce.zza(new zzcd(this) { // from class: com.google.android.gms.internal.measurement.zzca
                    private final zzbx zza;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zza = this;
                    }

                    @Override // com.google.android.gms.internal.measurement.zzcd
                    public final Object zza() {
                        return this.zza.zzd();
                    }
                });
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return map;
            } catch (SQLiteException | IllegalStateException | SecurityException e) {
                Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return null;
            }
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcb
    public final /* synthetic */ Object zza(String str) {
        return zza().get(str);
    }

    public final Map<String, String> zza() {
        Map<String, String> map = this.zzf;
        Map<String, String> map2 = map;
        if (map == null) {
            synchronized (this.zze) {
                Map<String, String> map3 = this.zzf;
                map2 = map3;
                if (map3 == null) {
                    map2 = zze();
                    this.zzf = map2;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    public final void zzb() {
        synchronized (this.zze) {
            this.zzf = null;
            zzcl.zza();
        }
        synchronized (this) {
            for (zzcc zzccVar : this.zzg) {
                zzccVar.zza();
            }
        }
    }

    public final /* synthetic */ Map zzd() {
        Cursor query = this.zzb.query(this.zzc, zzh, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map c0374a = count <= 256 ? new C0374a(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                c0374a.put(query.getString(0), query.getString(1));
            }
            query.close();
            return c0374a;
        } finally {
            query.close();
        }
    }
}
