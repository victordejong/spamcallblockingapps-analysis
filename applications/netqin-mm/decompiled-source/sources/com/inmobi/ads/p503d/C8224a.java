package com.inmobi.ads.p503d;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.C8068ac;
import com.inmobi.ads.C8099aj;
import com.inmobi.ads.C8175bj;
import com.inmobi.ads.C8176bk;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.C8240f;
import com.inmobi.ads.C8298p;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.commons.core.configs.AbstractC8346a;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.core.utilities.p516b.C8398b;
import com.inmobi.commons.p508a.C8326a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.inmobi.ads.d.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/d/a.class */
public class C8224a implements C8348b.AbstractC8351c {

    /* renamed from: b */
    public static C8197c f32106b;

    /* renamed from: d */
    public static final String f32107d = "a";

    /* renamed from: e */
    public static volatile C8224a f32108e;

    /* renamed from: f */
    public static volatile C8224a f32109f;

    /* renamed from: g */
    public static volatile C8224a f32110g;

    /* renamed from: c */
    public String f32114c;

    /* renamed from: a */
    public static ConcurrentHashMap<C8175bj, AbstractC8252i> f32105a = new ConcurrentHashMap<>(8, 0.9f, 3);

    /* renamed from: h */
    public static final Object f32111h = new Object();

    /* renamed from: i */
    public static final Object f32112i = new Object();

    /* renamed from: j */
    public static final Object f32113j = new Object();

    /* renamed from: com.inmobi.ads.d.a$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/d/a$a.class */
    public static final class C8232a implements AbstractC8252i.AbstractC8285e {

        /* renamed from: a */
        public C8175bj f32129a;

        public C8232a(C8175bj bjVar) {
            this.f32129a = bjVar;
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8285e
        /* renamed from: a */
        public final void mo5991a(AbstractC8252i iVar) {
            String unused = C8224a.f32107d;
            C8224a.f32105a.remove(this.f32129a);
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8285e
        /* renamed from: a */
        public final void mo5990a(AbstractC8252i iVar, InMobiAdRequestStatus inMobiAdRequestStatus) {
            String unused = C8224a.f32107d;
            new StringBuilder("onAdLoadFailed called. Status:").append(inMobiAdRequestStatus.getMessage());
            C8224a.f32105a.remove(this.f32129a);
            if (InMobiAdRequestStatus.StatusCode.NO_FILL.equals(inMobiAdRequestStatus.getStatusCode())) {
                iVar.m6050d("PreLoadServerNoFill");
            }
        }
    }

    public C8224a(String str) {
        this.f32114c = str;
        f32106b = new C8197c();
        C8348b.m5847a().m5844a(f32106b, this);
        C8366b.m5794a().m5788a("ads", f32106b.f31993l);
    }

    /* renamed from: a */
    public static C8224a m6146a(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == -1396342996) {
            if (str.equals("banner")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode != -1052618729) {
            if (hashCode == 104431 && str.equals("int")) {
                c = 2;
            }
            c = 65535;
        } else {
            if (str.equals("native")) {
                c = 1;
            }
            c = 65535;
        }
        if (c == 0) {
            return m6139d();
        }
        if (c == 1) {
            return m6137f();
        }
        if (c == 2) {
            return m6138e();
        }
        throw new IllegalArgumentException("Unknown adType passed");
    }

    /* renamed from: a */
    public static String m6143a(Map<String, String> map) {
        return (map == null || map.get("tp") == null) ? "" : map.get("tp");
    }

    /* renamed from: a */
    public static /* synthetic */ void m6147a(C8224a aVar) {
        Context b = C8326a.m5891b();
        if (b != null) {
            new Handler(b.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.d.a.6
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        String unused = C8224a.f32107d;
                        Iterator<Map.Entry<C8175bj, AbstractC8252i>> it = C8224a.f32105a.entrySet().iterator();
                        while (it.hasNext()) {
                            it.next().getValue().mo6027t();
                            it.remove();
                        }
                    } catch (Exception e) {
                        String unused2 = C8224a.f32107d;
                        new StringBuilder("SDK encountered unexpected error in flushing ad unit cache; ").append(e.getMessage());
                        C8328a.m5878a().m5875a(new C8365a(e));
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public static void m6144a(String str, Map<String, Object> map, C8240f fVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", fVar.f32147e);
        hashMap.put("plId", Long.valueOf(fVar.f32143a));
        hashMap.put("isPreloaded", 1);
        hashMap.put("networkType", Integer.valueOf(C8398b.m5691a()));
        hashMap.put("ts", Long.valueOf(System.currentTimeMillis()));
        if (map.get("clientRequestId") == null) {
            hashMap.put("clientRequestId", fVar.f32151i);
        }
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue());
        }
        try {
            C8366b.m5794a();
            C8366b.m5789a("ads", str, hashMap);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
            sb.append(e.getMessage());
            sb.append(")");
        }
    }

    /* renamed from: b */
    public static AbstractC8252i m6141b(String str, Context context, C8175bj bjVar) {
        char c = 65535;
        try {
            int hashCode = str.hashCode();
            if (hashCode != -1396342996) {
                if (hashCode != -1052618729) {
                    if (hashCode == 104431 && str.equals("int")) {
                        c = 1;
                    }
                } else if (str.equals("native")) {
                    c = 2;
                }
            } else if (str.equals("banner")) {
                c = 0;
            }
            if (c == 0) {
                return C8298p.m5976a(context, bjVar, (AbstractC8252i.AbstractC8282b) null, 1);
            }
            if (c == 1) {
                return C8068ac.C8075a.m6528a(C8326a.m5891b(), bjVar, null);
            }
            if (c != 2) {
                return null;
            }
            return C8099aj.m6455a(context, bjVar, (AbstractC8252i.AbstractC8282b) null, 1);
        } catch (IllegalStateException e) {
            e.getMessage();
            return null;
        }
    }

    /* renamed from: d */
    public static C8224a m6139d() {
        C8224a aVar = f32108e;
        C8224a aVar2 = aVar;
        if (aVar == null) {
            synchronized (f32111h) {
                C8224a aVar3 = f32108e;
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = new C8224a("banner");
                    f32108e = aVar2;
                }
            }
        }
        return aVar2;
    }

    /* renamed from: e */
    public static C8224a m6138e() {
        C8224a aVar = f32109f;
        C8224a aVar2 = aVar;
        if (aVar == null) {
            synchronized (f32112i) {
                C8224a aVar3 = f32109f;
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = new C8224a("int");
                    f32109f = aVar2;
                }
            }
        }
        return aVar2;
    }

    /* renamed from: f */
    public static C8224a m6137f() {
        C8224a aVar = f32110g;
        C8224a aVar2 = aVar;
        if (aVar == null) {
            synchronized (f32113j) {
                C8224a aVar3 = f32110g;
                aVar2 = aVar3;
                if (aVar3 == null) {
                    aVar2 = new C8224a("native");
                    f32110g = aVar2;
                }
            }
        }
        return aVar2;
    }

    /* renamed from: g */
    private void m6136g() {
        Iterator<Map.Entry<C8175bj, AbstractC8252i>> it = f32105a.entrySet().iterator();
        while (it.hasNext()) {
            try {
                Map.Entry<C8175bj, AbstractC8252i> next = it.next();
                final AbstractC8252i value = next.getValue();
                if (value.m6043h()) {
                    StringBuilder sb = new StringBuilder("cleanUpExpiredCachedAdUnits. pid:");
                    sb.append(next.getKey().f31894a);
                    sb.append(" tp:");
                    sb.append(next.getKey().f31895b);
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.d.a.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                value.mo6027t();
                            } catch (Exception e) {
                                String unused = C8224a.f32107d;
                                new StringBuilder("Encountered an unexpected error clearing the ad unit: ").append(e.getMessage());
                                Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered an unexpected error clearing an old ad");
                                C8328a.m5878a().m5875a(new C8365a(e));
                            }
                        }
                    });
                    it.remove();
                }
            } catch (Exception e) {
                new StringBuilder("SDK encountered an unexpected error in expiring ad units; ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
                return;
            }
        }
    }

    /* renamed from: h */
    private void m6135h() {
        if (f32106b.m6194c(this.f32114c).f32033a) {
            C8176bk.m6256a();
            int a = C8176bk.m6255a(f32106b.m6194c(this.f32114c).f32034b, this.f32114c);
            if (a > 0) {
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("type", this.f32114c);
                    hashMap.put("count", Integer.valueOf(a));
                    C8366b.m5794a();
                    C8366b.m5789a("ads", "PreLoadPidExpiry", hashMap);
                } catch (Exception e) {
                    StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                    sb.append(e.getMessage());
                    sb.append(")");
                }
            }
        }
    }

    /* renamed from: a */
    public final void m6149a() {
        Application application = (Application) C8326a.m5891b();
        if (application != null) {
            application.registerComponentCallbacks(new ComponentCallbacks2() { // from class: com.inmobi.ads.d.a.4
                @Override // android.content.ComponentCallbacks
                public final void onConfigurationChanged(Configuration configuration) {
                }

                @Override // android.content.ComponentCallbacks
                public final void onLowMemory() {
                }

                @Override // android.content.ComponentCallbacks2
                public final void onTrimMemory(int i) {
                    if (i == 15) {
                        C8224a.m6147a(C8224a.this);
                    }
                }
            });
        }
        m6135h();
        m6136g();
        if (f32106b.m6194c(this.f32114c).f32033a) {
            C8176bk.m6256a();
            ArrayList arrayList = (ArrayList) C8176bk.m6254a(this.f32114c);
            for (int i = 0; i < arrayList.size(); i++) {
                final C8175bj bjVar = (C8175bj) arrayList.get(i);
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.d.a.1

                    /* renamed from: c */
                    public AbstractC8252i.AbstractC8285e f32117c;

                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            Context b = C8326a.m5891b();
                            if (b != null) {
                                String unused = C8224a.f32107d;
                                StringBuilder sb = new StringBuilder("preFetchAdUnit. pid:");
                                sb.append(bjVar.f31894a);
                                sb.append(" tp:");
                                sb.append(bjVar.f31895b);
                                if (bjVar.f31896c == null && bjVar.f31895b != null) {
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("tp", bjVar.f31895b);
                                    bjVar.f31896c = hashMap;
                                }
                                this.f32117c = new C8232a(bjVar);
                                AbstractC8252i b2 = C8224a.m6141b(C8224a.this.f32114c, b, bjVar);
                                if (b2 != null) {
                                    b2.f32197e = bjVar.f31897d;
                                    b2.f32198f = bjVar.f31896c;
                                    b2.f32206n = true;
                                    b2.f32209q = this.f32117c;
                                    b2.mo6066a(true);
                                }
                            }
                        } catch (Exception e) {
                            String unused2 = C8224a.f32107d;
                            new StringBuilder("SDK encountered an unexpected error preloading ad units; ").append(e.getMessage());
                            C8328a.m5878a().m5875a(new C8365a(e));
                        }
                    }
                });
            }
        }
    }

    /* renamed from: a */
    public final void m6148a(final C8175bj bjVar) {
        if (f32106b.m6194c(this.f32114c).f32033a) {
            new Thread() { // from class: com.inmobi.ads.d.a.7
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(bjVar);
                    int a = C8176bk.m6256a().m6253a(arrayList, C8224a.f32106b.m6194c(C8224a.this.f32114c).f32035c);
                    if (a > 0) {
                        HashMap hashMap = new HashMap();
                        hashMap.put("count", Integer.valueOf(a));
                        hashMap.put("type", C8224a.this.f32114c);
                        hashMap.put("plId", Long.valueOf(bjVar.f31894a));
                        C8366b.m5794a();
                        C8366b.m5789a("ads", "PreLoadPidOverflow", hashMap);
                    }
                }
            }.start();
        }
    }

    @Override // com.inmobi.commons.core.configs.C8348b.AbstractC8351c
    /* renamed from: a */
    public final void mo5529a(AbstractC8346a aVar) {
        f32106b = (C8197c) aVar;
        C8366b.m5794a().m5788a("ads", f32106b.f31993l);
    }

    /* renamed from: b */
    public final void m6142b() {
        m6135h();
        m6136g();
    }
}
