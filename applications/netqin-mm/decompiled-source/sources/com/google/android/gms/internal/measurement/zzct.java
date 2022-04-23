package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzct;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p012b.p035f.C0780a;
import p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4597u0;
import p131c.p161d.p170b.p224d.p252g.p258f.C4591t0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzct.class */
public final class zzct implements AbstractC4597u0 {

    /* renamed from: g */
    public static final Map<Uri, zzct> f29444g = new C0780a();

    /* renamed from: h */
    public static final String[] f29445h = {"key", "value"};

    /* renamed from: a */
    public final ContentResolver f29446a;

    /* renamed from: b */
    public final Uri f29447b;

    /* renamed from: e */
    public volatile Map<String, String> f29450e;

    /* renamed from: c */
    public final ContentObserver f29448c = new C4591t0(this, null);

    /* renamed from: d */
    public final Object f29449d = new Object();

    /* renamed from: f */
    public final List<zzcu> f29451f = new ArrayList();

    public zzct(ContentResolver contentResolver, Uri uri) {
        zzeb.m9815a(contentResolver);
        zzeb.m9815a(uri);
        this.f29446a = contentResolver;
        this.f29447b = uri;
        contentResolver.registerContentObserver(uri, false, this.f29448c);
    }

    /* renamed from: a */
    public static zzct m9859a(ContentResolver contentResolver, Uri uri) {
        zzct zzctVar;
        synchronized (zzct.class) {
            try {
                zzct zzctVar2 = f29444g.get(uri);
                zzctVar = zzctVar2;
                if (zzctVar2 == null) {
                    try {
                        zzctVar = new zzct(contentResolver, uri);
                        try {
                            f29444g.put(uri, zzctVar);
                        } catch (SecurityException e) {
                        }
                    } catch (SecurityException e2) {
                        zzctVar = zzctVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzctVar;
    }

    /* renamed from: e */
    public static void m9855e() {
        synchronized (zzct.class) {
            try {
                for (zzct zzctVar : f29444g.values()) {
                    zzctVar.f29446a.unregisterContentObserver(zzctVar.f29448c);
                }
                f29444g.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final Map<String, String> m9860a() {
        Map<String, String> map = this.f29450e;
        Map<String, String> map2 = map;
        if (map == null) {
            synchronized (this.f29449d) {
                Map<String, String> map3 = this.f29450e;
                map2 = map3;
                if (map3 == null) {
                    map2 = m9856d();
                    this.f29450e = map2;
                }
            }
        }
        return map2 != null ? map2 : Collections.emptyMap();
    }

    /* renamed from: b */
    public final void m9858b() {
        synchronized (this.f29449d) {
            try {
                this.f29450e = null;
                zzdh.m9832c();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this) {
            for (zzcu zzcuVar : this.f29451f) {
                zzcuVar.zza();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4597u0
    /* renamed from: c */
    public final /* synthetic */ Object mo9822c(String str) {
        return m9860a().get(str);
    }

    /* renamed from: c */
    public final /* synthetic */ Map m9857c() {
        Cursor query = this.f29446a.query(this.f29447b, f29445h, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                Map emptyMap = Collections.emptyMap();
                query.close();
                return emptyMap;
            }
            Map aVar = count <= 256 ? new C0780a(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                aVar.put(query.getString(0), query.getString(1));
            }
            query.close();
            return aVar;
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public final Map<String, String> m9856d() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            try {
                Map<String, String> map = (Map) zzcw.m9854a(new zzcz(this) { // from class: c.d.b.d.g.f.s0

                    /* renamed from: a */
                    public final zzct f16870a;

                    {
                        this.f16870a = this;
                    }

                    @Override // com.google.android.gms.internal.measurement.zzcz
                    public final Object zza() {
                        return this.f16870a.m9857c();
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
}
