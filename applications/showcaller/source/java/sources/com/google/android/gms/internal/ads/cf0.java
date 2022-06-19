package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import com.google.android.gms.ads.internal.util.C5730r0;
import com.google.android.gms.common.C6086c;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.p272k.C6198c;
import com.google.android.gms.common.util.C6237o;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cf0.class */
public final class cf0 implements hf0 {

    /* renamed from: a */
    private static final List<Future<Void>> f21200a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b */
    public static final /* synthetic */ int f21201b = 0;

    /* renamed from: c */
    private final ih3 f21202c;

    /* renamed from: d */
    private final LinkedHashMap<String, di3> f21203d;

    /* renamed from: g */
    private final Context f21206g;

    /* renamed from: h */
    boolean f21207h;

    /* renamed from: i */
    private final zzcdv f21208i;

    /* renamed from: n */
    private final ef0 f21213n;

    /* renamed from: e */
    private final List<String> f21204e = new ArrayList();

    /* renamed from: f */
    private final List<String> f21205f = new ArrayList();

    /* renamed from: j */
    private final Object f21209j = new Object();

    /* renamed from: k */
    private HashSet<String> f21210k = new HashSet<>();

    /* renamed from: l */
    private boolean f21211l = false;

    /* renamed from: m */
    private boolean f21212m = false;

    public cf0(Context context, zzcgz zzcgzVar, zzcdv zzcdvVar, String str, ef0 ef0Var, byte[] bArr) {
        C6155o.m17017k(zzcdvVar, "SafeBrowsing config is not present.");
        this.f21206g = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f21203d = new LinkedHashMap<>();
        this.f21213n = ef0Var;
        this.f21208i = zzcdvVar;
        for (String str2 : zzcdvVar.f33846h) {
            this.f21210k.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.f21210k.remove("cookie".toLowerCase(Locale.ENGLISH));
        ih3 m14625F = hi3.m14625F();
        m14625F.m14386F(9);
        m14625F.m14384r(str);
        m14625F.m14383s(str);
        jh3 m13910C = kh3.m13910C();
        String str3 = this.f21208i.f33842d;
        if (str3 != null) {
            m13910C.m14117q(str3);
        }
        m14625F.m14382t(m13910C.m15512n());
        fi3 m14939C = gi3.m14939C();
        m14939C.m15180s(C6198c.m16885a(this.f21206g).m16887g());
        String str4 = zzcgzVar.f33854d;
        if (str4 != null) {
            m14939C.m15182q(str4);
        }
        long m17226a = C6086c.m17221f().m17226a(this.f21206g);
        if (m17226a > 0) {
            m14939C.m15181r(m17226a);
        }
        m14625F.m14389C(m14939C.m15512n());
        this.f21202c = m14625F;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.hf0
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo14677a(android.view.View r7) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cf0.mo14677a(android.view.View):void");
    }

    @Override // com.google.android.gms.internal.ads.hf0
    /* renamed from: b */
    public final zzcdv mo14676b() {
        return this.f21208i;
    }

    @Override // com.google.android.gms.internal.ads.hf0
    /* renamed from: c */
    public final void mo14675c(String str, Map<String, String> map, int i) {
        synchronized (this.f21209j) {
            if (i == 3) {
                this.f21212m = true;
            }
            if (this.f21203d.containsKey(str)) {
                if (i == 3) {
                    this.f21203d.get(str).m15790v(ci3.m16036a(3));
                }
                return;
            }
            di3 m15457E = ei3.m15457E();
            int m16036a = ci3.m16036a(i);
            if (m16036a != 0) {
                m15457E.m15790v(m16036a);
            }
            m15457E.m15794q(this.f21203d.size());
            m15457E.m15793r(str);
            nh3 m11887C = qh3.m11887C();
            if (this.f21210k.size() > 0 && map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.f21210k.contains(key.toLowerCase(Locale.ENGLISH))) {
                        lh3 m13196C = mh3.m13196C();
                        m13196C.m13515q(zzgex.zzv(key));
                        m13196C.m13514r(zzgex.zzv(value));
                        m11887C.m12898q(m13196C.m15512n());
                    }
                }
            }
            m15457E.m15792s(m11887C.m15512n());
            this.f21203d.put(str, m15457E);
        }
    }

    @Override // com.google.android.gms.internal.ads.hf0
    /* renamed from: e */
    public final boolean mo14674e() {
        return C6237o.m16778f() && this.f21208i.f33844f && !this.f21211l;
    }

    /* renamed from: f */
    public final /* synthetic */ r03 m16071f(Map map) {
        di3 di3Var;
        r03 r03Var;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.f21209j) {
                            int length = optJSONArray.length();
                            synchronized (this.f21209j) {
                                di3Var = this.f21203d.get(str);
                            }
                            if (di3Var == null) {
                                String valueOf = String.valueOf(str);
                                gf0.m14955a(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                for (int i = 0; i < length; i++) {
                                    di3Var.m15791t(optJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                boolean z = this.f21207h;
                                boolean z2 = false;
                                if (length > 0) {
                                    z2 = true;
                                }
                                this.f21207h = z2 | z;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (C6495fy.f23189b.m12799e().booleanValue()) {
                    ei0.m15468b("Failed to get SafeBrowsing metadata", e);
                }
                return k03.m14001c(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.f21207h) {
            synchronized (this.f21209j) {
                this.f21202c.m14386F(10);
            }
        }
        boolean z3 = this.f21207h;
        if ((!z3 || !this.f21208i.f33848j) && ((!this.f21212m || !this.f21208i.f33847i) && (z3 || !this.f21208i.f33845g))) {
            r03Var = k03.m14003a(null);
        } else {
            synchronized (this.f21209j) {
                for (di3 di3Var2 : this.f21203d.values()) {
                    this.f21202c.m14380w(di3Var2.m15512n());
                }
                this.f21202c.m14388D(this.f21204e);
                this.f21202c.m14387E(this.f21205f);
                if (gf0.m14954b()) {
                    String m14385q = this.f21202c.m14385q();
                    String m14379x = this.f21202c.m14379x();
                    StringBuilder sb = new StringBuilder(String.valueOf(m14385q).length() + 53 + String.valueOf(m14379x).length());
                    sb.append("Sending SB report\n  url: ");
                    sb.append(m14385q);
                    sb.append("\n  clickUrl: ");
                    sb.append(m14379x);
                    sb.append("\n  resources: \n");
                    StringBuilder sb2 = new StringBuilder(sb.toString());
                    for (ei3 ei3Var : this.f21202c.m14381v()) {
                        sb2.append("    [");
                        sb2.append(ei3Var.m15458D());
                        sb2.append("] ");
                        sb2.append(ei3Var.m15459C());
                    }
                    gf0.m14955a(sb2.toString());
                }
                r03<String> m17986b = new C5730r0(this.f21206g).m17986b(1, this.f21208i.f33843e, null, this.f21202c.m15512n().mo10723K());
                if (gf0.m14954b()) {
                    m17986b.mo10015d(ze0.f32914d, qi0.f28495a);
                }
                r03Var = k03.m13994j(m17986b, af0.f19929a, qi0.f28500f);
            }
        }
        return r03Var;
    }

    /* renamed from: g */
    public final /* synthetic */ void m16070g(Bitmap bitmap) {
        fd3 zzB = zzgex.zzB();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzB);
        synchronized (this.f21209j) {
            ih3 ih3Var = this.f21202c;
            vh3 m9158C = xh3.m9158C();
            m9158C.m10021r(zzB.m15275a());
            m9158C.m10022q("image/png");
            m9158C.m10020s(2);
            ih3Var.m14390B(m9158C.m15512n());
        }
    }

    @Override // com.google.android.gms.internal.ads.hf0
    /* renamed from: y */
    public final void mo14673y(String str) {
        synchronized (this.f21209j) {
            if (str == null) {
                this.f21202c.m14391A();
            } else {
                this.f21202c.m14378y(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.hf0
    public final void zzg() {
        synchronized (this.f21209j) {
            this.f21203d.keySet();
            r03 m14003a = k03.m14003a(Collections.emptyMap());
            uz2 uz2Var = new uz2(this) { // from class: com.google.android.gms.internal.ads.ye0

                /* renamed from: a */
                private final cf0 f32481a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32481a = this;
                }

                @Override // com.google.android.gms.internal.ads.uz2
                /* renamed from: a */
                public final r03 mo8403a(Object obj) {
                    return this.f32481a.m16071f((Map) obj);
                }
            };
            s03 s03Var = qi0.f28500f;
            r03 m13995i = k03.m13995i(m14003a, uz2Var, s03Var);
            r03 m13996h = k03.m13996h(m13995i, 10L, TimeUnit.SECONDS, qi0.f28498d);
            k03.m13988p(m13995i, new bf0(this, m13996h), s03Var);
            f21200a.add(m13996h);
        }
    }
}
