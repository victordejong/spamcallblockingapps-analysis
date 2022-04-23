package com.inmobi.ads;

import android.net.Uri;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.commons.core.configs.C8358g;
import com.inmobi.commons.core.network.C8383c;
import com.inmobi.commons.core.utilities.p516b.C8397a;
import com.inmobi.commons.core.utilities.p516b.C8399c;
import com.inmobi.commons.core.utilities.p516b.C8404g;
import com.inmobi.commons.core.utilities.uid.C8418d;
import com.inmobi.p497a.C7999m;
import com.inmobi.p497a.p498a.C7982c;
import com.inmobi.p497a.p499b.C7984a;
import com.inmobi.p497a.p499b.C7985b;
import com.mopub.common.AdType;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.inmobi.ads.f */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/f.class */
public final class C8240f extends C8383c {

    /* renamed from: B */
    public static final String f32142B = "f";

    /* renamed from: a */
    public long f32143a;

    /* renamed from: c */
    public String f32145c;

    /* renamed from: e */
    public String f32147e;

    /* renamed from: f */
    public String f32148f;

    /* renamed from: g */
    public Map<String, String> f32149g;

    /* renamed from: h */
    public Map<String, String> f32150h;

    /* renamed from: i */
    public final String f32151i;

    /* renamed from: j */
    public InMobiAdRequest.MonetizationContext f32152j;

    /* renamed from: k */
    public final C8302r f32153k;

    /* renamed from: b */
    public String f32144b = AdType.STATIC_NATIVE;

    /* renamed from: d */
    public int f32146d = 1;

    public C8240f(String str, long j, C8418d dVar, String str2, boolean z) {
        super("POST", str, m6126a(str), dVar, m6126a(str), 0);
        this.f32601A = z;
        this.f32143a = j;
        this.f32609n.put("im-plid", String.valueOf(j));
        this.f32609n.putAll(C8404g.m5663d());
        this.f32609n.putAll(C8399c.m5683c());
        this.f32609n.put("u-appIS", C8397a.m5693a().f32653a);
        this.f32609n.putAll(C7999m.m6764a().m6755f());
        this.f32609n.putAll(C7999m.m6764a().m6756e());
        Map<String, String> map = this.f32609n;
        C7984a a = C7985b.m6785a();
        HashMap hashMap = new HashMap();
        if (a != null) {
            hashMap.put("c-ap-bssid", String.valueOf(a.f31180a));
        }
        map.putAll(hashMap);
        this.f32609n.putAll(C7982c.m6789b());
        this.f32609n.putAll(C7982c.m6788c());
        this.f32609n.putAll(C7982c.m6792a());
        String uuid = UUID.randomUUID().toString();
        this.f32151i = uuid;
        this.f32609n.put("client-request-id", uuid);
        if (str2 != null) {
            this.f32609n.put("u-appcache", str2);
        }
        this.f32609n.put("sdk-flavor", "row");
        this.f32153k = new C8302r(z);
        this.f32609n.put("skdv", this.f32620y.f32498c);
        Map<String, String> map2 = this.f32609n;
        C8302r rVar = this.f32153k;
        C8358g gVar = this.f32620y;
        map2.put("skdm", rVar.m5963a(gVar.f32497b, gVar.f32496a));
    }

    /* renamed from: a */
    public static boolean m6126a(String str) {
        if (str == null) {
            return true;
        }
        Uri parse = Uri.parse(str);
        return "http".equals(parse.getScheme()) || !"https".equals(parse.getScheme());
    }

    @Override // com.inmobi.commons.core.network.C8383c
    /* renamed from: a */
    public final void mo5745a() {
        super.mo5745a();
        this.f32609n.put("format", this.f32144b);
        this.f32609n.put("mk-ads", String.valueOf(this.f32146d));
        this.f32609n.put("adtype", this.f32147e);
        String str = this.f32148f;
        if (str != null) {
            this.f32609n.put("p-keywords", str);
        }
        InMobiAdRequest.MonetizationContext monetizationContext = this.f32152j;
        String str2 = "M10N_CONTEXT_ACTIVITY";
        if (monetizationContext != null) {
            str2 = "M10N_CONTEXT_ACTIVITY";
            if (monetizationContext == InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_OTHER) {
                str2 = "M10N_CONTEXT_OTHER";
            }
        }
        this.f32609n.put("m10n_context", str2);
        Map<String, String> map = this.f32149g;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!this.f32609n.containsKey(entry.getKey())) {
                    this.f32609n.put(entry.getKey(), entry.getValue());
                }
            }
        }
        Map<String, String> map2 = this.f32150h;
        if (map2 != null) {
            this.f32609n.putAll(map2);
        }
    }

    @Override // com.inmobi.commons.core.network.C8383c
    /* renamed from: b */
    public final boolean mo5742b() {
        return this.f32601A || super.mo5742b();
    }

    /* renamed from: c */
    public final String m6125c() {
        return this.f32150h.containsKey("preload-request") ? this.f32150h.get("preload-request") : "0";
    }
}
