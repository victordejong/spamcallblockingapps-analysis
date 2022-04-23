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

    /* renamed from: a  reason: collision with root package name */
    static int f23076a;

    /* renamed from: b  reason: collision with root package name */
    static int f23077b;

    /* renamed from: c  reason: collision with root package name */
    final Context f23078c;

    /* renamed from: d  reason: collision with root package name */
    final abx f23079d;
    final dvy e;
    final aay f;
    dvl g;
    acg h;
    int i;
    int j;
    final String k;
    final int l;
    Set<WeakReference<abq>> m = new HashSet();
    private final dvy n;
    private final ebp o;
    private ByteBuffer p;
    private boolean q;
    private final WeakReference<abb> r;
    private long s;
    private final ArrayList<ecg> t;
    private volatile abs u;

    public abw(Context context, aay aayVar, abb abbVar) {
        this.f23078c = context;
        this.f = aayVar;
        this.r = new WeakReference<>(abbVar);
        abx abxVar = new abx();
        this.f23079d = abxVar;
        edo edoVar = new edo(context, dzs.f27501a, 0L, zzj.zzegq, this, -1);
        this.n = edoVar;
        dxa dxaVar = new dxa(dzs.f27501a, zzj.zzegq, this);
        this.e = dxaVar;
        ebo eboVar = new ebo();
        this.o = eboVar;
        if (zzd.zzyz()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
            sb.append("ExoPlayerAdapter initialize ");
            sb.append(valueOf);
            zzd.zzed(sb.toString());
        }
        f23076a++;
        int i = 0;
        dvo dvoVar = new dvo(new dvy[]{dxaVar, edoVar}, eboVar, abxVar);
        this.g = dvoVar;
        dvoVar.a(this);
        this.i = 0;
        this.s = 0L;
        this.j = 0;
        this.t = new ArrayList<>();
        this.u = null;
        this.k = (abbVar == null || abbVar.h() == null) ? "" : abbVar.h();
        this.l = abbVar != null ? abbVar.i() : i;
        if (((Boolean) ekb.e().a(aq.l)).booleanValue()) {
            this.g.i();
        }
        if (abbVar != null && abbVar.o() > 0) {
            this.g.a(abbVar.o());
        }
        if (abbVar != null && abbVar.p() > 0) {
            this.g.b(abbVar.p());
        }
    }

    private static long a(Map<String, List<String>> map) {
        boolean z;
        if (map == null) {
            return 0L;
        }
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
                                        int a2 = cxm.a(charAt);
                                        if (a2 < 26 && a2 == cxm.a(charAt2)) {
                                        }
                                    }
                                }
                            }
                            z = false;
                            if (!(!z || entry.getValue() == null || entry.getValue().get(0) == null)) {
                                return Long.parseLong(entry.getValue().get(0));
                            }
                        }
                        z = true;
                        if (!z) {
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

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0055, code lost:
        if (((java.lang.Boolean) com.google.android.gms.internal.ads.ekb.e().a(com.google.android.gms.internal.ads.aq.bl)).booleanValue() == false) goto L_0x0058;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.eau a(android.net.Uri r12, final java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.abw.a(android.net.Uri, java.lang.String):com.google.android.gms.internal.ads.eau");
    }

    private final boolean e() {
        return this.u != null && this.u.f23071c;
    }

    public final void a() {
        dvl dvlVar = this.g;
        if (dvlVar != null) {
            dvlVar.b(this);
            this.g.d();
            this.g = null;
            f23077b--;
        }
    }

    @Override // com.google.android.gms.internal.ads.edu
    public final void a(int i) {
        this.j += i;
    }

    @Override // com.google.android.gms.internal.ads.edu
    public final void a(int i, int i2) {
        acg acgVar = this.h;
        if (acgVar != null) {
            acgVar.a(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Surface surface, boolean z) {
        if (this.g != null) {
            dvm dvmVar = new dvm(this.n, 1, surface);
            if (z) {
                this.g.b(dvmVar);
            } else {
                this.g.a(dvmVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dvk
    public final void a(zzhe zzheVar) {
        acg acgVar = this.h;
        if (acgVar != null) {
            acgVar.a("onPlayerError", zzheVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.edu
    public final void a(zzht zzhtVar) {
        abb abbVar = this.r.get();
        if (((Boolean) ekb.e().a(aq.bl)).booleanValue() && abbVar != null && zzhtVar != null) {
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
            abbVar.a("onMetadataEvent", hashMap);
        }
    }

    @Override // com.google.android.gms.internal.ads.eao
    public final void a(IOException iOException) {
        if (this.h == null) {
            return;
        }
        if (this.f.k) {
            this.h.b("onLoadException", iOException);
        } else {
            this.h.a("onLoadError", iOException);
        }
    }

    @Override // com.google.android.gms.internal.ads.ecp
    public final /* synthetic */ void a(ecb ecbVar) {
        ecb ecbVar2 = ecbVar;
        if (ecbVar2 instanceof ecg) {
            this.t.add((ecg) ecbVar2);
        } else if (ecbVar2 instanceof abs) {
            this.u = (abs) ecbVar2;
            final abb abbVar = this.r.get();
            if (((Boolean) ekb.e().a(aq.bl)).booleanValue() && abbVar != null && this.u.f23070b) {
                final HashMap hashMap = new HashMap();
                hashMap.put("gcacheHit", String.valueOf(this.u.f23072d));
                hashMap.put("gcacheDownloaded", String.valueOf(this.u.e));
                zzj.zzegq.post(new Runnable(abbVar, hashMap) { // from class: com.google.android.gms.internal.ads.abz

                    /* renamed from: a  reason: collision with root package name */
                    private final abb f23085a;

                    /* renamed from: b  reason: collision with root package name */
                    private final Map f23086b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23085a = abbVar;
                        this.f23086b = hashMap;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f23085a.a("onGcacheInfoEvent", this.f23086b);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        if (this.g != null) {
            for (int i = 0; i < this.g.e(); i++) {
                this.o.a(i, !z);
            }
        }
    }

    public final void a(Uri[] uriArr, String str) {
        a(uriArr, str, ByteBuffer.allocate(0), false);
    }

    public final void a(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        eau eauVar;
        if (this.g != null) {
            this.p = byteBuffer;
            this.q = z;
            if (uriArr.length == 1) {
                eauVar = a(uriArr[0], str);
            } else {
                eau[] eauVarArr = new eau[uriArr.length];
                for (int i = 0; i < uriArr.length; i++) {
                    eauVarArr[i] = a(uriArr[i], str);
                }
                eauVar = new eav(eauVarArr);
            }
            this.g.a(eauVar);
            f23077b++;
        }
    }

    public final long b() {
        if (!e()) {
            return this.i;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.dvk
    public final void b(int i) {
        acg acgVar = this.h;
        if (acgVar != null) {
            acgVar.g(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.dwl
    public final void b(zzht zzhtVar) {
        abb abbVar = this.r.get();
        if (((Boolean) ekb.e().a(aq.bl)).booleanValue() && abbVar != null && zzhtVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("audioMime", zzhtVar.zzahn);
            hashMap.put("audioSampleMime", zzhtVar.zzaho);
            hashMap.put("audioCodec", zzhtVar.zzahl);
            abbVar.a("onMetadataEvent", hashMap);
        }
    }

    public final long c() {
        if (e() && this.u.f23072d) {
            return Math.min(this.i, this.u.f);
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.ecp
    public final /* synthetic */ void c(int i) {
        this.i += i;
    }

    public final long d() {
        if (e()) {
            return this.u.b();
        }
        while (!this.t.isEmpty()) {
            this.s += a(this.t.remove(0).b());
        }
        return this.s;
    }

    public final void finalize() throws Throwable {
        f23076a--;
        if (zzd.zzyz()) {
            String valueOf = String.valueOf(this);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 26);
            sb.append("ExoPlayerAdapter finalize ");
            sb.append(valueOf);
            zzd.zzed(sb.toString());
        }
    }
}
