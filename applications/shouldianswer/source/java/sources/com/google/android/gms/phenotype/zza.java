package com.google.android.gms.phenotype;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/phenotype/zza.class */
public final class zza {
    private static final ConcurrentHashMap<Uri, zza> zzg = new ConcurrentHashMap<>();
    private static final String[] zzl = {"key", "value"};
    private final Uri uri;
    private final ContentResolver zzh;
    private volatile Map<String, String> zzk;
    private final Object zzj = new Object();
    private final ContentObserver zzi = new zzb(this, null);

    private zza(ContentResolver contentResolver, Uri uri) {
        this.zzh = contentResolver;
        this.uri = uri;
    }

    public static zza zza(ContentResolver contentResolver, Uri uri) {
        zza zzaVar = zzg.get(uri);
        zza zzaVar2 = zzaVar;
        if (zzaVar == null) {
            zzaVar2 = new zza(contentResolver, uri);
            zza putIfAbsent = zzg.putIfAbsent(uri, zzaVar2);
            if (putIfAbsent == null) {
                zzaVar2.zzh.registerContentObserver(zzaVar2.uri, false, zzaVar2.zzi);
            } else {
                zzaVar2 = putIfAbsent;
            }
        }
        return zzaVar2;
    }

    private final Map<String, String> zzc() {
        HashMap hashMap = new HashMap();
        Cursor query = this.zzh.query(this.uri, zzl, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    hashMap.put(query.getString(0), query.getString(1));
                } finally {
                    query.close();
                }
            }
        }
        return hashMap;
    }

    public final Map<String, String> zza() {
        Map<String, String> map;
        Map<String, String> zzc = PhenotypeFlag.zza("gms:phenotype:phenotype_flag:debug_disable_caching", false) ? zzc() : this.zzk;
        Map<String, String> map2 = zzc;
        if (zzc == null) {
            synchronized (this.zzj) {
                Map<String, String> map3 = this.zzk;
                map = map3;
                if (map3 == null) {
                    map = zzc();
                    this.zzk = map;
                }
            }
            map2 = map;
        }
        return map2;
    }

    public final void zzb() {
        synchronized (this.zzj) {
            this.zzk = null;
        }
    }
}
