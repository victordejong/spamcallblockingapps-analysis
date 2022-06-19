package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzab.class */
public final class zzab {
    private static final ConcurrentHashMap<Uri, zzab> zzde = new ConcurrentHashMap<>();
    private static final String[] zzdl = {"key", "value"};
    private final Uri uri;
    private final ContentResolver zzdf;
    private volatile Map<String, String> zzdi;
    private final Object zzdh = new Object();
    private final Object zzdj = new Object();
    private final List<zzad> zzdk = new ArrayList();
    private final ContentObserver zzdg = new zzac(this, null);

    private zzab(ContentResolver contentResolver, Uri uri) {
        this.zzdf = contentResolver;
        this.uri = uri;
    }

    public static zzab zza(ContentResolver contentResolver, Uri uri) {
        zzab zzabVar = zzde.get(uri);
        zzab zzabVar2 = zzabVar;
        if (zzabVar == null) {
            zzabVar2 = new zzab(contentResolver, uri);
            zzab putIfAbsent = zzde.putIfAbsent(uri, zzabVar2);
            if (putIfAbsent == null) {
                zzabVar2.zzdf.registerContentObserver(zzabVar2.uri, false, zzabVar2.zzdg);
            } else {
                zzabVar2 = putIfAbsent;
            }
        }
        return zzabVar2;
    }

    private final Map<String, String> zzi() {
        try {
            HashMap hashMap = new HashMap();
            Cursor query = this.zzdf.query(this.uri, zzdl, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    hashMap.put(query.getString(0), query.getString(1));
                }
                query.close();
            }
            return hashMap;
        } catch (SQLiteException | SecurityException e) {
            Log.e("ConfigurationContentLoader", "PhenotypeFlag unable to load ContentProvider, using default values");
            return null;
        }
    }

    public final void zzj() {
        synchronized (this.zzdj) {
            for (zzad zzadVar : this.zzdk) {
                zzadVar.zzk();
            }
        }
    }

    public final Map<String, String> zzg() {
        Map<String, String> map;
        Map<String, String> zzi = zzae.zza("gms:phenotype:phenotype_flag:debug_disable_caching", false) ? zzi() : this.zzdi;
        Map<String, String> map2 = zzi;
        if (zzi == null) {
            synchronized (this.zzdh) {
                Map<String, String> map3 = this.zzdi;
                map = map3;
                if (map3 == null) {
                    map = zzi();
                    this.zzdi = map;
                }
            }
            map2 = map;
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    public final void zzh() {
        synchronized (this.zzdh) {
            this.zzdi = null;
        }
    }
}
