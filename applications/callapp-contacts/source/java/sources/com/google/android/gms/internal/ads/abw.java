package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.view.Surface;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/abw.class */
public final class abw implements dvk, dwl, eao, ecp<ecb>, edu {

    /* renamed from: a */
    static int f39859a;

    /* renamed from: b */
    static int f39860b;

    /* renamed from: c */
    final Context f39861c;

    /* renamed from: d */
    final abx f39862d;

    /* renamed from: e */
    final dvy f39863e;

    /* renamed from: f */
    final aay f39864f;

    /* renamed from: g */
    dvl f39865g;

    /* renamed from: h */
    acg f39866h;

    /* renamed from: i */
    int f39867i;

    /* renamed from: j */
    int f39868j;

    /* renamed from: k */
    final String f39869k;

    /* renamed from: l */
    final int f39870l;

    /* renamed from: m */
    Set<WeakReference<abq>> f39871m = new HashSet();

    /* renamed from: n */
    private final dvy f39872n;

    /* renamed from: o */
    private final ebp f39873o;

    /* renamed from: p */
    private ByteBuffer f39874p;

    /* renamed from: q */
    private boolean f39875q;

    /* renamed from: r */
    private final WeakReference<abb> f39876r;

    /* renamed from: s */
    private long f39877s;

    /* renamed from: t */
    private final ArrayList<ecg> f39878t;

    /* renamed from: u */
    private volatile abs f39879u;

    public abw(Context context, aay aayVar, abb abbVar) {
        this.f39861c = context;
        this.f39864f = aayVar;
        this.f39876r = new WeakReference<>(abbVar);
        abx abxVar = new abx();
        this.f39862d = abxVar;
        edo edoVar = new edo(context, dzs.f48441a, 0L, zzj.zzegq, this, -1);
        this.f39872n = edoVar;
        dxa dxaVar = new dxa(dzs.f48441a, zzj.zzegq, this);
        this.f39863e = dxaVar;
        ebo eboVar = new ebo();
        this.f39873o = eboVar;
        if (zzd.zzyz()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
            sb.append("ExoPlayerAdapter initialize ");
            sb.append(valueOf);
            zzd.zzed(sb.toString());
        }
        f39859a++;
        int i = 0;
        dvo dvoVar = new dvo(new dvy[]{dxaVar, edoVar}, eboVar, abxVar);
        this.f39865g = dvoVar;
        dvoVar.mo15650a(this);
        this.f39867i = 0;
        this.f39877s = 0L;
        this.f39868j = 0;
        this.f39878t = new ArrayList<>();
        this.f39879u = null;
        this.f39869k = (abbVar == null || abbVar.mo13742h() == null) ? "" : abbVar.mo13742h();
        this.f39870l = abbVar != null ? abbVar.mo13741i() : i;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42986l)).booleanValue()) {
            this.f39865g.mo15636i();
        }
        if (abbVar != null && abbVar.mo13735o() > 0) {
            this.f39865g.mo15652a(abbVar.mo13735o());
        }
        if (abbVar == null || abbVar.mo13734p() <= 0) {
            return;
        }
        this.f39865g.mo15645b(abbVar.mo13734p());
    }

    /* renamed from: a */
    private static long m18896a(Map<String, List<String>> map) {
        boolean z;
        if (map != null) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                if (entry != null) {
                    try {
                        if (entry.getKey() != null) {
                            String key = entry.getKey();
                            int length = "content-length".length();
                            if ("content-length" != key) {
                                if (length == key.length()) {
                                    for (int i = 0; i < length; i++) {
                                        char charAt = "content-length".charAt(i);
                                        char charAt2 = key.charAt(i);
                                        if (charAt != charAt2) {
                                            int m17077a = cxm.m17077a(charAt);
                                            if (m17077a < 26 && m17077a == cxm.m17077a(charAt2)) {
                                            }
                                        }
                                    }
                                }
                                z = false;
                                if (z && entry.getValue() != null && entry.getValue().get(0) != null) {
                                    return Long.parseLong(entry.getValue().get(0));
                                }
                            }
                            z = true;
                            if (z) {
                                return Long.parseLong(entry.getValue().get(0));
                            }
                            continue;
                        } else {
                            continue;
                        }
                    } catch (NumberFormatException e) {
                    }
                }
            }
            return 0L;
        }
        return 0L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0055, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.ekb.m14831e().m18571a(com.google.android.gms.internal.ads.C12187aq.f42728bl)).booleanValue() == false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.eau m18898a(android.net.Uri r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abw.m18898a(android.net.Uri, java.lang.String):com.google.android.gms.internal.ads.eau");
    }

    /* renamed from: e */
    private final boolean m18889e() {
        return this.f39879u != null && this.f39879u.f39840c;
    }

    /* renamed from: a */
    public final void m18899a() {
        dvl dvlVar = this.f39865g;
        if (dvlVar != null) {
            dvlVar.mo15644b(this);
            this.f39865g.mo15641d();
            this.f39865g = null;
            f39860b--;
        }
    }

    @Override // com.google.android.gms.internal.ads.edu
    /* renamed from: a */
    public final void mo15137a(int i) {
        this.f39868j += i;
    }

    @Override // com.google.android.gms.internal.ads.edu
    /* renamed from: a */
    public final void mo15136a(int i, int i2) {
        acg acgVar = this.f39866h;
        if (acgVar != null) {
            acgVar.mo13845a(i, i2);
        }
    }

    /* renamed from: a */
    public final void m18897a(Surface surface, boolean z) {
        if (this.f39865g == null) {
            return;
        }
        dvm dvmVar = new dvm(this.f39872n, 1, surface);
        if (z) {
            this.f39865g.mo15643b(dvmVar);
        } else {
            this.f39865g.mo15647a(dvmVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.dvk
    /* renamed from: a */
    public final void mo15655a(zzhe zzheVar) {
        acg acgVar = this.f39866h;
        if (acgVar != null) {
            acgVar.mo13842a("onPlayerError", zzheVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.edu
    /* renamed from: a */
    public final void mo15135a(zzht zzhtVar) {
        abb abbVar = this.f39876r.get();
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue() || abbVar == null || zzhtVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("frameRate", String.valueOf(zzhtVar.zzahs));
        hashMap.put("bitRate", String.valueOf(zzhtVar.zzahk));
        int i = zzhtVar.width;
        int i2 = zzhtVar.height;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        hashMap.put("resolution", sb.toString());
        hashMap.put("videoMime", zzhtVar.zzahn);
        hashMap.put("videoSampleMime", zzhtVar.zzaho);
        hashMap.put("videoCodec", zzhtVar.zzahl);
        abbVar.mo13770a("onMetadataEvent", hashMap);
    }

    @Override // com.google.android.gms.internal.ads.eao
    /* renamed from: a */
    public final void mo15365a(IOException iOException) {
        if (this.f39866h != null) {
            if (this.f39864f.f39744k) {
                this.f39866h.mo13836b("onLoadException", iOException);
            } else {
                this.f39866h.mo13842a("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ecp
    /* renamed from: a */
    public final /* synthetic */ void mo15258a(ecb ecbVar) {
        ecb ecbVar2 = ecbVar;
        if (ecbVar2 instanceof ecg) {
            this.f39878t.add((ecg) ecbVar2);
        } else if (!(ecbVar2 instanceof abs)) {
        } else {
            this.f39879u = (abs) ecbVar2;
            abb abbVar = this.f39876r.get();
            if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue() || abbVar == null || !this.f39879u.f39839b) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("gcacheHit", String.valueOf(this.f39879u.f39841d));
            hashMap.put("gcacheDownloaded", String.valueOf(this.f39879u.f39842e));
            zzj.zzegq.post(new Runnable(abbVar, hashMap) { // from class: com.google.android.gms.internal.ads.abz

                /* renamed from: a */
                private final abb f39888a;

                /* renamed from: b */
                private final Map f39889b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f39888a = abbVar;
                    this.f39889b = hashMap;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f39888a.mo13770a("onGcacheInfoEvent", this.f39889b);
                }
            });
        }
    }

    /* renamed from: a */
    public final void m18895a(boolean z) {
        if (this.f39865g == null) {
            return;
        }
        for (int i = 0; i < this.f39865g.mo15640e(); i++) {
            this.f39873o.m15304a(i, !z);
        }
    }

    /* renamed from: a */
    public final void m18894a(Uri[] uriArr, String str) {
        m18893a(uriArr, str, ByteBuffer.allocate(0), false);
    }

    /* renamed from: a */
    public final void m18893a(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        eav eavVar;
        if (this.f39865g == null) {
            return;
        }
        this.f39874p = byteBuffer;
        this.f39875q = z;
        if (uriArr.length == 1) {
            eavVar = m18898a(uriArr[0], str);
        } else {
            eau[] eauVarArr = new eau[uriArr.length];
            for (int i = 0; i < uriArr.length; i++) {
                eauVarArr[i] = m18898a(uriArr[i], str);
            }
            eavVar = new eav(eauVarArr);
        }
        this.f39865g.mo15649a(eavVar);
        f39860b++;
    }

    /* renamed from: b */
    public final long m18892b() {
        if (!m18889e()) {
            return this.f39867i;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.dvk
    /* renamed from: b */
    public final void mo15654b(int i) {
        acg acgVar = this.f39866h;
        if (acgVar != null) {
            acgVar.mo13825g(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.dwl
    /* renamed from: b */
    public final void mo15568b(zzht zzhtVar) {
        abb abbVar = this.f39876r.get();
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42728bl)).booleanValue() || abbVar == null || zzhtVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("audioMime", zzhtVar.zzahn);
        hashMap.put("audioSampleMime", zzhtVar.zzaho);
        hashMap.put("audioCodec", zzhtVar.zzahl);
        abbVar.mo13770a("onMetadataEvent", hashMap);
    }

    /* renamed from: c */
    public final long m18891c() {
        if (m18889e() && this.f39879u.f39841d) {
            return Math.min(this.f39867i, this.f39879u.f39843f);
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.ecp
    /* renamed from: c */
    public final /* synthetic */ void mo15257c(int i) {
        this.f39867i += i;
    }

    /* renamed from: d */
    public final long m18890d() {
        if (!m18889e()) {
            while (!this.f39878t.isEmpty()) {
                this.f39877s += m18896a(this.f39878t.remove(0).mo15277b());
            }
            return this.f39877s;
        }
        return this.f39879u.m18903b();
    }

    public final void finalize() throws Throwable {
        f39859a--;
        if (zzd.zzyz()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 26);
            sb.append("ExoPlayerAdapter finalize ");
            sb.append(valueOf);
            zzd.zzed(sb.toString());
        }
    }
}
