package com.inmobi.ads;

import android.os.SystemClock;
import com.inmobi.ads.C8047a;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.C8236e;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.p500a.AbstractC8065g;
import com.inmobi.ads.p500a.C8049a;
import com.inmobi.ads.p500a.C8051b;
import com.inmobi.ads.p500a.C8055f;
import com.inmobi.ads.p501b.C8142a;
import com.inmobi.ads.p503d.C8224a;
import com.inmobi.commons.core.utilities.C8406c;
import com.inmobi.commons.core.utilities.p516b.C8401e;
import com.inmobi.commons.p508a.C8326a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.bm */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bm.class */
public class C8178bm implements C8236e.AbstractC8237a {

    /* renamed from: c */
    public static final String f31906c = "bm";

    /* renamed from: b */
    public C8197c.C8201d f31908b;

    /* renamed from: d */
    public final AbstractC8180a f31909d;

    /* renamed from: f */
    public C8240f f31911f;

    /* renamed from: h */
    public boolean f31913h;

    /* renamed from: a */
    public boolean f31907a = false;

    /* renamed from: g */
    public long f31912g = 0;

    /* renamed from: i */
    public final AbstractC8065g f31914i = new AbstractC8065g() { // from class: com.inmobi.ads.bm.1
        @Override // com.inmobi.ads.p500a.AbstractC8065g
        /* renamed from: a */
        public final void mo5553a(C8051b bVar) {
            String unused = C8178bm.f31906c;
            new StringBuilder("onAssetsFetchFailure of batch ").append(bVar == null ? null : bVar.toString());
            ArrayList<Long> arrayList = new ArrayList();
            if (bVar != null) {
                for (C8049a aVar : bVar.f31509a) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("url", aVar.f31492d);
                    hashMap.put("latency", Long.valueOf(aVar.f31489a));
                    hashMap.put("size", Long.valueOf(C8406c.m5651a(aVar.f31493e)));
                    C8178bm.this.f31909d.mo6067a("VideoAssetDownloadFailed", hashMap);
                    for (C8047a aVar2 : C8178bm.this.f31910e.m6157b(aVar.f31492d, C8178bm.this.f31911f == null ? null : C8178bm.this.f31911f.f32145c)) {
                        if (!arrayList.contains(Long.valueOf(aVar2.f31476d))) {
                            arrayList.add(Long.valueOf(aVar2.f31476d));
                        }
                    }
                }
            }
            if (!arrayList.contains(Long.valueOf(C8178bm.this.f31911f.f32143a))) {
                arrayList.add(Long.valueOf(C8178bm.this.f31911f.f32143a));
            }
            for (Long l : arrayList) {
                C8178bm.this.f31909d.mo6063b(l.longValue(), new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE));
            }
        }

        @Override // com.inmobi.ads.p500a.AbstractC8065g
        /* renamed from: b */
        public final void mo5552b(C8051b bVar) {
            String unused = C8178bm.f31906c;
            new StringBuilder("onAssetsFetchSuccess of batch ").append(bVar == null ? null : bVar.toString());
            ArrayList<Long> arrayList = new ArrayList();
            if (bVar != null) {
                for (C8049a aVar : bVar.f31509a) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("url", aVar.f31492d);
                    hashMap.put("latency", Long.valueOf(aVar.f31489a));
                    hashMap.put("size", Long.valueOf(C8406c.m5651a(aVar.f31493e)));
                    hashMap.put("clientRequestId", bVar.f31514f);
                    if (aVar.f31498j) {
                        C8178bm.this.f31909d.mo6067a("GotCachedVideoAsset", hashMap);
                    } else {
                        C8178bm.this.f31909d.mo6067a("VideoAssetDownloaded", hashMap);
                    }
                    List<C8047a> a = C8178bm.this.f31910e.m6162a(aVar.f31492d, C8178bm.this.f31911f == null ? null : C8178bm.this.f31911f.f32145c);
                    String unused2 = C8178bm.f31906c;
                    StringBuilder sb = new StringBuilder("Found ");
                    sb.append(a.size());
                    sb.append(" ads mapping to this asset");
                    for (C8047a aVar2 : a) {
                        if (!arrayList.contains(Long.valueOf(aVar2.f31476d))) {
                            arrayList.add(Long.valueOf(aVar2.f31476d));
                        }
                    }
                }
            }
            if (!arrayList.contains(Long.valueOf(C8178bm.this.f31911f.f32143a))) {
                arrayList.add(Long.valueOf(C8178bm.this.f31911f.f32143a));
            }
            for (Long l : arrayList) {
                long longValue = l.longValue();
                String unused3 = C8178bm.f31906c;
                StringBuilder sb2 = new StringBuilder("Notifying ad unit with placement ID (");
                sb2.append(longValue);
                sb2.append(")");
                C8178bm.this.f31909d.mo6091a(longValue);
            }
        }
    };

    /* renamed from: e */
    public final C8223d f31910e = C8223d.m6169a();

    /* renamed from: com.inmobi.ads.bm$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bm$a.class */
    public interface AbstractC8180a {
        /* renamed from: a */
        void mo6091a(long j);

        /* renamed from: a */
        void mo6067a(String str, Map<String, Object> map);

        /* renamed from: b */
        void mo6063b(long j, InMobiAdRequestStatus inMobiAdRequestStatus);
    }

    public C8178bm(AbstractC8180a aVar, C8197c.C8201d dVar) {
        this.f31909d = aVar;
        this.f31908b = dVar;
    }

    /* renamed from: a */
    private String m6249a(C8240f fVar) {
        if (fVar != null) {
            Map<String, String> map = fVar.f32150h;
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
            }
            if (!map2.containsKey("preload-request")) {
                map2.put("preload-request", "1");
                fVar.f32150h = map2;
            }
        }
        this.f31912g = SystemClock.elapsedRealtime();
        new C8236e(fVar, this).m6128a();
        HashMap hashMap = new HashMap();
        hashMap.put("isPreloaded", "1");
        hashMap.put("clientRequestId", fVar.f32151i);
        hashMap.put("im-accid", C8326a.m5885e());
        this.f31909d.mo6067a("ServerCallInitiated", hashMap);
        return fVar.f32151i;
    }

    /* renamed from: a */
    private void m6247a(List<C8047a> list) {
        if (list != null && list.size() > 0) {
            C8047a aVar = list.get(0);
            if (aVar != null) {
                Set<C8181bn> d = aVar.m6627d();
                if (d.size() == 0) {
                    this.f31909d.mo6091a(this.f31911f.f32143a);
                    return;
                }
                C8055f.m6593a().m6589a(new C8051b(UUID.randomUUID().toString(), aVar.f31480h, d, this.f31913h ? this.f31914i : null));
            }
            for (C8047a aVar2 : list.subList(1, list.size())) {
                if (aVar2 != null && aVar2.m6626e().equalsIgnoreCase("inmobiJson")) {
                    Set<C8181bn> d2 = aVar2.m6627d();
                    if (d2.size() != 0) {
                        C8055f.m6593a().m6589a(new C8051b(UUID.randomUUID().toString(), aVar2.f31480h, d2, (AbstractC8065g) null));
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private boolean m6251a(int i) {
        return SystemClock.elapsedRealtime() - this.f31912g < ((long) (i * 1000));
    }

    /* renamed from: c */
    private List<C8047a> m6244c(C8245g gVar) {
        ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList();
        try {
            JSONArray jSONArray = new JSONObject(gVar.f32157a.m5731b()).getJSONArray("ads");
            arrayList = arrayList2;
            if (jSONArray != null) {
                int min = Math.min(gVar.f32159c.f32146d, jSONArray.length());
                for (int i = 0; i < min; i++) {
                    C8047a a = C8047a.C8048a.m6620a(jSONArray.getJSONObject(i), gVar.f32159c.f32143a, gVar.f32159c.f32147e, gVar.f32159c.f32145c, gVar.f32159c.f32151i, gVar.f32159c.f32152j, gVar.f32159c.f32153k);
                    if (a != null) {
                        arrayList2.add(a);
                    }
                }
                arrayList = arrayList2;
                if (min > 0) {
                    arrayList = arrayList2;
                    if (arrayList2.isEmpty()) {
                        return null;
                    }
                }
            }
        } catch (JSONException e) {
            HashMap hashMap = new HashMap();
            hashMap.put("errorCode", "ParsingError");
            hashMap.put("reason", e.getLocalizedMessage());
            hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f31912g));
            hashMap.put("isPreloaded", "1");
            hashMap.put("im-accid", C8326a.m5885e());
            this.f31909d.mo6067a("ServerError", hashMap);
            arrayList = null;
        }
        return arrayList;
    }

    /* renamed from: a */
    public final String m6248a(C8240f fVar, boolean z, int i) throws C8142a {
        String str;
        if (C8401e.m5678b()) {
            C8223d.m6156c();
        }
        this.f31907a = false;
        this.f31911f = fVar;
        this.f31913h = z;
        C8141b.m6344b();
        C8223d dVar = this.f31910e;
        C8240f fVar2 = this.f31911f;
        List<C8047a> c = dVar.m6155c(fVar2.f32143a, fVar2.f32145c, fVar2.f32152j, C8224a.m6143a(fVar2.f32149g));
        int size = c.size();
        if (size == 0) {
            this.f31907a = false;
            if (!m6251a(i)) {
                return m6249a(this.f31911f);
            }
            throw new C8142a("Ignoring request to fetch an ad from the network sooner than the minimum request interval");
        }
        if (size < this.f31908b.f32018c) {
            this.f31907a = true;
            if (!z) {
                this.f31909d.mo6091a(this.f31911f.f32143a);
            }
            m6247a(c);
            if (!m6251a(i)) {
                str = m6249a(this.f31911f);
            } else {
                throw new C8142a("Ignoring request to fetch an ad from the network sooner than the minimum request interval");
            }
        } else {
            this.f31907a = true;
            str = c.get(0).f31480h;
            if (!z) {
                this.f31909d.mo6091a(this.f31911f.f32143a);
            }
            m6247a(c);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("im-accid", C8326a.m5885e());
        hashMap.put("isPreloaded", "1");
        this.f31909d.mo6067a("AdCacheAdRequested", hashMap);
        return str;
    }

    @Override // com.inmobi.ads.C8236e.AbstractC8237a
    /* renamed from: a */
    public final void mo6119a(C8245g gVar) {
        List<C8047a> c = m6244c(gVar);
        if (c == null) {
            new StringBuilder("Could not parse ad response:").append(gVar.f32157a.m5731b());
            if (!this.f31907a) {
                this.f31909d.mo6063b(this.f31911f.f32143a, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
        } else if (c.size() == 0) {
            new StringBuilder("Ad response received but no ad available:").append(gVar.f32157a.m5731b());
            HashMap hashMap = new HashMap();
            hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f31912g));
            hashMap.put("isPreloaded", "1");
            hashMap.put("im-accid", C8326a.m5885e());
            this.f31909d.mo6067a("ServerNoFill", hashMap);
            if (!this.f31907a) {
                this.f31909d.mo6063b(this.f31911f.f32143a, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NO_FILL));
            }
        } else {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("numberOfAdsReturned", Integer.valueOf(c.size()));
            hashMap2.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f31912g));
            hashMap2.put("isPreloaded", "1");
            hashMap2.put("im-accid", C8326a.m5885e());
            this.f31909d.mo6067a("ServerFill", hashMap2);
            if (!"HTML".equalsIgnoreCase(c.get(0).m6626e()) || !"native".equals(this.f31911f.f32147e)) {
                C8223d dVar = this.f31910e;
                C8240f fVar = this.f31911f;
                dVar.m6161a(c, fVar.f32143a, this.f31908b.f32016a, fVar.f32147e, fVar.f32152j, C8224a.m6143a(fVar.f32149g), null);
                m6247a(c);
                if (!this.f31907a && !this.f31913h) {
                    this.f31909d.mo6091a(this.f31911f.f32143a);
                }
            } else if (!this.f31907a) {
                this.f31909d.mo6063b(this.f31911f.f32143a, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
        }
    }

    @Override // com.inmobi.ads.C8236e.AbstractC8237a
    /* renamed from: b */
    public final void mo6110b(C8245g gVar) {
        if (!this.f31907a) {
            HashMap hashMap = new HashMap();
            hashMap.put("errorCode", String.valueOf(gVar.f32157a.f32624b.f32582a.getValue()));
            hashMap.put("reason", gVar.f32157a.f32624b.f32583b);
            hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f31912g));
            hashMap.put("isPreloaded", "1");
            hashMap.put("im-accid", C8326a.m5885e());
            this.f31909d.mo6067a("ServerError", hashMap);
            this.f31909d.mo6063b(this.f31911f.f32143a, gVar.f32158b);
        }
    }
}
