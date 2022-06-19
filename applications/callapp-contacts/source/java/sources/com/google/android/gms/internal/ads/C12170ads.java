package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.view.C0926v;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.ehn;
import com.mopub.common.Constants;
import java.io.ByteArrayInputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: com.google.android.gms.internal.ads.ads */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ads.class */
public class C12170ads extends WebViewClient implements afe {

    /* renamed from: A */
    private View.OnAttachStateChangeListener f39995A;

    /* renamed from: a */
    protected adt f39996a;

    /* renamed from: b */
    final HashMap<String, List<AbstractC12607hi<? super adt>>> f39997b;

    /* renamed from: c */
    final Object f39998c;

    /* renamed from: d */
    boolean f39999d;

    /* renamed from: e */
    protected AbstractC13002vy f40000e;

    /* renamed from: f */
    boolean f40001f;

    /* renamed from: g */
    private final ehk f40002g;

    /* renamed from: h */
    private eir f40003h;

    /* renamed from: i */
    private zzp f40004i;

    /* renamed from: j */
    private afd f40005j;

    /* renamed from: k */
    private afg f40006k;

    /* renamed from: l */
    private AbstractC12586go f40007l;

    /* renamed from: m */
    private AbstractC12588gq f40008m;

    /* renamed from: n */
    private aff f40009n;

    /* renamed from: o */
    private boolean f40010o;

    /* renamed from: p */
    private boolean f40011p;

    /* renamed from: q */
    private boolean f40012q;

    /* renamed from: r */
    private boolean f40013r;

    /* renamed from: s */
    private zzx f40014s;

    /* renamed from: t */
    private final C12839px f40015t;

    /* renamed from: u */
    private zza f40016u;

    /* renamed from: v */
    private C12831pp f40017v;

    /* renamed from: w */
    private boolean f40018w;

    /* renamed from: x */
    private boolean f40019x;

    /* renamed from: y */
    private int f40020y;

    /* renamed from: z */
    private final HashSet<String> f40021z;

    public C12170ads(adt adtVar, ehk ehkVar, boolean z) {
        this(adtVar, ehkVar, z, new C12839px(adtVar, adtVar.mo13727w(), new C12166ab(adtVar.getContext())), null);
    }

    private C12170ads(adt adtVar, ehk ehkVar, boolean z, C12839px c12839px, C12831pp c12831pp) {
        this.f39997b = new HashMap<>();
        this.f39998c = new Object();
        this.f39999d = false;
        this.f40002g = ehkVar;
        this.f39996a = adtVar;
        this.f40010o = z;
        this.f40015t = c12839px;
        this.f40017v = null;
        this.f40021z = new HashSet<>(Arrays.asList(((String) ekb.m14831e().m18571a(C12187aq.f42835dm)).split(",")));
    }

    /* renamed from: a */
    public final void m18851a(View view, AbstractC13002vy abstractC13002vy, int i) {
        if (!abstractC13002vy.mo14059b() || i <= 0) {
            return;
        }
        abstractC13002vy.mo14062a(view);
        if (!abstractC13002vy.mo14059b()) {
            return;
        }
        zzj.zzegq.postDelayed(new adx(this, view, abstractC13002vy, i), 100L);
    }

    /* renamed from: a */
    private final void m18850a(AdOverlayInfoParcel adOverlayInfoParcel) {
        C12831pp c12831pp = this.f40017v;
        boolean m14255a = c12831pp != null ? c12831pp.m14255a() : false;
        zzr.zzku();
        zzo.zza(this.f39996a.getContext(), adOverlayInfoParcel, !m14255a);
        if (this.f40000e != null) {
            String str = adOverlayInfoParcel.url;
            String str2 = str;
            if (str == null) {
                str2 = str;
                if (adOverlayInfoParcel.zzdue != null) {
                    str2 = adOverlayInfoParcel.zzdue.url;
                }
            }
            this.f40000e.mo14061a(str2);
        }
    }

    /* renamed from: a */
    public final void m18843a(Map<String, String> map, List<AbstractC12607hi<? super adt>> list, String str) {
        if (zzd.zzyz()) {
            String valueOf = String.valueOf(str);
            zzd.zzed(valueOf.length() != 0 ? "Received GMSG: ".concat(valueOf) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 4 + String.valueOf(str3).length());
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(str3);
                zzd.zzed(sb.toString());
            }
        }
        for (AbstractC12607hi<? super adt> abstractC12607hi : list) {
            abstractC12607hi.mo14250a(this.f39996a, map);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x019d, code lost:
        com.google.android.gms.ads.internal.zzr.zzkv();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a1, code lost:
        r0 = com.google.android.gms.ads.internal.util.zzj.zzd(r0);
        android.net.TrafficStats.clearThreadStatsTag();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01ab, code lost:
        return r0;
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse m18839b(java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C12170ads.m18839b(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    /* renamed from: n */
    private final void m18833n() {
        if (this.f39995A == null) {
            return;
        }
        this.f39996a.mo13731s().removeOnAttachStateChangeListener(this.f39995A);
    }

    /* renamed from: o */
    private final void m18832o() {
        if (this.f40005j != null && ((this.f40018w && this.f40020y <= 0) || this.f40019x)) {
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue() && this.f39996a.mo13740j() != null) {
                C12203ay.m18328a(this.f39996a.mo13740j().f43768b, this.f39996a.mo13754c(), "awfllc");
            }
            this.f40005j.zzam(!this.f40019x);
            this.f40005j = null;
        }
        this.f39996a.mo13797M();
    }

    /* renamed from: p */
    private static WebResourceResponse m18831p() {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42682as)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* renamed from: a */
    public final WebResourceResponse m18844a(String str, Map<String, String> map) {
        zzth m15062a;
        try {
            String m14007a = C13040xg.m14007a(str, this.f39996a.getContext(), this.f40001f);
            if (!m14007a.equals(str)) {
                return m18839b(m14007a, map);
            }
            zzti zzbs = zzti.zzbs(str);
            if (zzbs != null && (m15062a = zzr.zzlb().m15062a(zzbs)) != null && m15062a.zznc()) {
                return new WebResourceResponse("", "", m15062a.zznd());
            }
            if (C13081yu.m13908c() && C12275ck.f45947b.mo17481a().booleanValue()) {
                return m18839b(str, map);
            }
            return null;
        } catch (Exception | NoClassDefFoundError e) {
            zzr.zzkz().m13979a(e, "AdWebViewClient.interceptRequest");
            return m18831p();
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: a */
    public final zza mo18792a() {
        return this.f40016u;
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: a */
    public final void mo18791a(int i, int i2) {
        this.f40015t.m14251a(i, i2);
        C12831pp c12831pp = this.f40017v;
        if (c12831pp != null) {
            synchronized (c12831pp.f49675i) {
                c12831pp.f49669c = i;
                c12831pp.f49670d = i2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: a */
    public final void mo18790a(Uri uri) {
        String path = uri.getPath();
        List<AbstractC12607hi<? super adt>> list = this.f39997b.get(path);
        if (path == null || list == null) {
            String valueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
            sb.append("No GMSG handler found for GMSG: ");
            sb.append(valueOf);
            zzd.zzed(sb.toString());
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42887el)).booleanValue() || zzr.zzkz().m13983a() == null) {
                return;
            }
            C13091zd.f50118a.execute(new Runnable(path) { // from class: com.google.android.gms.internal.ads.adu

                /* renamed from: a */
                private final String f40022a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f40022a = path;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    String str = this.f40022a;
                    C12202ax m13983a = zzr.zzkz().m13983a();
                    String substring = str.substring(1);
                    if (!m13983a.f43281d.contains(substring)) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        linkedHashMap.put("sdkVersion", m13983a.f43280c);
                        linkedHashMap.put("ue", substring);
                        m13983a.m18346a(m13983a.m18345a(m13983a.f43279b, linkedHashMap), (C12240bh) null);
                    }
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42834dl)).booleanValue() && this.f40021z.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) ekb.m14831e().m18571a(C12187aq.f42836dn)).intValue()) {
                String valueOf2 = String.valueOf(path);
                zzd.zzed(valueOf2.length() != 0 ? "Parsing gmsg query params on BG thread: ".concat(valueOf2) : new String("Parsing gmsg query params on BG thread: "));
                dbh.m16901a(zzr.zzkv().zzh(uri), new adz(this, list, path, uri), C13091zd.f50122e);
                return;
            }
        }
        zzr.zzkv();
        m18843a(zzj.zzg(uri), list, path);
    }

    /* renamed from: a */
    public final void m18849a(zzb zzbVar) {
        boolean mo13803G = this.f39996a.mo13803G();
        m18850a(new AdOverlayInfoParcel(zzbVar, (!mo13803G || this.f39996a.mo13724z().m18772d()) ? this.f40003h : null, mo13803G ? null : this.f40004i, this.f40014s, this.f39996a.mo13739k(), this.f39996a));
    }

    /* renamed from: a */
    public final void m18848a(zzbg zzbgVar, brs brsVar, bli bliVar, cty ctyVar, String str, String str2, int i) {
        adt adtVar = this.f39996a;
        m18850a(new AdOverlayInfoParcel(adtVar, adtVar.mo13739k(), zzbgVar, brsVar, bliVar, ctyVar, str, str2, i));
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: a */
    public final void mo18789a(afd afdVar) {
        this.f40005j = afdVar;
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: a */
    public final void mo18788a(afg afgVar) {
        this.f40006k = afgVar;
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: a */
    public final void mo18787a(eir eirVar, AbstractC12586go abstractC12586go, zzp zzpVar, AbstractC12588gq abstractC12588gq, zzx zzxVar, boolean z, AbstractC12609hk abstractC12609hk, zza zzaVar, AbstractC12841pz abstractC12841pz, AbstractC13002vy abstractC13002vy, brs brsVar, cus cusVar, bli bliVar, cty ctyVar) {
        if (zzaVar == null) {
            zzaVar = new zza(this.f39996a.getContext(), abstractC13002vy, null);
        }
        this.f40017v = new C12831pp(this.f39996a, abstractC12841pz);
        this.f40000e = abstractC13002vy;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42689az)).booleanValue()) {
            m18845a("/adMetadata", new C12583gl(abstractC12586go));
        }
        m18845a("/appEvent", new C12585gn(abstractC12588gq));
        m18845a("/backButton", C12590gs.f49321k);
        m18845a("/refresh", C12590gs.f49322l);
        m18845a("/canOpenApp", C12590gs.f49312b);
        m18845a("/canOpenURLs", C12590gs.f49311a);
        m18845a("/canOpenIntents", C12590gs.f49313c);
        m18845a("/close", C12590gs.f49315e);
        m18845a("/customClose", C12590gs.f49316f);
        m18845a("/instrument", C12590gs.f49325o);
        m18845a("/delayPageLoaded", C12590gs.f49327q);
        m18845a("/delayPageClosed", C12590gs.f49328r);
        m18845a("/getLocationInfo", C12590gs.f49329s);
        m18845a("/log", C12590gs.f49318h);
        m18845a("/mraid", new C12616hr(zzaVar, this.f40017v, abstractC12841pz));
        m18845a("/mraidLoaded", this.f40015t);
        m18845a("/open", new C12615hq(zzaVar, this.f40017v, brsVar, bliVar, ctyVar));
        m18845a("/precache", new acz());
        m18845a("/touch", C12590gs.f49320j);
        m18845a("/video", C12590gs.f49323m);
        m18845a("/videoMeta", C12590gs.f49324n);
        if (brsVar == null || cusVar == null) {
            m18845a("/click", C12590gs.f49314d);
            m18845a("/httpTrack", C12590gs.f49317g);
        } else {
            m18845a("/click", new AbstractC12607hi(cusVar, brsVar) { // from class: com.google.android.gms.internal.ads.cpt

                /* renamed from: a */
                private final cus f46355a;

                /* renamed from: b */
                private final brs f46356b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f46355a = cusVar;
                    this.f46356b = brsVar;
                }

                /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.aeu, com.google.android.gms.internal.ads.adh] */
                @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                /* renamed from: a */
                public final void mo14250a(Object obj, Map map) {
                    cus cusVar2 = this.f46355a;
                    brs brsVar2 = this.f46356b;
                    ?? r0 = (adh) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        zzd.zzez("URL missing from click GMSG.");
                        return;
                    }
                    String m14634a = C12590gs.m14634a(r0, str);
                    if (!r0.mo13733q().f46251ad) {
                        cusVar2.m17207a(m14634a);
                        return;
                    }
                    long mo19039a = zzr.zzlc().mo19039a();
                    String str2 = ((aen) r0).mo13791S().f46290b;
                    zzr.zzkv();
                    brsVar2.m17630a(new brz(mo19039a, str2, m14634a, zzj.zzbd(((aeu) r0).getContext()) ? brp.f44573b : brp.f44572a));
                }
            });
            m18845a("/httpTrack", new AbstractC12607hi(cusVar, brsVar) { // from class: com.google.android.gms.internal.ads.cpv

                /* renamed from: a */
                private final cus f46361a;

                /* renamed from: b */
                private final brs f46362b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f46361a = cusVar;
                    this.f46362b = brsVar;
                }

                @Override // com.google.android.gms.internal.ads.AbstractC12607hi
                /* renamed from: a */
                public final void mo14250a(Object obj, Map map) {
                    cus cusVar2 = this.f46361a;
                    brs brsVar2 = this.f46362b;
                    adh adhVar = (adh) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        zzd.zzez("URL missing from httpTrack GMSG.");
                    } else if (!adhVar.mo13733q().f46251ad) {
                        cusVar2.m17207a(str);
                    } else {
                        brsVar2.m17630a(new brz(zzr.zzlc().mo19039a(), ((aen) adhVar).mo13791S().f46290b, str, brp.f44573b));
                    }
                }
            });
        }
        if (zzr.zzlt().m14044a(this.f39996a.getContext())) {
            m18845a("/logScionEvent", new C12613ho(this.f39996a.getContext()));
        }
        if (abstractC12609hk != null) {
            m18845a("/setInterstitialProperties", new C12610hl(abstractC12609hk));
        }
        this.f40003h = eirVar;
        this.f40004i = zzpVar;
        this.f40007l = abstractC12586go;
        this.f40008m = abstractC12588gq;
        this.f40014s = zzxVar;
        this.f40016u = zzaVar;
        this.f39999d = z;
    }

    /* renamed from: a */
    public final void m18845a(String str, AbstractC12607hi<? super adt> abstractC12607hi) {
        synchronized (this.f39998c) {
            List<AbstractC12607hi<? super adt>> list = this.f39997b.get(str);
            List<AbstractC12607hi<? super adt>> list2 = list;
            if (list == null) {
                list2 = new CopyOnWriteArrayList<>();
                this.f39997b.put(str, list2);
            }
            list2.add(abstractC12607hi);
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: a */
    public final void mo18786a(boolean z) {
        synchronized (this.f39998c) {
            this.f40012q = z;
        }
    }

    /* renamed from: a */
    public final void m18842a(boolean z, int i) {
        eir eirVar = (!this.f39996a.mo13803G() || this.f39996a.mo13724z().m18772d()) ? this.f40003h : null;
        zzp zzpVar = this.f40004i;
        zzx zzxVar = this.f40014s;
        adt adtVar = this.f39996a;
        m18850a(new AdOverlayInfoParcel(eirVar, zzpVar, zzxVar, adtVar, z, i, adtVar.mo13739k()));
    }

    /* renamed from: a */
    public final void m18841a(boolean z, int i, String str) {
        boolean mo13803G = this.f39996a.mo13803G();
        eir eirVar = (!mo13803G || this.f39996a.mo13724z().m18772d()) ? this.f40003h : null;
        ady adyVar = mo13803G ? null : new ady(this.f39996a, this.f40004i);
        AbstractC12586go abstractC12586go = this.f40007l;
        AbstractC12588gq abstractC12588gq = this.f40008m;
        zzx zzxVar = this.f40014s;
        adt adtVar = this.f39996a;
        m18850a(new AdOverlayInfoParcel(eirVar, adyVar, abstractC12586go, abstractC12588gq, zzxVar, adtVar, z, i, str, adtVar.mo13739k()));
    }

    /* renamed from: a */
    public final void m18840a(boolean z, int i, String str, String str2) {
        boolean mo13803G = this.f39996a.mo13803G();
        eir eirVar = (!mo13803G || this.f39996a.mo13724z().m18772d()) ? this.f40003h : null;
        ady adyVar = mo13803G ? null : new ady(this.f39996a, this.f40004i);
        AbstractC12586go abstractC12586go = this.f40007l;
        AbstractC12588gq abstractC12588gq = this.f40008m;
        zzx zzxVar = this.f40014s;
        adt adtVar = this.f39996a;
        m18850a(new AdOverlayInfoParcel(eirVar, adyVar, abstractC12586go, abstractC12588gq, zzxVar, adtVar, z, i, str, str2, adtVar.mo13739k()));
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: b */
    public final void mo18784b(int i, int i2) {
        C12831pp c12831pp = this.f40017v;
        if (c12831pp != null) {
            c12831pp.f49669c = i;
            c12831pp.f49670d = i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: b */
    public final boolean mo18785b() {
        boolean z;
        synchronized (this.f39998c) {
            z = this.f40010o;
        }
        return z;
    }

    /* renamed from: c */
    public final boolean m18838c() {
        boolean z;
        synchronized (this.f39998c) {
            z = this.f40011p;
        }
        return z;
    }

    /* renamed from: d */
    public final boolean m18837d() {
        boolean z;
        synchronized (this.f39998c) {
            z = this.f40012q;
        }
        return z;
    }

    /* renamed from: e */
    public final ViewTreeObserver.OnGlobalLayoutListener m18836e() {
        synchronized (this.f39998c) {
        }
        return null;
    }

    /* renamed from: f */
    public final ViewTreeObserver.OnScrollChangedListener m18835f() {
        synchronized (this.f39998c) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: g */
    public final void mo18783g() {
        AbstractC13002vy abstractC13002vy = this.f40000e;
        if (abstractC13002vy != null) {
            WebView mo13732r = this.f39996a.mo13732r();
            if (C0926v.m44154E(mo13732r)) {
                m18851a(mo13732r, abstractC13002vy, 10);
                return;
            }
            m18833n();
            this.f39995A = new adw(this, abstractC13002vy);
            this.f39996a.mo13731s().addOnAttachStateChangeListener(this.f39995A);
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: h */
    public final void mo18782h() {
        synchronized (this.f39998c) {
            this.f40013r = true;
        }
        this.f40020y++;
        m18832o();
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: i */
    public final void mo18781i() {
        this.f40020y--;
        m18832o();
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: j */
    public final void mo18780j() {
        ehk ehkVar = this.f40002g;
        if (ehkVar != null) {
            ehkVar.m15047a(ehn.C12444a.EnumC12446b.DELAY_PAGE_LOAD_CANCELLED_AD);
        }
        this.f40019x = true;
        m18832o();
        this.f39996a.destroy();
    }

    /* renamed from: k */
    public final void m18834k() {
        AbstractC13002vy abstractC13002vy = this.f40000e;
        if (abstractC13002vy != null) {
            abstractC13002vy.mo14057d();
            this.f40000e = null;
        }
        m18833n();
        synchronized (this.f39998c) {
            this.f39997b.clear();
            this.f40003h = null;
            this.f40004i = null;
            this.f40005j = null;
            this.f40006k = null;
            this.f40007l = null;
            this.f40008m = null;
            this.f39999d = false;
            this.f40010o = false;
            this.f40011p = false;
            this.f40013r = false;
            this.f40014s = null;
            this.f40009n = null;
            C12831pp c12831pp = this.f40017v;
            if (c12831pp != null) {
                c12831pp.m14254a(true);
                this.f40017v = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: l */
    public final void mo18779l() {
        synchronized (this.f39998c) {
            this.f39999d = false;
            this.f40010o = true;
            C13091zd.f50122e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.adv

                /* renamed from: a */
                private final C12170ads f40023a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f40023a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    C12170ads c12170ads = this.f40023a;
                    c12170ads.f39996a.mo13798L();
                    zze mo13726x = c12170ads.f39996a.mo13726x();
                    if (mo13726x != null) {
                        mo13726x.zzwi();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    /* renamed from: m */
    public final void mo18778m() {
        synchronized (this.f39998c) {
            this.f40011p = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.eir
    public void onAdClicked() {
        eir eirVar = this.f40003h;
        if (eirVar != null) {
            eirVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        zzd.zzed(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            return;
        }
        mo18790a(parse);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f39998c) {
            if (this.f39996a.mo13802H()) {
                zzd.zzed("Blank page loaded, 1...");
                this.f39996a.mo13801I();
                return;
            }
            this.f40018w = true;
            afg afgVar = this.f40006k;
            if (afgVar != null) {
                afgVar.mo14557a();
                this.f40006k = null;
            }
            m18832o();
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f39996a.mo13767a(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m18844a(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri uri;
        String valueOf = String.valueOf(str);
        zzd.zzed(valueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(valueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            mo18790a(parse);
            return true;
        }
        if (this.f39999d && webView == this.f39996a.mo13732r()) {
            String scheme = parse.getScheme();
            if ("http".equalsIgnoreCase(scheme) || Constants.HTTPS.equalsIgnoreCase(scheme)) {
                eir eirVar = this.f40003h;
                if (eirVar != null) {
                    eirVar.onAdClicked();
                    AbstractC13002vy abstractC13002vy = this.f40000e;
                    if (abstractC13002vy != null) {
                        abstractC13002vy.mo14061a(str);
                    }
                    this.f40003h = null;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
        if (this.f39996a.mo13732r().willNotDraw()) {
            String valueOf2 = String.valueOf(str);
            zzd.zzez(valueOf2.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf2) : new String("AdWebView unable to handle URL: "));
            return true;
        }
        try {
            die mo13805E = this.f39996a.mo13805E();
            uri = parse;
            if (mo13805E != null) {
                uri = parse;
                if (mo13805E.m16643a(parse)) {
                    uri = mo13805E.m16642a(parse, this.f39996a.getContext(), this.f39996a.mo13731s(), this.f39996a.mo13751d());
                }
            }
        } catch (zzeh e) {
            String valueOf3 = String.valueOf(str);
            zzd.zzez(valueOf3.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf3) : new String("Unable to append parameter to URL: "));
            uri = parse;
        }
        zza zzaVar = this.f40016u;
        if (zzaVar == null || zzaVar.zzkc()) {
            m18849a(new zzb("android.intent.action.VIEW", uri.toString(), null, null, null, null, null, null));
            return true;
        }
        this.f40016u.zzbk(str);
        return true;
    }
}
