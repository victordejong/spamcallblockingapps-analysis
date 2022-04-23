package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.n;
import com.google.android.gms.internal.ads.drf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vq.class */
public final class vq implements vy {

    /* renamed from: c  reason: collision with root package name */
    private static List<Future<Void>> f28446c = Collections.synchronizedList(new ArrayList());

    /* renamed from: a  reason: collision with root package name */
    final drf.b.C0469b f28447a;

    /* renamed from: d  reason: collision with root package name */
    private final LinkedHashMap<String, drf.b.h.C0475b> f28449d;
    private final Context g;
    private final wa h;
    private boolean i;
    private final zzaxn j;
    private final List<String> e = new ArrayList();
    private final List<String> f = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    final Object f28448b = new Object();
    private HashSet<String> k = new HashSet<>();
    private boolean l = false;
    private boolean m = false;
    private boolean n = false;

    public vq(Context context, zzbar zzbarVar, zzaxn zzaxnVar, String str, wa waVar) {
        o.a(zzaxnVar, "SafeBrowsing config is not present.");
        this.g = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f28449d = new LinkedHashMap<>();
        this.h = waVar;
        this.j = zzaxnVar;
        for (String str2 : zzaxnVar.zzeca) {
            this.k.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.k.remove("cookie".toLowerCase(Locale.ENGLISH));
        drf.b.C0469b a2 = drf.b.a();
        a2.a(drf.b.g.OCTAGON_AD);
        a2.a(str);
        a2.b(str);
        drf.b.a.C0468a a3 = drf.b.a.a();
        if (this.j.zzebw != null) {
            a3.a(this.j.zzebw);
        }
        a2.a(a3.f());
        drf.b.i.a a4 = drf.b.i.a().a(c.a(this.g).a());
        if (zzbarVar.zzbrz != null) {
            a4.a(zzbarVar.zzbrz);
        }
        com.google.android.gms.common.c.b();
        long c2 = com.google.android.gms.common.c.c(this.g);
        if (c2 > 0) {
            a4.a(c2);
        }
        a2.a(a4.f());
        this.f28447a = a2;
    }

    private final drf.b.h.C0475b b(String str) {
        drf.b.h.C0475b bVar;
        synchronized (this.f28448b) {
            bVar = this.f28449d.get(str);
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ Void e() {
        return null;
    }

    private final dbt<Void> h() {
        dbt<Void> a2;
        if (!((this.i && this.j.zzecc) || (this.n && this.j.zzecb) || (!this.i && this.j.zzebz))) {
            return dbh.a((Object) null);
        }
        synchronized (this.f28448b) {
            for (drf.b.h.C0475b bVar : this.f28449d.values()) {
                this.f28447a.a(bVar.f());
            }
            this.f28447a.a(this.e);
            this.f28447a.b(this.f);
            if (vz.a()) {
                String a3 = this.f28447a.a();
                String h = this.f28447a.h();
                StringBuilder sb = new StringBuilder(String.valueOf(a3).length() + 53 + String.valueOf(h).length());
                sb.append("Sending SB report\n  url: ");
                sb.append(a3);
                sb.append("\n  clickUrl: ");
                sb.append(h);
                sb.append("\n  resources: \n");
                StringBuilder sb2 = new StringBuilder(sb.toString());
                for (drf.b.h hVar : this.f28447a.g()) {
                    sb2.append("    [");
                    sb2.append(hVar.zzjdo.size());
                    sb2.append("] ");
                    sb2.append(hVar.zzjaw);
                }
                vz.a(sb2.toString());
            }
            dbt<String> zza = new zzay(this.g).zza(1, this.j.zzebx, null, this.f28447a.f().g());
            if (vz.a()) {
                zza.addListener(vr.f28450a, zd.f28573a);
            }
            a2 = daj.a(zza, vu.f28453a, zd.f);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ dbt a(Map map) throws Exception {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.f28448b) {
                            int length = optJSONArray.length();
                            drf.b.h.C0475b b2 = b(str);
                            if (b2 == null) {
                                String valueOf = String.valueOf(str);
                                vz.a(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                boolean z = false;
                                for (int i = 0; i < length; i++) {
                                    b2.b(optJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                boolean z2 = this.i;
                                if (length > 0) {
                                    z = true;
                                }
                                this.i = z | z2;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (cv.f26451a.a().booleanValue()) {
                    zzd.zzb("Failed to get SafeBrowsing metadata", e);
                }
                return dbh.a((Throwable) new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.i) {
            synchronized (this.f28448b) {
                this.f28447a.a(drf.b.g.OCTAGON_AD_SB_MATCH);
            }
        }
        return h();
    }

    @Override // com.google.android.gms.internal.ads.vy
    public final zzaxn a() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.vy
    public final void a(View view) {
        if (this.j.zzeby && !this.m) {
            zzr.zzkv();
            final Bitmap zzn = zzj.zzn(view);
            if (zzn == null) {
                vz.a("Failed to capture the webview bitmap.");
                return;
            }
            this.m = true;
            zzj.zzc(new Runnable(this, zzn) { // from class: com.google.android.gms.internal.ads.vp

                /* renamed from: a  reason: collision with root package name */
                private final vq f28444a;

                /* renamed from: b  reason: collision with root package name */
                private final Bitmap f28445b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28444a = this;
                    this.f28445b = zzn;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    vq vqVar = this.f28444a;
                    Bitmap bitmap = this.f28445b;
                    dmf h = dlw.h();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 0, h);
                    synchronized (vqVar.f28448b) {
                        vqVar.f28447a.a(drf.b.f.a().a(h.a()).a("image/png").a(drf.b.f.a.TYPE_CREATIVE).f());
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.vy
    public final void a(String str) {
        synchronized (this.f28448b) {
            if (str == null) {
                this.f28447a.i();
            } else {
                this.f28447a.c(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.vy
    public final void a(String str, Map<String, String> map, int i) {
        synchronized (this.f28448b) {
            if (i == 3) {
                this.n = true;
            }
            if (this.f28449d.containsKey(str)) {
                if (i == 3) {
                    this.f28449d.get(str).a(drf.b.h.a.zzij(i));
                }
                return;
            }
            drf.b.h.C0475b a2 = drf.b.h.a();
            drf.b.h.a zzij = drf.b.h.a.zzij(i);
            if (zzij != null) {
                a2.a(zzij);
            }
            a2.a(this.f28449d.size());
            a2.a(str);
            drf.b.d.C0471b a3 = drf.b.d.a();
            if (this.k.size() > 0 && map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.k.contains(key.toLowerCase(Locale.ENGLISH))) {
                        a3.a(drf.b.c.a().a(dlw.a(key)).b(dlw.a(value)).f());
                    }
                }
            }
            a2.a(a3.f());
            this.f28449d.put(str, a2);
        }
    }

    @Override // com.google.android.gms.internal.ads.vy
    public final boolean b() {
        return n.e() && this.j.zzeby && !this.m;
    }

    @Override // com.google.android.gms.internal.ads.vy
    public final void c() {
        this.l = true;
    }

    @Override // com.google.android.gms.internal.ads.vy
    public final void d() {
        synchronized (this.f28448b) {
            wa waVar = this.h;
            this.f28449d.keySet();
            dbt a2 = daj.a(waVar.a(), new daq(this) { // from class: com.google.android.gms.internal.ads.vs

                /* renamed from: a  reason: collision with root package name */
                private final vq f28451a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f28451a = this;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    return this.f28451a.a((Map) obj);
                }
            }, zd.f);
            dbt a3 = dbh.a(a2, 10L, TimeUnit.SECONDS, zd.f28576d);
            dbh.a(a2, new vt(this, a3), zd.f);
            f28446c.add(a3);
        }
    }
}
