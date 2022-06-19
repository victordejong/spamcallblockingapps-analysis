package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzha.class */
public final class zzha implements zzhe {
    private final ContentResolver zzc;
    private final Uri zzd;
    private final ContentObserver zze;
    private volatile Map<String, String> zzg;
    private static final Map<Uri, zzha> zzb = new C4251a();
    public static final String[] zza = {"key", AppMeasurementSdk.ConditionalUserProperty.VALUE};
    private final Object zzf = new Object();
    private final List<zzhb> zzh = new ArrayList();

    private zzha(ContentResolver contentResolver, Uri uri) {
        zzgz zzgzVar = new zzgz(this, null);
        this.zze = zzgzVar;
        Objects.requireNonNull(contentResolver);
        Objects.requireNonNull(uri);
        this.zzc = contentResolver;
        this.zzd = uri;
        contentResolver.registerContentObserver(uri, false, zzgzVar);
    }

    public static zzha zza(ContentResolver contentResolver, Uri uri) {
        zzha zzhaVar;
        synchronized (zzha.class) {
            try {
                Map<Uri, zzha> map = zzb;
                zzha zzhaVar2 = map.get(uri);
                zzhaVar = zzhaVar2;
                if (zzhaVar2 == null) {
                    try {
                        zzhaVar = new zzha(contentResolver, uri);
                        try {
                            map.put(uri, zzhaVar);
                        } catch (SecurityException e) {
                        }
                    } catch (SecurityException e2) {
                        zzhaVar = zzhaVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzhaVar;
    }

    public static void zzd() {
        synchronized (zzha.class) {
            try {
                for (zzha zzhaVar : zzb.values()) {
                    zzhaVar.zzc.unregisterContentObserver(zzhaVar.zze);
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
                        map2 = (Map) zzhc.zza(new zzhd(this) { // from class: com.google.android.gms.internal.measurement.zzgy
                            private final zzha zza;

                            {
                                this.zza = this;
                            }

                            @Override // com.google.android.gms.internal.measurement.zzhd
                            public final Object zza() {
                                return this.zza.zzf();
                            }
                        });
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    } catch (SQLiteException | IllegalStateException | SecurityException e) {
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
            zzht.zzc();
        }
        synchronized (this) {
            for (zzhb zzhbVar : this.zzh) {
                zzhbVar.zza();
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhe
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
            Map c4251a = count <= 256 ? new C4251a(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                c4251a.put(query.getString(0), query.getString(1));
            }
            query.close();
            return c4251a;
        } finally {
            query.close();
        }
    }
}
