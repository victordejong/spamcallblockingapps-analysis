package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.C11941c;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p352d.C11946c;
import com.google.android.gms.common.util.C12110n;
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
/* renamed from: com.google.android.gms.internal.ads.vq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vq.class */
public final class C12994vq implements AbstractC13002vy {

    /* renamed from: c */
    private static List<Future<Void>> f49931c = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    final drf.C12400b.C12403b f49932a;

    /* renamed from: d */
    private final LinkedHashMap<String, drf.C12400b.C12418h.C12420b> f49934d;

    /* renamed from: g */
    private final Context f49937g;

    /* renamed from: h */
    private final AbstractC13005wa f49938h;

    /* renamed from: i */
    private boolean f49939i;

    /* renamed from: j */
    private final zzaxn f49940j;

    /* renamed from: e */
    private final List<String> f49935e = new ArrayList();

    /* renamed from: f */
    private final List<String> f49936f = new ArrayList();

    /* renamed from: b */
    final Object f49933b = new Object();

    /* renamed from: k */
    private HashSet<String> f49941k = new HashSet<>();

    /* renamed from: l */
    private boolean f49942l = false;

    /* renamed from: m */
    private boolean f49943m = false;

    /* renamed from: n */
    private boolean f49944n = false;

    public C12994vq(Context context, zzbar zzbarVar, zzaxn zzaxnVar, String str, AbstractC13005wa abstractC13005wa) {
        C12045o.m19161a(zzaxnVar, "SafeBrowsing config is not present.");
        this.f49937g = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f49934d = new LinkedHashMap<>();
        this.f49938h = abstractC13005wa;
        this.f49940j = zzaxnVar;
        for (String str2 : zzaxnVar.zzeca) {
            this.f49941k.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.f49941k.remove("cookie".toLowerCase(Locale.ENGLISH));
        drf.C12400b.C12403b m15879a = drf.C12400b.m15879a();
        m15879a.m15859a(drf.C12400b.EnumC12417g.OCTAGON_AD);
        m15879a.m15855a(str);
        m15879a.m15853b(str);
        drf.C12400b.C12401a.C12402a m15866a = drf.C12400b.C12401a.m15866a();
        if (this.f49940j.zzebw != null) {
            m15866a.m15863a(this.f49940j.zzebw);
        }
        m15879a.m15861a(m15866a.mo16259f());
        drf.C12400b.C12421i.C12422a m15808a = drf.C12400b.C12421i.m15815a().m15808a(C11946c.m19258a(this.f49937g).m19265a());
        if (zzbarVar.zzbrz != null) {
            m15808a.m15809a(zzbarVar.zzbrz);
        }
        C11941c.m19271b();
        long m19268c = C11941c.m19268c(this.f49937g);
        if (m19268c > 0) {
            m15808a.m15810a(m19268c);
        }
        m15879a.m15857a(m15808a.mo16259f());
        this.f49932a = m15879a;
    }

    /* renamed from: b */
    private final drf.C12400b.C12418h.C12420b m14069b(String str) {
        drf.C12400b.C12418h.C12420b c12420b;
        synchronized (this.f49933b) {
            c12420b = this.f49934d.get(str);
        }
        return c12420b;
    }

    /* renamed from: e */
    public static final /* synthetic */ Void m14068e() {
        return null;
    }

    /* renamed from: h */
    private final dbt<Void> m14065h() {
        dbt<Void> m16942a;
        if (!((this.f49939i && this.f49940j.zzecc) || (this.f49944n && this.f49940j.zzecb) || (!this.f49939i && this.f49940j.zzebz))) {
            return dbh.m16899a((Object) null);
        }
        synchronized (this.f49933b) {
            for (drf.C12400b.C12418h.C12420b c12420b : this.f49934d.values()) {
                this.f49932a.m15858a(c12420b.mo16259f());
            }
            this.f49932a.m15856a(this.f49935e);
            this.f49932a.m15854b(this.f49936f);
            if (C13003vz.m14056a()) {
                String m15862a = this.f49932a.m15862a();
                String m15850h = this.f49932a.m15850h();
                StringBuilder sb = new StringBuilder(String.valueOf(m15862a).length() + 53 + String.valueOf(m15850h).length());
                sb.append("Sending SB report\n  url: ");
                sb.append(m15862a);
                sb.append("\n  clickUrl: ");
                sb.append(m15850h);
                sb.append("\n  resources: \n");
                StringBuilder sb2 = new StringBuilder(sb.toString());
                for (drf.C12400b.C12418h c12418h : this.f49932a.m15851g()) {
                    sb2.append("    [");
                    sb2.append(c12418h.zzjdo.size());
                    sb2.append("] ");
                    sb2.append(c12418h.zzjaw);
                }
                C13003vz.m14055a(sb2.toString());
            }
            dbt<String> zza = new zzay(this.f49937g).zza(1, this.f49940j.zzebx, null, this.f49932a.mo16259f().mo16256g());
            if (C13003vz.m14056a()) {
                zza.addListener(RunnableC12995vr.f49945a, C13091zd.f50118a);
            }
            m16942a = daj.m16942a(zza, C12998vu.f49948a, C13091zd.f50123f);
        }
        return m16942a;
    }

    /* renamed from: a */
    public final /* synthetic */ dbt m14070a(Map map) throws Exception {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.f49933b) {
                            int length = optJSONArray.length();
                            drf.C12400b.C12418h.C12420b m14069b = m14069b(str);
                            if (m14069b == null) {
                                String valueOf = String.valueOf(str);
                                C13003vz.m14055a(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                for (int i = 0; i < length; i++) {
                                    m14069b.m15816b(optJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                boolean z = this.f49939i;
                                boolean z2 = false;
                                if (length > 0) {
                                    z2 = true;
                                }
                                this.f49939i = z2 | z;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (C12287cv.f46608a.mo17481a().booleanValue()) {
                    zzd.zzb("Failed to get SafeBrowsing metadata", e);
                }
                return dbh.m16898a((Throwable) new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.f49939i) {
            synchronized (this.f49933b) {
                this.f49932a.m15859a(drf.C12400b.EnumC12417g.OCTAGON_AD_SB_MATCH);
            }
        }
        return m14065h();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13002vy
    /* renamed from: a */
    public final zzaxn mo14063a() {
        return this.f49940j;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13002vy
    /* renamed from: a */
    public final void mo14062a(View view) {
        if (this.f49940j.zzeby && !this.f49943m) {
            zzr.zzkv();
            Bitmap zzn = zzj.zzn(view);
            if (zzn == null) {
                C13003vz.m14055a("Failed to capture the webview bitmap.");
                return;
            }
            this.f49943m = true;
            zzj.zzc(new Runnable(this, zzn) { // from class: com.google.android.gms.internal.ads.vp

                /* renamed from: a */
                private final C12994vq f49929a;

                /* renamed from: b */
                private final Bitmap f49930b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f49929a = this;
                    this.f49930b = zzn;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C12994vq c12994vq = this.f49929a;
                    Bitmap bitmap = this.f49930b;
                    dmf m16465h = dlw.m16465h();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 0, m16465h);
                    synchronized (c12994vq.f49933b) {
                        c12994vq.f49932a.m15860a(drf.C12400b.C12414f.m15835a().m15830a(m16465h.m16461a()).m15828a("image/png").m15829a(drf.C12400b.C12414f.EnumC12415a.TYPE_CREATIVE).mo16259f());
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13002vy
    /* renamed from: a */
    public final void mo14061a(String str) {
        synchronized (this.f49933b) {
            if (str == null) {
                this.f49932a.m15849i();
            } else {
                this.f49932a.m15852c(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13002vy
    /* renamed from: a */
    public final void mo14060a(String str, Map<String, String> map, int i) {
        synchronized (this.f49933b) {
            if (i == 3) {
                this.f49944n = true;
            }
            if (this.f49934d.containsKey(str)) {
                if (i == 3) {
                    this.f49934d.get(str).m15818a(drf.C12400b.C12418h.EnumC12419a.zzij(i));
                }
                return;
            }
            drf.C12400b.C12418h.C12420b m15827a = drf.C12400b.C12418h.m15827a();
            drf.C12400b.C12418h.EnumC12419a zzij = drf.C12400b.C12418h.EnumC12419a.zzij(i);
            if (zzij != null) {
                m15827a.m15818a(zzij);
            }
            m15827a.m15820a(this.f49934d.size());
            m15827a.m15817a(str);
            drf.C12400b.C12406d.C12409b m15842a = drf.C12400b.C12406d.m15842a();
            if (this.f49941k.size() > 0 && map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.f49941k.contains(key.toLowerCase(Locale.ENGLISH))) {
                        m15842a.m15838a(drf.C12400b.C12404c.m15848a().m15844a(dlw.m16477a(key)).m15843b(dlw.m16477a(value)).mo16259f());
                    }
                }
            }
            m15827a.m15819a(m15842a.mo16259f());
            this.f49934d.put(str, m15827a);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13002vy
    /* renamed from: b */
    public final boolean mo14059b() {
        return C12110n.m19017e() && this.f49940j.zzeby && !this.f49943m;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13002vy
    /* renamed from: c */
    public final void mo14058c() {
        this.f49942l = true;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13002vy
    /* renamed from: d */
    public final void mo14057d() {
        synchronized (this.f49933b) {
            AbstractC13005wa abstractC13005wa = this.f49938h;
            this.f49934d.keySet();
            dbt m16941a = daj.m16941a(abstractC13005wa.mo14049a(), new daq(this) { // from class: com.google.android.gms.internal.ads.vs

                /* renamed from: a */
                private final C12994vq f49946a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f49946a = this;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    return this.f49946a.m14070a((Map) obj);
                }
            }, C13091zd.f50123f);
            dbt m16902a = dbh.m16902a(m16941a, 10L, TimeUnit.SECONDS, C13091zd.f50121d);
            dbh.m16901a(m16941a, new C12997vt(this, m16902a), C13091zd.f50123f);
            f49931c.add(m16902a);
        }
    }
}
