package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.C2593f;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.p132c.C2586c;
import com.google.android.gms.common.util.C2716m;
import com.google.android.gms.internal.ads.dgr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.sk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sk.class */
public final class C3492sk implements AbstractC3501st {

    /* renamed from: a */
    private static List<Future<Void>> f17321a = Collections.synchronizedList(new ArrayList());
    @GuardedBy("lock")

    /* renamed from: b */
    private final dgr.C2974b.C2977b f17322b;
    @GuardedBy("lock")

    /* renamed from: c */
    private final LinkedHashMap<String, dgr.C2974b.C2992h.C2994b> f17323c;

    /* renamed from: f */
    private final Context f17326f;

    /* renamed from: g */
    private final AbstractC3503sv f17327g;

    /* renamed from: h */
    private boolean f17328h;

    /* renamed from: i */
    private final C3500ss f17329i;

    /* renamed from: j */
    private final C3506sy f17330j;
    @GuardedBy("lock")

    /* renamed from: d */
    private final List<String> f17324d = new ArrayList();
    @GuardedBy("lock")

    /* renamed from: e */
    private final List<String> f17325e = new ArrayList();

    /* renamed from: k */
    private final Object f17331k = new Object();

    /* renamed from: l */
    private HashSet<String> f17332l = new HashSet<>();

    /* renamed from: m */
    private boolean f17333m = false;

    /* renamed from: n */
    private boolean f17334n = false;

    /* renamed from: o */
    private boolean f17335o = false;

    public C3492sk(Context context, C3647yd c3647yd, C3500ss c3500ss, String str, AbstractC3503sv abstractC3503sv) {
        C2662s.m13980a(c3500ss, "SafeBrowsing config is not present.");
        this.f17326f = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f17323c = new LinkedHashMap<>();
        this.f17327g = abstractC3503sv;
        this.f17329i = c3500ss;
        for (String str2 : this.f17329i.f17345e) {
            this.f17332l.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.f17332l.remove("cookie".toLowerCase(Locale.ENGLISH));
        dgr.C2974b.C2977b m9558d = dgr.C2974b.m9558d();
        m9558d.m9547a(dgr.C2974b.EnumC2991g.OCTAGON_AD);
        m9558d.m9543a(str);
        m9558d.m9541b(str);
        dgr.C2974b.C2975a.C2976a m9555a = dgr.C2974b.C2975a.m9555a();
        if (this.f17329i.f17341a != null) {
            m9555a.m9551a(this.f17329i.f17341a);
        }
        m9558d.m9549a((dgr.C2974b.C2975a) ((dcw) m9555a.mo9987g()));
        dgr.C2974b.C2995i.C2996a m9474a = dgr.C2974b.C2995i.m9484a().m9474a(C2586c.m14193a(this.f17326f).m14202a());
        if (c3647yd.f17636a != null) {
            m9474a.m9475a(c3647yd.f17636a);
        }
        long m14161c = C2593f.m14165b().m14161c(this.f17326f);
        if (m14161c > 0) {
            m9474a.m9476a(m14161c);
        }
        m9558d.m9545a((dgr.C2974b.C2995i) ((dcw) m9474a.mo9987g()));
        this.f17322b = m9558d;
        this.f17330j = new C3506sy(this.f17326f, this.f17329i.f17348h, this);
    }

    /* renamed from: d */
    public static final /* synthetic */ Void m7189d(String str) {
        return null;
    }

    /* renamed from: e */
    private final dgr.C2974b.C2992h.C2994b m7187e(String str) {
        dgr.C2974b.C2992h.C2994b c2994b;
        synchronized (this.f17331k) {
            c2994b = this.f17323c.get(str);
        }
        return c2994b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r6.f17329i.f17347g == false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0025, code lost:
        if (r6.f17329i.f17346f == false) goto L10;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.crt<java.lang.Void> m7185g() {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3492sk.m7185g():com.google.android.gms.internal.ads.crt");
    }

    /* renamed from: a */
    public final /* synthetic */ crt m7192a(Map map) {
        crt<Void> m7185g;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.f17331k) {
                            int length = optJSONArray.length();
                            dgr.C2974b.C2992h.C2994b m7187e = m7187e(str);
                            if (m7187e == null) {
                                String valueOf = String.valueOf(str);
                                C3502su.m7173a(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                for (int i = 0; i < length; i++) {
                                    m7187e.m9485b(optJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                this.f17328h = (length > 0) | this.f17328h;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (C2796at.f10280a.mo13599a().booleanValue()) {
                    C3556uu.m6750b("Failed to get SafeBrowsing metadata", e);
                }
                m7185g = crg.m10777a((Throwable) new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.f17328h) {
            synchronized (this.f17331k) {
                this.f17322b.m9547a(dgr.C2974b.EnumC2991g.OCTAGON_AD_SB_MATCH);
            }
        }
        m7185g = m7185g();
        return m7185g;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3501st
    /* renamed from: a */
    public final C3500ss mo7182a() {
        return this.f17329i;
    }

    /* renamed from: a */
    public final /* synthetic */ void m7193a(Bitmap bitmap) {
        dbw m10208h = dbi.m10208h();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, m10208h);
        synchronized (this.f17331k) {
            this.f17322b.m9548a((dgr.C2974b.C2988f) ((dcw) dgr.C2974b.C2988f.m9520a().m9510a(m10208h.m10201a()).m9508a("image/png").m9509a(dgr.C2974b.C2988f.EnumC2989a.TYPE_CREATIVE).mo9987g()));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3501st
    /* renamed from: a */
    public final void mo7181a(View view) {
        if (this.f17329i.f17343c && !this.f17334n) {
            C2341q.m14744c();
            Bitmap m6971b = C3567ve.m6971b(view);
            if (m6971b == null) {
                C3502su.m7173a("Failed to capture the webview bitmap.");
                return;
            }
            this.f17334n = true;
            C3567ve.m6987a(new Runnable(this, m6971b) { // from class: com.google.android.gms.internal.ads.sj

                /* renamed from: a */
                private final C3492sk f17319a;

                /* renamed from: b */
                private final Bitmap f17320b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f17319a = this;
                    this.f17320b = m6971b;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f17319a.m7193a(this.f17320b);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3501st
    /* renamed from: a */
    public final void mo7180a(String str) {
        synchronized (this.f17331k) {
            if (str == null) {
                this.f17322b.m9537j();
            } else {
                this.f17322b.m9540c(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3501st
    /* renamed from: a */
    public final void mo7179a(String str, Map<String, String> map, int i) {
        synchronized (this.f17331k) {
            if (i == 3) {
                this.f17335o = true;
            }
            if (this.f17323c.containsKey(str)) {
                if (i == 3) {
                    this.f17323c.get(str).m9487a(dgr.C2974b.C2992h.EnumC2993a.m9491a(i));
                }
                return;
            }
            dgr.C2974b.C2992h.C2994b m9493c = dgr.C2974b.C2992h.m9493c();
            dgr.C2974b.C2992h.EnumC2993a m9491a = dgr.C2974b.C2992h.EnumC2993a.m9491a(i);
            if (m9491a != null) {
                m9493c.m9487a(m9491a);
            }
            m9493c.m9489a(this.f17323c.size());
            m9493c.m9486a(str);
            dgr.C2974b.C2980d.C2983b m9528a = dgr.C2974b.C2980d.m9528a();
            if (this.f17332l.size() > 0 && map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.f17332l.contains(key.toLowerCase(Locale.ENGLISH))) {
                        m9528a.m9523a((dgr.C2974b.C2978c) ((dcw) dgr.C2974b.C2978c.m9536a().m9530a(dbi.m10221a(key)).m9529b(dbi.m10221a(value)).mo9987g()));
                    }
                }
            }
            m9493c.m9488a((dgr.C2974b.C2980d) ((dcw) m9528a.mo9987g()));
            this.f17323c.put(str, m9493c);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3501st
    /* renamed from: a */
    public final String[] mo7178a(String[] strArr) {
        return (String[]) this.f17330j.m7168a(strArr).toArray(new String[0]);
    }

    /* renamed from: b */
    public final void m7191b(String str) {
        synchronized (this.f17331k) {
            this.f17324d.add(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3501st
    /* renamed from: b */
    public final boolean mo7177b() {
        return C2716m.m13837f() && this.f17329i.f17343c && !this.f17334n;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3501st
    /* renamed from: c */
    public final void mo7176c() {
        this.f17333m = true;
    }

    /* renamed from: c */
    public final void m7190c(String str) {
        synchronized (this.f17331k) {
            this.f17325e.add(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3501st
    /* renamed from: d */
    public final void mo7175d() {
        synchronized (this.f17331k) {
            crt m10782a = crg.m10782a(this.f17327g.mo7172a(this.f17326f, this.f17323c.keySet()), new cqt(this) { // from class: com.google.android.gms.internal.ads.sm

                /* renamed from: a */
                private final C3492sk f17337a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f17337a = this;
                }

                @Override // com.google.android.gms.internal.ads.cqt
                /* renamed from: a */
                public final crt mo7012a(Object obj) {
                    return this.f17337a.m7192a((Map) obj);
                }
            }, C3650yg.f17647f);
            crt m10784a = crg.m10784a(m10782a, 10L, TimeUnit.SECONDS, C3650yg.f17645d);
            crg.m10781a(m10782a, new C3495sn(this, m10784a), C3650yg.f17647f);
            f17321a.add(m10784a);
        }
    }
}
