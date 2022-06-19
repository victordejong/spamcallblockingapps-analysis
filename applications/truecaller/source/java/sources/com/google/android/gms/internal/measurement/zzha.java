package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p1727n3.p1788g.C26174a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzha.class */
public final class zzha implements zzhe {
    private final ContentResolver zzc;
    private final Uri zzd;
    private final ContentObserver zze;
    private volatile Map zzg;
    private static final Map zzb = new C26174a();
    public static final String[] zza = {AnalyticsConstants.KEY, "value"};
    private final Object zzf = new Object();
    private final List zzh = new ArrayList();

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
                Map map = zzb;
                zzha zzhaVar2 = (zzha) map.get(uri);
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

    public static void zze() {
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

    @Override // com.google.android.gms.internal.measurement.zzhe
    public final /* bridge */ /* synthetic */ Object zzb(String str) {
        return (String) zzc().get(str);
    }

    public final Map zzc() {
        Map map = this.zzg;
        Map map2 = map;
        if (map == null) {
            synchronized (this.zzf) {
                Map map3 = this.zzg;
                map2 = map3;
                if (map3 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        map2 = (Map) zzhc.zza(new zzhd() { // from class: com.google.android.gms.internal.measurement.zzgy
                            @Override // com.google.android.gms.internal.measurement.zzhd
                            public final Object zza() {
                                return zzha.this.zzd();
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

    public final /* synthetic */ Map zzd() {
        Cursor query = this.zzc.query(this.zzd, zza, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map c26174a = count <= 256 ? new C26174a(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                c26174a.put(query.getString(0), query.getString(1));
            }
            query.close();
            return c26174a;
        } finally {
            query.close();
        }
    }

    public final void zzf() {
        synchronized (this.zzf) {
            this.zzg = null;
            zzhu.zzd();
        }
        synchronized (this) {
            for (zzhb zzhbVar : this.zzh) {
                zzhbVar.zza();
            }
        }
    }
}
