package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.view.v;
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
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ads.class */
public class ads extends WebViewClient implements afe {
    private View.OnAttachStateChangeListener A;

    /* renamed from: a  reason: collision with root package name */
    protected adt f23158a;

    /* renamed from: b  reason: collision with root package name */
    final HashMap<String, List<hi<? super adt>>> f23159b;

    /* renamed from: c  reason: collision with root package name */
    final Object f23160c;

    /* renamed from: d  reason: collision with root package name */
    boolean f23161d;
    protected vy e;
    boolean f;
    private final ehk g;
    private eir h;
    private zzp i;
    private afd j;
    private afg k;
    private go l;
    private gq m;
    private aff n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private zzx s;
    private final px t;
    private zza u;
    private pp v;
    private boolean w;
    private boolean x;
    private int y;
    private final HashSet<String> z;

    public ads(adt adtVar, ehk ehkVar, boolean z) {
        this(adtVar, ehkVar, z, new px(adtVar, adtVar.w(), new ab(adtVar.getContext())), null);
    }

    private ads(adt adtVar, ehk ehkVar, boolean z, px pxVar, pp ppVar) {
        this.f23159b = new HashMap<>();
        this.f23160c = new Object();
        this.f23161d = false;
        this.g = ehkVar;
        this.f23158a = adtVar;
        this.o = z;
        this.t = pxVar;
        this.v = null;
        this.z = new HashSet<>(Arrays.asList(((String) ekb.e().a(aq.dm)).split(",")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(View view, vy vyVar, int i) {
        if (vyVar.b() && i > 0) {
            vyVar.a(view);
            if (vyVar.b()) {
                zzj.zzegq.postDelayed(new adx(this, view, vyVar, i), 100L);
            }
        }
    }

    private final void a(AdOverlayInfoParcel adOverlayInfoParcel) {
        pp ppVar = this.v;
        boolean a2 = ppVar != null ? ppVar.a() : false;
        zzr.zzku();
        zzo.zza(this.f23158a.getContext(), adOverlayInfoParcel, !a2);
        if (this.e != null) {
            String str = adOverlayInfoParcel.url;
            String str2 = str;
            if (str == null) {
                str2 = str;
                if (adOverlayInfoParcel.zzdue != null) {
                    str2 = adOverlayInfoParcel.zzdue.url;
                }
            }
            this.e.a(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Map<String, String> map, List<hi<? super adt>> list, String str) {
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
        for (hi<? super adt> hiVar : list) {
            hiVar.a(this.f23158a, map);
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.webkit.WebResourceResponse b(java.lang.String r9, java.util.Map<java.lang.String, java.lang.String> r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ads.b(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    private final void n() {
        if (this.A != null) {
            this.f23158a.s().removeOnAttachStateChangeListener(this.A);
        }
    }

    private final void o() {
        if (this.j != null && ((this.w && this.y <= 0) || this.x)) {
            if (((Boolean) ekb.e().a(aq.bl)).booleanValue() && this.f23158a.j() != null) {
                ay.a(this.f23158a.j().f24306b, this.f23158a.c(), "awfllc");
            }
            this.j.zzam(!this.x);
            this.j = null;
        }
        this.f23158a.M();
    }

    private static WebResourceResponse p() {
        if (((Boolean) ekb.e().a(aq.as)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final WebResourceResponse a(String str, Map<String, String> map) {
        zzth a2;
        try {
            String a3 = xg.a(str, this.f23158a.getContext(), this.f);
            if (!a3.equals(str)) {
                return b(a3, map);
            }
            zzti zzbs = zzti.zzbs(str);
            if (zzbs != null && (a2 = zzr.zzlb().a(zzbs)) != null && a2.zznc()) {
                return new WebResourceResponse("", "", a2.zznd());
            }
            if (!yu.c() || !ck.f25965b.a().booleanValue()) {
                return null;
            }
            return b(str, map);
        } catch (Exception | NoClassDefFoundError e) {
            zzr.zzkz().a(e, "AdWebViewClient.interceptRequest");
            return p();
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final zza a() {
        return this.u;
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void a(int i, int i2) {
        this.t.a(i, i2);
        pp ppVar = this.v;
        if (ppVar != null) {
            synchronized (ppVar.i) {
                ppVar.f28293c = i;
                ppVar.f28294d = i2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void a(Uri uri) {
        final String path = uri.getPath();
        List<hi<? super adt>> list = this.f23159b.get(path);
        if (path == null || list == null) {
            String valueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 32);
            sb.append("No GMSG handler found for GMSG: ");
            sb.append(valueOf);
            zzd.zzed(sb.toString());
            if (((Boolean) ekb.e().a(aq.el)).booleanValue() && zzr.zzkz().a() != null) {
                zd.f28573a.execute(new Runnable(path) { // from class: com.google.android.gms.internal.ads.adu

                    /* renamed from: a  reason: collision with root package name */
                    private final String f23162a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23162a = path;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        String str = this.f23162a;
                        ax a2 = zzr.zzkz().a();
                        String substring = str.substring(1);
                        if (!a2.f23972d.contains(substring)) {
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            linkedHashMap.put("sdkVersion", a2.f23971c);
                            linkedHashMap.put("ue", substring);
                            a2.a(a2.a(a2.f23970b, linkedHashMap), (bh) null);
                        }
                    }
                });
                return;
            }
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) ekb.e().a(aq.dl)).booleanValue() && this.z.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) ekb.e().a(aq.dn)).intValue()) {
                String valueOf2 = String.valueOf(path);
                zzd.zzed(valueOf2.length() != 0 ? "Parsing gmsg query params on BG thread: ".concat(valueOf2) : new String("Parsing gmsg query params on BG thread: "));
                dbh.a(zzr.zzkv().zzh(uri), new adz(this, list, path, uri), zd.e);
                return;
            }
        }
        zzr.zzkv();
        a(zzj.zzg(uri), list, path);
    }

    public final void a(zzb zzbVar) {
        boolean G = this.f23158a.G();
        a(new AdOverlayInfoParcel(zzbVar, (!G || this.f23158a.z().d()) ? this.h : null, G ? null : this.i, this.s, this.f23158a.k(), this.f23158a));
    }

    public final void a(zzbg zzbgVar, brs brsVar, bli bliVar, cty ctyVar, String str, String str2, int i) {
        adt adtVar = this.f23158a;
        a(new AdOverlayInfoParcel(adtVar, adtVar.k(), zzbgVar, brsVar, bliVar, ctyVar, str, str2, i));
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void a(afd afdVar) {
        this.j = afdVar;
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void a(afg afgVar) {
        this.k = afgVar;
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void a(eir eirVar, go goVar, zzp zzpVar, gq gqVar, zzx zzxVar, boolean z, hk hkVar, zza zzaVar, pz pzVar, vy vyVar, final brs brsVar, final cus cusVar, bli bliVar, cty ctyVar) {
        if (zzaVar == null) {
            zzaVar = new zza(this.f23158a.getContext(), vyVar, null);
        }
        this.v = new pp(this.f23158a, pzVar);
        this.e = vyVar;
        if (((Boolean) ekb.e().a(aq.az)).booleanValue()) {
            a("/adMetadata", new gl(goVar));
        }
        a("/appEvent", new gn(gqVar));
        a("/backButton", gs.k);
        a("/refresh", gs.l);
        a("/canOpenApp", gs.f28022b);
        a("/canOpenURLs", gs.f28021a);
        a("/canOpenIntents", gs.f28023c);
        a("/close", gs.e);
        a("/customClose", gs.f);
        a("/instrument", gs.o);
        a("/delayPageLoaded", gs.q);
        a("/delayPageClosed", gs.r);
        a("/getLocationInfo", gs.s);
        a("/log", gs.h);
        a("/mraid", new hr(zzaVar, this.v, pzVar));
        a("/mraidLoaded", this.t);
        a("/open", new hq(zzaVar, this.v, brsVar, bliVar, ctyVar));
        a("/precache", new acz());
        a("/touch", gs.j);
        a("/video", gs.m);
        a("/videoMeta", gs.n);
        if (brsVar == null || cusVar == null) {
            a("/click", gs.f28024d);
            a("/httpTrack", gs.g);
        } else {
            a("/click", new hi(cusVar, brsVar) { // from class: com.google.android.gms.internal.ads.cpt

                /* renamed from: a  reason: collision with root package name */
                private final cus f26233a;

                /* renamed from: b  reason: collision with root package name */
                private final brs f26234b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26233a = cusVar;
                    this.f26234b = brsVar;
                }

                /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.aeu, com.google.android.gms.internal.ads.adh] */
                /* JADX WARN: Unknown variable types count: 1 */
                @Override // com.google.android.gms.internal.ads.hi
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void a(java.lang.Object r10, java.util.Map r11) {
                    /*
                        r9 = this;
                        r0 = r9
                        com.google.android.gms.internal.ads.cus r0 = r0.f26233a
                        r12 = r0
                        r0 = r9
                        com.google.android.gms.internal.ads.brs r0 = r0.f26234b
                        r13 = r0
                        r0 = r10
                        com.google.android.gms.internal.ads.adh r0 = (com.google.android.gms.internal.ads.adh) r0
                        r10 = r0
                        r0 = r11
                        java.lang.String r1 = "u"
                        java.lang.Object r0 = r0.get(r1)
                        java.lang.String r0 = (java.lang.String) r0
                        r11 = r0
                        r0 = r11
                        if (r0 != 0) goto L_0x0026
                        java.lang.String r0 = "URL missing from click GMSG."
                        com.google.android.gms.ads.internal.util.zzd.zzez(r0)
                        return
                    L_0x0026:
                        r0 = r10
                        r1 = r11
                        java.lang.String r0 = com.google.android.gms.internal.ads.gs.a(r0, r1)
                        r11 = r0
                        r0 = r10
                        com.google.android.gms.internal.ads.cov r0 = r0.q()
                        boolean r0 = r0.ad
                        if (r0 != 0) goto L_0x003e
                        r0 = r12
                        r1 = r11
                        r0.a(r1)
                        return
                    L_0x003e:
                        com.google.android.gms.common.util.f r0 = com.google.android.gms.ads.internal.zzr.zzlc()
                        long r0 = r0.a()
                        r14 = r0
                        r0 = r10
                        com.google.android.gms.internal.ads.aen r0 = (com.google.android.gms.internal.ads.aen) r0
                        com.google.android.gms.internal.ads.coz r0 = r0.S()
                        java.lang.String r0 = r0.f26197b
                        r12 = r0
                        com.google.android.gms.ads.internal.util.zzj r0 = com.google.android.gms.ads.internal.zzr.zzkv()
                        r0 = r10
                        com.google.android.gms.internal.ads.aeu r0 = (com.google.android.gms.internal.ads.aeu) r0
                        android.content.Context r0 = r0.getContext()
                        boolean r0 = com.google.android.gms.ads.internal.util.zzj.zzbd(r0)
                        if (r0 == 0) goto L_0x0070
                        int r0 = com.google.android.gms.internal.ads.brp.f24957b
                        r16 = r0
                        goto L_0x0075
                    L_0x0070:
                        int r0 = com.google.android.gms.internal.ads.brp.f24956a
                        r16 = r0
                    L_0x0075:
                        r0 = r13
                        com.google.android.gms.internal.ads.brz r1 = new com.google.android.gms.internal.ads.brz
                        r2 = r1
                        r3 = r14
                        r4 = r12
                        r5 = r11
                        r6 = r16
                        r2.<init>(r3, r4, r5, r6)
                        r0.a(r1)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cpt.a(java.lang.Object, java.util.Map):void");
                }
            });
            a("/httpTrack", new hi(cusVar, brsVar) { // from class: com.google.android.gms.internal.ads.cpv

                /* renamed from: a  reason: collision with root package name */
                private final cus f26239a;

                /* renamed from: b  reason: collision with root package name */
                private final brs f26240b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f26239a = cusVar;
                    this.f26240b = brsVar;
                }

                @Override // com.google.android.gms.internal.ads.hi
                public final void a(Object obj, Map map) {
                    cus cusVar2 = this.f26239a;
                    brs brsVar2 = this.f26240b;
                    adh adhVar = (adh) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        zzd.zzez("URL missing from httpTrack GMSG.");
                    } else if (!adhVar.q().ad) {
                        cusVar2.a(str);
                    } else {
                        brsVar2.a(new brz(zzr.zzlc().a(), ((aen) adhVar).S().f26197b, str, brp.f24957b));
                    }
                }
            });
        }
        if (zzr.zzlt().a(this.f23158a.getContext())) {
            a("/logScionEvent", new ho(this.f23158a.getContext()));
        }
        if (hkVar != null) {
            a("/setInterstitialProperties", new hl(hkVar));
        }
        this.h = eirVar;
        this.i = zzpVar;
        this.l = goVar;
        this.m = gqVar;
        this.s = zzxVar;
        this.u = zzaVar;
        this.f23161d = z;
    }

    public final void a(String str, hi<? super adt> hiVar) {
        synchronized (this.f23160c) {
            List<hi<? super adt>> list = this.f23159b.get(str);
            List<hi<? super adt>> list2 = list;
            if (list == null) {
                list2 = new CopyOnWriteArrayList<>();
                this.f23159b.put(str, list2);
            }
            list2.add(hiVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void a(boolean z) {
        synchronized (this.f23160c) {
            this.q = z;
        }
    }

    public final void a(boolean z, int i) {
        eir eirVar = (!this.f23158a.G() || this.f23158a.z().d()) ? this.h : null;
        zzp zzpVar = this.i;
        zzx zzxVar = this.s;
        adt adtVar = this.f23158a;
        a(new AdOverlayInfoParcel(eirVar, zzpVar, zzxVar, adtVar, z, i, adtVar.k()));
    }

    public final void a(boolean z, int i, String str) {
        boolean G = this.f23158a.G();
        eir eirVar = (!G || this.f23158a.z().d()) ? this.h : null;
        ady adyVar = G ? null : new ady(this.f23158a, this.i);
        go goVar = this.l;
        gq gqVar = this.m;
        zzx zzxVar = this.s;
        adt adtVar = this.f23158a;
        a(new AdOverlayInfoParcel(eirVar, adyVar, goVar, gqVar, zzxVar, adtVar, z, i, str, adtVar.k()));
    }

    public final void a(boolean z, int i, String str, String str2) {
        boolean G = this.f23158a.G();
        eir eirVar = (!G || this.f23158a.z().d()) ? this.h : null;
        ady adyVar = G ? null : new ady(this.f23158a, this.i);
        go goVar = this.l;
        gq gqVar = this.m;
        zzx zzxVar = this.s;
        adt adtVar = this.f23158a;
        a(new AdOverlayInfoParcel(eirVar, adyVar, goVar, gqVar, zzxVar, adtVar, z, i, str, str2, adtVar.k()));
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void b(int i, int i2) {
        pp ppVar = this.v;
        if (ppVar != null) {
            ppVar.f28293c = i;
            ppVar.f28294d = i2;
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final boolean b() {
        boolean z;
        synchronized (this.f23160c) {
            z = this.o;
        }
        return z;
    }

    public final boolean c() {
        boolean z;
        synchronized (this.f23160c) {
            z = this.p;
        }
        return z;
    }

    public final boolean d() {
        boolean z;
        synchronized (this.f23160c) {
            z = this.q;
        }
        return z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener e() {
        synchronized (this.f23160c) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener f() {
        synchronized (this.f23160c) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void g() {
        vy vyVar = this.e;
        if (vyVar != null) {
            WebView r = this.f23158a.r();
            if (v.E(r)) {
                a(r, vyVar, 10);
                return;
            }
            n();
            this.A = new adw(this, vyVar);
            this.f23158a.s().addOnAttachStateChangeListener(this.A);
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void h() {
        synchronized (this.f23160c) {
            this.r = true;
        }
        this.y++;
        o();
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void i() {
        this.y--;
        o();
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void j() {
        ehk ehkVar = this.g;
        if (ehkVar != null) {
            ehkVar.a(ehn.a.b.DELAY_PAGE_LOAD_CANCELLED_AD);
        }
        this.x = true;
        o();
        this.f23158a.destroy();
    }

    public final void k() {
        vy vyVar = this.e;
        if (vyVar != null) {
            vyVar.d();
            this.e = null;
        }
        n();
        synchronized (this.f23160c) {
            this.f23159b.clear();
            this.h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            this.m = null;
            this.f23161d = false;
            this.o = false;
            this.p = false;
            this.r = false;
            this.s = null;
            this.n = null;
            pp ppVar = this.v;
            if (ppVar != null) {
                ppVar.a(true);
                this.v = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void l() {
        synchronized (this.f23160c) {
            this.f23161d = false;
            this.o = true;
            zd.e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.adv

                /* renamed from: a  reason: collision with root package name */
                private final ads f23163a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23163a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    ads adsVar = this.f23163a;
                    adsVar.f23158a.L();
                    zze x = adsVar.f23158a.x();
                    if (x != null) {
                        x.zzwi();
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.afe
    public final void m() {
        synchronized (this.f23160c) {
            this.p = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.eir
    public void onAdClicked() {
        eir eirVar = this.h;
        if (eirVar != null) {
            eirVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String valueOf = String.valueOf(str);
        zzd.zzed(valueOf.length() != 0 ? "Loading resource: ".concat(valueOf) : new String("Loading resource: "));
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            a(parse);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.f23160c) {
            if (this.f23158a.H()) {
                zzd.zzed("Blank page loaded, 1...");
                this.f23158a.I();
                return;
            }
            this.w = true;
            afg afgVar = this.k;
            if (afgVar != null) {
                afgVar.a();
                this.k = null;
            }
            o();
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.f23158a.a(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return a(str, Collections.emptyMap());
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
        if (!"gmsg".equalsIgnoreCase(parse.getScheme()) || !"mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            if (this.f23161d && webView == this.f23158a.r()) {
                String scheme = parse.getScheme();
                if ("http".equalsIgnoreCase(scheme) || Constants.HTTPS.equalsIgnoreCase(scheme)) {
                    eir eirVar = this.h;
                    if (eirVar != null) {
                        eirVar.onAdClicked();
                        vy vyVar = this.e;
                        if (vyVar != null) {
                            vyVar.a(str);
                        }
                        this.h = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (!this.f23158a.r().willNotDraw()) {
                try {
                    die E = this.f23158a.E();
                    uri = parse;
                    if (E != null) {
                        uri = parse;
                        if (E.a(parse)) {
                            uri = E.a(parse, this.f23158a.getContext(), this.f23158a.s(), this.f23158a.d());
                        }
                    }
                } catch (zzeh e) {
                    String valueOf2 = String.valueOf(str);
                    zzd.zzez(valueOf2.length() != 0 ? "Unable to append parameter to URL: ".concat(valueOf2) : new String("Unable to append parameter to URL: "));
                    uri = parse;
                }
                zza zzaVar = this.u;
                if (zzaVar == null || zzaVar.zzkc()) {
                    a(new zzb("android.intent.action.VIEW", uri.toString(), null, null, null, null, null, null));
                    return true;
                }
                this.u.zzbk(str);
                return true;
            }
            String valueOf3 = String.valueOf(str);
            zzd.zzez(valueOf3.length() != 0 ? "AdWebView unable to handle URL: ".concat(valueOf3) : new String("AdWebView unable to handle URL: "));
            return true;
        }
        a(parse);
        return true;
    }
}
