package com.inmobi.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.webkit.WebView;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.C8083ah;
import com.inmobi.ads.C8178bm;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.C8247h;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.NativeTracker;
import com.inmobi.ads.p500a.C8053d;
import com.inmobi.ads.p501b.C8142a;
import com.inmobi.ads.p501b.C8143b;
import com.inmobi.ads.p502c.C8210a;
import com.inmobi.ads.p503d.C8224a;
import com.inmobi.ads.p504e.AbstractC8238a;
import com.inmobi.ads.p504e.C8239b;
import com.inmobi.commons.core.configs.AbstractC8346a;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.configs.C8358g;
import com.inmobi.commons.core.configs.C8359h;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p512d.C8363b;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.p514f.C8378b;
import com.inmobi.commons.core.utilities.C8407d;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.core.utilities.p516b.C8398b;
import com.inmobi.commons.core.utilities.uid.C8416c;
import com.inmobi.commons.core.utilities.uid.C8418d;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.p497a.C8003o;
import com.inmobi.p507b.C8321a;
import com.inmobi.rendering.AbstractC8441a;
import com.inmobi.rendering.AbstractC8462b;
import com.inmobi.rendering.RenderView;
import com.mopub.common.AdType;
import com.mopub.common.MoPubBrowser;
import com.mopub.mobileads.VastResourceXmlManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.p381m.AbstractC6427a;
/* renamed from: com.inmobi.ads.i */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/i.class */
public abstract class AbstractC8252i implements C8178bm.AbstractC8180a, C8247h.AbstractC8251a, C8348b.AbstractC8351c, RenderView.AbstractC8440a, AbstractC8441a {

    /* renamed from: z */
    public static final String f32173z = "i";

    /* renamed from: A */
    public WeakReference<Context> f32174A;

    /* renamed from: C */
    public C8247h f32176C;

    /* renamed from: D */
    public long f32177D;

    /* renamed from: E */
    public long f32178E;

    /* renamed from: F */
    public WeakReference<AbstractC8282b> f32179F;

    /* renamed from: G */
    public RenderView f32180G;

    /* renamed from: I */
    public long f32182I;

    /* renamed from: N */
    public InMobiAdRequest.MonetizationContext f32187N;

    /* renamed from: O */
    public C8178bm f32188O;

    /* renamed from: P */
    public boolean f32189P;

    /* renamed from: R */
    public C8210a f32191R;

    /* renamed from: d */
    public long f32196d;

    /* renamed from: e */
    public String f32197e;

    /* renamed from: f */
    public Map<String, String> f32198f;

    /* renamed from: h */
    public String f32200h;

    /* renamed from: j */
    public C8195by f32202j;

    /* renamed from: k */
    public String f32203k;

    /* renamed from: l */
    public String f32204l;

    /* renamed from: o */
    public C8083ah f32207o;

    /* renamed from: p */
    public ExecutorService f32208p;

    /* renamed from: q */
    public AbstractC8285e f32209q;

    /* renamed from: u */
    public RenderView f32213u;

    /* renamed from: v */
    public boolean f32214v;

    /* renamed from: y */
    public boolean f32217y;

    /* renamed from: b */
    public final JSONObject f32194b = new JSONObject();

    /* renamed from: c */
    public final boolean f32195c = false;

    /* renamed from: n */
    public boolean f32206n = false;

    /* renamed from: J */
    public long f32183J = 0;

    /* renamed from: w */
    public boolean f32215w = false;

    /* renamed from: S */
    public RenderView.AbstractC8440a f32192S = new RenderView.AbstractC8440a() { // from class: com.inmobi.ads.i.14
        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: E */
        public final void mo5551E() {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: a */
        public final void mo5550a(RenderView renderView) {
            AbstractC8252i.this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.14.3
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC8252i iVar = AbstractC8252i.this;
                    if (2 == iVar.f32193a) {
                        iVar.mo6096J();
                    }
                }
            });
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: a */
        public final void mo5549a(HashMap<Object, Object> hashMap) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: b */
        public final void mo5548b(RenderView renderView) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: b */
        public final void mo5547b(String str, Map<String, Object> map) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: b */
        public final void mo5546b(HashMap<Object, Object> hashMap) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: c */
        public final void mo5545c(RenderView renderView) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: d */
        public final void mo5544d(RenderView renderView) {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: u */
        public final void mo5543u() {
            AbstractC8252i.this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.14.1
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC8252i iVar = AbstractC8252i.this;
                    if (2 == iVar.f32193a) {
                        iVar.f32189P = true;
                        AbstractC8252i.this.m6098H();
                    }
                }
            });
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: w */
        public final void mo5542w() {
            AbstractC8252i.this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.14.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (AbstractC8252i.this.f32203k != null) {
                        AbstractC8252i.this.m6041i().m6116a(AbstractC8252i.this.f32203k);
                    }
                    AbstractC8252i.this.mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), false);
                }
            });
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: y */
        public final void mo5541y() {
        }

        @Override // com.inmobi.rendering.RenderView.AbstractC8440a
        /* renamed from: z */
        public final void mo5540z() {
        }
    };

    /* renamed from: Q */
    public AbstractC8238a f32190Q = new C8239b(C8321a.m5908a());

    /* renamed from: m */
    public String f32205m = "unknown";

    /* renamed from: g */
    public C8197c f32199g = new C8197c();

    /* renamed from: K */
    public HandlerC8281a f32184K = new HandlerC8281a(this);

    /* renamed from: H */
    public HandlerC8182bo f32181H = new HandlerC8182bo(this);

    /* renamed from: M */
    public Set<C8185br> f32186M = new HashSet();

    /* renamed from: r */
    public int f32210r = -1;

    /* renamed from: L */
    public Runnable f32185L = new Runnable() { // from class: com.inmobi.ads.i.4
        @Override // java.lang.Runnable
        public final void run() {
            int r = AbstractC8252i.this.mo5965r();
            if (!(r == -2 || r == -1 || r == 0 || r == 1 || r == 2)) {
                StringBuilder sb = new StringBuilder("Unknown return value (");
                sb.append(r);
                sb.append(") from #doAdLoadWork()");
            }
            String unused = AbstractC8252i.f32173z;
        }
    };

    /* renamed from: s */
    public Handler f32211s = new Handler(Looper.getMainLooper());

    /* renamed from: t */
    public boolean f32212t = false;

    /* renamed from: x */
    public String f32216x = "";

    /* renamed from: i */
    public JSONObject f32201i = this.f32194b;

    /* renamed from: B */
    public boolean f32175B = false;

    /* renamed from: a */
    public int f32193a = 0;

    /* renamed from: com.inmobi.ads.i$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/i$a.class */
    public static final class HandlerC8281a extends Handler {

        /* renamed from: a */
        public WeakReference<AbstractC8252i> f32261a;

        public HandlerC8281a(AbstractC8252i iVar) {
            super(Looper.getMainLooper());
            this.f32261a = new WeakReference<>(iVar);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            WeakReference<AbstractC8252i> weakReference = this.f32261a;
            AbstractC8252i iVar = weakReference == null ? null : weakReference.get();
            if (iVar != null) {
                Bundle data = message.getData();
                long j = data.getLong("placementId");
                int i = message.what;
                if (i == 1) {
                    iVar.mo6087a(j, data.getBoolean("adAvailable"), (C8047a) message.obj);
                } else if (i == 2) {
                    iVar.mo5971c(j, (C8047a) message.obj);
                } else if (i != 4) {
                    switch (i) {
                        case 11:
                            iVar.mo6026v();
                            return;
                        case 12:
                            iVar.mo6025x();
                            return;
                        case 13:
                            iVar.mo5974b((InMobiAdRequestStatus) message.obj);
                            return;
                        case 14:
                            iVar.mo5984F();
                            return;
                        default:
                            return;
                    }
                } else {
                    iVar.mo6061b(j, data.getBoolean("assetAvailable"));
                }
            }
        }
    }

    /* renamed from: com.inmobi.ads.i$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/i$b.class */
    public static abstract class AbstractC8282b {
        /* renamed from: a */
        public void mo6012a() {
        }

        /* renamed from: a */
        public void mo6011a(InMobiAdRequestStatus inMobiAdRequestStatus) {
        }

        /* renamed from: a */
        public void mo6010a(AbstractC8252i iVar) {
        }

        /* renamed from: a */
        public void mo6009a(Map<Object, Object> map) {
        }

        /* renamed from: a */
        public void mo6008a(boolean z) {
        }

        /* renamed from: a */
        public void mo6007a(byte[] bArr) {
        }

        /* renamed from: b */
        public void mo6006b() {
        }

        /* renamed from: b */
        public void mo6005b(InMobiAdRequestStatus inMobiAdRequestStatus) {
        }

        /* renamed from: b */
        public void mo6004b(Map<Object, Object> map) {
        }

        /* renamed from: b */
        public void mo6003b(boolean z) {
        }

        /* renamed from: c */
        public void mo6002c() {
        }

        /* renamed from: d */
        public void mo6001d() {
        }

        /* renamed from: e */
        public void mo6000e() {
        }

        /* renamed from: f */
        public void mo5999f() {
        }

        /* renamed from: g */
        public void mo5998g() {
        }

        /* renamed from: h */
        public void mo5997h() {
        }

        /* renamed from: i */
        public boolean mo5996i() {
            return true;
        }

        /* renamed from: j */
        public void mo5995j() {
        }
    }

    /* renamed from: com.inmobi.ads.i$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/i$c.class */
    public static final class C8283c {
        /* renamed from: a */
        public static Map<String, Object> m5994a(JSONArray jSONArray) {
            HashMap hashMap = new HashMap();
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    arrayList.add(jSONArray.getString(i));
                } catch (JSONException e) {
                    String unused = AbstractC8252i.f32173z;
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
            hashMap.put("trackerUrls", arrayList);
            return hashMap;
        }
    }

    /* renamed from: com.inmobi.ads.i$d */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/i$d.class */
    public static final class C8284d {
        /* renamed from: a */
        public static HashMap<String, String> m5993a(String str, String str2, JSONArray jSONArray, JSONArray jSONArray2, JSONObject jSONObject) {
            HashMap<String, String> hashMap = new HashMap<>();
            int i = 0;
            if (jSONArray != null) {
                try {
                    int length = jSONArray.length();
                    int i2 = 0;
                    while (i2 < length) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(str);
                        int i3 = i2 + 1;
                        sb.append(i3);
                        hashMap.put(sb.toString(), jSONArray.getString(i2));
                        i2 = i3;
                    }
                } catch (Exception e) {
                    String unused = AbstractC8252i.f32173z;
                    new StringBuilder("Exception while parsing map details for Moat : ").append(e.getMessage());
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
            if (jSONArray2 != null) {
                int length2 = jSONArray2.length();
                while (i < length2) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str2);
                    int i4 = i + 1;
                    sb2.append(i4);
                    hashMap.put(sb2.toString(), jSONArray2.getString(i));
                    i = i4;
                }
            }
            if (jSONObject != null) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.optString(next));
                }
            }
            return hashMap;
        }

        /* renamed from: a */
        public static Map<String, Object> m5992a(JSONArray jSONArray) {
            JSONObject jSONObject;
            try {
                int length = jSONArray.length();
                int i = 0;
                while (true) {
                    if (i >= length) {
                        jSONObject = null;
                        break;
                    }
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                    if (jSONObject2.has("moat")) {
                        jSONObject = jSONObject2.getJSONObject("moat");
                        break;
                    }
                    i++;
                }
                if (jSONObject == null) {
                    return null;
                }
                HashMap hashMap = new HashMap();
                hashMap.put("enabled", Boolean.valueOf(jSONObject.getBoolean("enabled")));
                hashMap.put("instrumentVideo", Boolean.valueOf(jSONObject.optBoolean("instrumentVideo", false)));
                hashMap.put("partnerCode", jSONObject.optString("partnerCode", null));
                hashMap.put("clientLevels", jSONObject.optJSONArray("clientLevels"));
                hashMap.put("clientSlicers", jSONObject.optJSONArray("clientSlicers"));
                hashMap.put("zMoatExtras", jSONObject.optJSONObject("zMoatExtras"));
                return hashMap;
            } catch (JSONException e) {
                String unused = AbstractC8252i.f32173z;
                new StringBuilder("Exception while parsing MoatParams from response : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
                return null;
            }
        }
    }

    /* renamed from: com.inmobi.ads.i$e */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/i$e.class */
    public interface AbstractC8285e {
        /* renamed from: a */
        void mo5991a(AbstractC8252i iVar);

        /* renamed from: a */
        void mo5990a(AbstractC8252i iVar, InMobiAdRequestStatus inMobiAdRequestStatus);
    }

    public AbstractC8252i(Context context, long j, AbstractC8282b bVar) {
        this.f32174A = new WeakReference<>(context);
        this.f32196d = j;
        this.f32179F = new WeakReference<>(bVar);
        C8348b.m5847a().m5844a(new C8358g(), (C8348b.AbstractC8351c) null);
        C8348b.m5847a().m5844a(this.f32199g, this);
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.f32208p = newSingleThreadExecutor;
        newSingleThreadExecutor.submit(new Runnable() { // from class: com.inmobi.ads.i.1
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC8252i iVar = AbstractC8252i.this;
                AbstractC8252i iVar2 = AbstractC8252i.this;
                iVar.f32176C = new C8247h(iVar2, iVar2.f32199g.m6198a(AbstractC8252i.this.mo5975b()), AbstractC8252i.this.m6057b(false));
            }
        });
        C8366b.m5794a().m5788a("ads", this.f32199g.f31993l);
    }

    /* renamed from: L */
    public static /* synthetic */ void m6094L() {
        C8416c.m5632a();
        C8416c.m5629c();
    }

    /* renamed from: M */
    private boolean m6093M() {
        return this.f32199g.f31990i.f32048m && C8326a.m5886d();
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0074 A[Catch: Exception -> 0x009a, TRY_ENTER, TryCatch #0 {Exception -> 0x009a, blocks: (B:2:0x0000, B:4:0x0017, B:8:0x0031, B:10:0x003b, B:13:0x0045, B:16:0x004d, B:20:0x0074, B:22:0x0080, B:23:0x008c, B:24:0x008d, B:24:0x008d, B:25:0x0090, B:26:0x0099), top: B:30:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0080 A[Catch: Exception -> 0x009a, TRY_ENTER, TryCatch #0 {Exception -> 0x009a, blocks: (B:2:0x0000, B:4:0x0017, B:8:0x0031, B:10:0x003b, B:13:0x0045, B:16:0x004d, B:20:0x0074, B:22:0x0080, B:23:0x008c, B:24:0x008d, B:24:0x008d, B:25:0x0090, B:26:0x0099), top: B:30:0x0000 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void m6071a(com.inmobi.ads.AbstractC8252i r5, byte[] r6, com.inmobi.ads.p502c.C8210a r7) {
        /*
            r0 = r5
            java.lang.String r1 = "AdLoadWithResponseRequested"
            r2 = r7
            long r2 = r2.f32070c     // Catch: Exception -> 0x009a
            r0.m6069a(r1, r2)     // Catch: Exception -> 0x009a
            r0 = r5
            r1 = 1
            r0.f32193a = r1     // Catch: Exception -> 0x009a
            r0 = r7
            com.inmobi.ads.c.b r0 = r0.f32071d     // Catch: Exception -> 0x009a
            if (r0 == 0) goto L_0x008d
            r0 = r7
            com.inmobi.ads.c.b r0 = r0.f32071d     // Catch: Exception -> 0x009a
            r8 = r0
            r0 = r8
            com.inmobi.ads.f r0 = r0.f32072a     // Catch: Exception -> 0x009a
            r1 = r6
            byte[] r0 = r0.m5743a(r1)     // Catch: Exception -> 0x009a
            r9 = r0
            r0 = r9
            r6 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0041
            r0 = r9
            r6 = r0
            r0 = r8
            com.inmobi.ads.f r0 = r0.f32072a     // Catch: Exception -> 0x009a
            boolean r0 = r0.f32617v     // Catch: Exception -> 0x009a
            if (r0 == 0) goto L_0x0041
            r0 = r9
            byte[] r0 = com.inmobi.commons.core.utilities.C8407d.m5643a(r0)     // Catch: Exception -> 0x009a
            r6 = r0
        L_0x0041:
            r0 = r6
            if (r0 == 0) goto L_0x006e
            r0 = r6
            int r0 = r0.length     // Catch: Exception -> 0x009a
            if (r0 != 0) goto L_0x004d
            goto L_0x006e
        L_0x004d:
            com.inmobi.commons.core.network.d r0 = new com.inmobi.commons.core.network.d     // Catch: Exception -> 0x009a
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: Exception -> 0x009a
            r0 = r9
            r1 = r6
            r0.m5730b(r1)     // Catch: Exception -> 0x009a
            com.inmobi.ads.g r0 = new com.inmobi.ads.g     // Catch: Exception -> 0x009a
            r1 = r0
            r2 = r8
            com.inmobi.ads.f r2 = r2.f32072a     // Catch: Exception -> 0x009a
            r3 = r9
            r1.<init>(r2, r3)     // Catch: Exception -> 0x009a
            r6 = r0
            goto L_0x0070
        L_0x006e:
            r0 = 0
            r6 = r0
        L_0x0070:
            r0 = r6
            if (r0 == 0) goto L_0x0080
            r0 = r7
            com.inmobi.ads.i r0 = r0.f32068a     // Catch: Exception -> 0x009a
            com.inmobi.ads.h r0 = r0.m6041i()     // Catch: Exception -> 0x009a
            r1 = r6
            r0.mo6119a(r1)     // Catch: Exception -> 0x009a
            return
        L_0x0080:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: Exception -> 0x009a
            r6 = r0
            r0 = r6
            java.lang.String r1 = "Unable to decrypt response."
            r0.<init>(r1)     // Catch: Exception -> 0x009a
            r0 = r6
            throw r0     // Catch: Exception -> 0x009a
        L_0x008d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: Exception -> 0x009a, Exception -> 0x009a
            r6 = r0
            r0 = r6
            java.lang.String r1 = "GMARequest is null."
            r0.<init>(r1)     // Catch: Exception -> 0x009a
            r0 = r6
            throw r0     // Catch: Exception -> 0x009a
        L_0x009a:
            r6 = move-exception
            r0 = r5
            android.os.Handler r0 = r0.f32211s
            com.inmobi.ads.i$16 r1 = new com.inmobi.ads.i$16
            r2 = r1
            r3 = r5
            r2.<init>()
            boolean r0 = r0.post(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.AbstractC8252i.m6071a(com.inmobi.ads.i, byte[], com.inmobi.ads.c.a):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6069a(String str, long j) {
        HashMap hashMap = new HashMap();
        hashMap.put("latency", Long.valueOf(System.currentTimeMillis() - j));
        mo6067a(str, hashMap);
    }

    /* renamed from: a */
    private void m6068a(final String str, final WeakReference<AbstractC8282b> weakReference) {
        this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.5
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC8252i iVar = AbstractC8252i.this;
                iVar.f32193a = 3;
                iVar.m6058b(str);
                if (AbstractC8252i.this.f32215w) {
                    String unused = AbstractC8252i.f32173z;
                    return;
                }
                AbstractC8282b bVar = (AbstractC8282b) weakReference.get();
                if (bVar == null) {
                    AbstractC8252i.this.m6045g();
                } else if ("int".equals(AbstractC8252i.this.mo5975b())) {
                    AbstractC8252i.this.m6080a(bVar, "AVFB", "");
                    bVar.mo6006b();
                } else {
                    bVar.mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                }
            }
        });
    }

    /* renamed from: d */
    public static String m6049d(String str, Map<String, String> map) {
        String str2 = str;
        if (map != null) {
            if (str != null) {
                Iterator<String> it = map.keySet().iterator();
                while (true) {
                    str2 = str;
                    if (!it.hasNext()) {
                        break;
                    }
                    String next = it.next();
                    str = str.replace(next, map.get(next));
                }
            } else {
                str2 = str;
            }
        }
        return str2;
    }

    /* renamed from: e */
    public static /* synthetic */ void m6048e(AbstractC8252i iVar) {
        RenderView renderView = iVar.f32180G;
        if ((renderView == null || renderView.f32796r.get()) && iVar.m6092a() != null) {
            RenderView renderView2 = new RenderView(iVar.m6092a(), new AdContainer.RenderingProperties(iVar.mo5969d()), iVar.f32186M, iVar.f32203k);
            iVar.f32180G = renderView2;
            renderView2.m5605a(iVar, iVar.f32199g);
            iVar.f32180G.setPlacementId(iVar.f32196d);
            iVar.f32180G.setCreativeId(iVar.f32216x);
            iVar.f32180G.setAllowAutoRedirection(iVar.f32175B);
        }
    }

    /* renamed from: g */
    public static /* synthetic */ void m6044g(AbstractC8252i iVar) {
        iVar.m6103A();
        iVar.f32181H.sendEmptyMessageDelayed(0, iVar.f32199g.f31990i.f32036a * 1000);
    }

    /* renamed from: m */
    public static boolean m6034m() {
        return false;
    }

    /* renamed from: A */
    public final void m6103A() {
        this.f32181H.removeMessages(0);
    }

    /* renamed from: B */
    public final void m6102B() {
        this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.9
            @Override // java.lang.Runnable
            public final void run() {
                AbstractC8252i.this.mo6101C();
            }
        });
    }

    /* renamed from: C */
    public void mo6101C() {
        m6058b("RenderTimeOut");
        if (this.f32193a == 2) {
            this.f32193a = 3;
            if (m6047f() != null) {
                m6047f().mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            }
        }
    }

    /* renamed from: D */
    public final void m6100D() {
        HashMap hashMap = new HashMap();
        hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f32183J));
        m6052c("AdLoadSuccessful", hashMap);
    }

    @Override // com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: E */
    public final void mo5551E() {
    }

    /* renamed from: F */
    public void mo5984F() {
        AbstractC8285e eVar;
        if (1 == this.f32193a && (eVar = this.f32209q) != null) {
            eVar.mo5991a(this);
        }
    }

    /* renamed from: G */
    public final void m6099G() {
        this.f32208p.execute(new Runnable() { // from class: com.inmobi.ads.i.13
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    final C8109ao aoVar = new C8109ao(AbstractC8252i.this.mo5969d(), new JSONObject(AbstractC8252i.this.f32200h), AbstractC8252i.this.f32199g, null);
                    AbstractC8252i.this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.13.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                C8171bg bgVar = aoVar.f31729k;
                                if (bgVar != null) {
                                    AbstractC8252i.this.f32213u = new RenderView(AbstractC8252i.this.m6092a(), new AdContainer.RenderingProperties(AbstractC8252i.this.mo5969d()), AbstractC8252i.this.f32186M, AbstractC8252i.this.f32203k);
                                    AbstractC8252i.this.f32213u.m5605a(AbstractC8252i.this.f32192S, AbstractC8252i.this.f32199g);
                                    AbstractC8252i.this.f32213u.f32787i = true;
                                    AbstractC8252i.this.f32213u.setBlobProvider(AbstractC8252i.this);
                                    AbstractC8252i.this.f32213u.setIsPreload(true);
                                    AbstractC8252i.this.f32213u.setPlacementId(AbstractC8252i.this.f32196d);
                                    AbstractC8252i.this.f32213u.setCreativeId(AbstractC8252i.this.f32216x);
                                    AbstractC8252i.this.f32213u.setAllowAutoRedirection(AbstractC8252i.this.f32175B);
                                    if (AbstractC8252i.this.f32210r == 0) {
                                        AbstractC8252i.this.m6065a(true, AbstractC8252i.this.f32213u);
                                    }
                                    if (MoPubBrowser.DESTINATION_URL_KEY.equals(bgVar.f31888z)) {
                                        AbstractC8252i.this.f32213u.m5589b((String) bgVar.f31680e);
                                    } else {
                                        AbstractC8252i.this.f32213u.m5598a((String) bgVar.f31680e);
                                    }
                                }
                                AbstractC8252i.m6044g(AbstractC8252i.this);
                            } catch (Exception e) {
                                String unused = AbstractC8252i.f32173z;
                                AbstractC8252i iVar = AbstractC8252i.this;
                                iVar.f32193a = 3;
                                iVar.mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), false);
                                C8328a.m5878a().m5875a(new C8365a(e));
                            }
                        }
                    });
                } catch (Exception e) {
                    String unused = AbstractC8252i.f32173z;
                    AbstractC8252i.this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.13.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            AbstractC8252i iVar = AbstractC8252i.this;
                            iVar.f32193a = 3;
                            iVar.mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), false);
                        }
                    });
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
        });
    }

    /* renamed from: H */
    public final void m6098H() {
        if (this.f32212t && this.f32214v && this.f32189P) {
            m6103A();
            mo6097I();
        }
    }

    /* renamed from: I */
    public void mo6097I() {
    }

    /* renamed from: J */
    public void mo6096J() {
    }

    /* renamed from: a */
    public final Context m6092a() {
        WeakReference<Context> weakReference = this.f32174A;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.inmobi.ads.C8178bm.AbstractC8180a
    /* renamed from: a */
    public final void mo6091a(long j) {
        m6050d("AdPrefetchSuccessful");
        if (!this.f32215w && m6092a() != null) {
            Message obtain = Message.obtain();
            obtain.what = 14;
            Bundle bundle = new Bundle();
            bundle.putLong("placementId", j);
            obtain.setData(bundle);
            this.f32184K.sendMessage(obtain);
        }
    }

    /* renamed from: a */
    public void mo6090a(final long j, final InMobiAdRequestStatus inMobiAdRequestStatus) {
        if (!this.f32215w && m6092a() != null) {
            this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.11
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        if (j == AbstractC8252i.this.f32196d) {
                            AbstractC8252i.this.m6080a(AbstractC8252i.this.m6047f(), "ARN", "");
                            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
                            Logger.m5724a(internalLogLevel, "InMobi", "Failed to fetch ad for placement id: " + AbstractC8252i.this.f32196d + ", reason phrase available in onAdLoadFailed callback.");
                            AbstractC8252i.this.mo6084a(inMobiAdRequestStatus, true);
                        }
                    } catch (Exception e) {
                        Logger.m5724a(Logger.InternalLogLevel.ERROR, "[InMobi]", "Unable to load Ad; SDK encountered an unexpected error");
                        String unused = AbstractC8252i.f32173z;
                        new StringBuilder("onAdFetchFailed with error: ").append(e.getMessage());
                        C8328a.m5878a().m5875a(new C8365a(e));
                    }
                }
            });
        }
    }

    @Override // com.inmobi.ads.C8247h.AbstractC8251a
    /* renamed from: a */
    public final void mo6089a(long j, C8047a aVar) {
        if (!this.f32215w && m6092a() != null) {
            Message obtain = Message.obtain();
            obtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putLong("placementId", j);
            obtain.setData(bundle);
            obtain.obj = aVar;
            this.f32184K.sendMessage(obtain);
        }
    }

    @Override // com.inmobi.ads.C8247h.AbstractC8251a
    /* renamed from: a */
    public final void mo6088a(long j, boolean z) {
        if (!this.f32215w && m6092a() != null) {
            Message obtain = Message.obtain();
            obtain.what = 4;
            Bundle bundle = new Bundle();
            bundle.putLong("placementId", j);
            bundle.putBoolean("assetAvailable", z);
            obtain.setData(bundle);
            this.f32184K.sendMessage(obtain);
        }
    }

    /* renamed from: a */
    public void mo6087a(long j, boolean z, C8047a aVar) {
        if (j == this.f32196d && 1 == this.f32193a && z) {
            this.f32177D = aVar.f31477e;
            this.f32178E = aVar.m6628c();
        }
    }

    /* renamed from: a */
    public void mo5978a(Context context) {
        this.f32174A = new WeakReference<>(context);
    }

    /* renamed from: a */
    public void mo6086a(InMobiAdRequest.MonetizationContext monetizationContext) {
        this.f32187N = monetizationContext;
    }

    /* renamed from: a */
    public final void m6085a(InMobiAdRequestStatus inMobiAdRequestStatus) {
        if (InMobiAdRequestStatus.StatusCode.NO_FILL.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6058b("NoFill");
        } else if (InMobiAdRequestStatus.StatusCode.SERVER_ERROR.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6058b("ServerError");
        } else if (InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6058b("NetworkUnreachable");
        } else if (InMobiAdRequestStatus.StatusCode.AD_ACTIVE.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6058b("AdActive");
        } else if (InMobiAdRequestStatus.StatusCode.REQUEST_PENDING.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6058b("RequestPending");
        } else if (InMobiAdRequestStatus.StatusCode.REQUEST_INVALID.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6058b("RequestInvalid");
        } else if (InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6058b("RequestTimedOut");
        } else if (InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6058b("EarlyRefreshRequest");
        } else if (InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6058b("InternalError");
        } else if (InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6058b("MonetizationDisabled");
        }
    }

    /* renamed from: a */
    public void mo6084a(InMobiAdRequestStatus inMobiAdRequestStatus, boolean z) {
        if (this.f32193a == 1 && z) {
            this.f32193a = 3;
        }
        AbstractC8282b f = m6047f();
        if (f != null) {
            f.mo6011a(inMobiAdRequestStatus);
        }
        m6085a(inMobiAdRequestStatus);
    }

    /* renamed from: a */
    public final void m6082a(AbstractC8282b bVar) {
        this.f32179F = new WeakReference<>(bVar);
    }

    /* renamed from: a */
    public final void m6081a(AbstractC8282b bVar, final String str, Runnable runnable, Looper looper) {
        if (AdType.HTML.equals(this.f32205m)) {
            this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.7
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC8252i.m6048e(AbstractC8252i.this);
                    if (AbstractC8252i.this.f32180G != null) {
                        AbstractC8252i.this.f32180G.m5598a(str);
                    }
                    AbstractC8252i.m6044g(AbstractC8252i.this);
                }
            });
        } else if ("inmobiJson".equals(this.f32205m)) {
            final WeakReference<AbstractC8282b> weakReference = new WeakReference<>(bVar);
            try {
                this.f32183J = SystemClock.elapsedRealtime();
                C8109ao aoVar = new C8109ao(mo5969d(), new JSONObject(this.f32200h), this.f32199g, this.f32202j);
                if (!aoVar.m6412c() || m6092a() == null) {
                    m6068a("DataModelValidationFailed", weakReference);
                    return;
                }
                C8083ah a = C8083ah.C8092b.m6468a(m6092a(), new AdContainer.RenderingProperties(mo5969d()), aoVar, this.f32203k, this.f32204l, this.f32186M, this.f32199g, this.f32196d, this.f32175B, this.f32216x);
                a.m6515a(new C8083ah.AbstractC8093c() { // from class: com.inmobi.ads.i.6
                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: a */
                    public final void mo6024a() {
                        if (!AbstractC8252i.this.f32215w) {
                            AbstractC8282b bVar2 = (AbstractC8282b) weakReference.get();
                            if (bVar2 != null) {
                                AbstractC8252i.this.m6080a(bVar2, "AVFB", "");
                                bVar2.mo6006b();
                                return;
                            }
                            AbstractC8252i.this.m6045g();
                        }
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: a */
                    public final void mo6023a(String str2, Map<String, Object> map) {
                        AbstractC8252i.this.m6052c(str2, map);
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: a */
                    public final void mo6022a(Map<String, String> map) {
                        if (!AbstractC8252i.this.f32215w) {
                            AbstractC8282b bVar2 = (AbstractC8282b) weakReference.get();
                            if (bVar2 != null) {
                                bVar2.mo6004b(new HashMap(map));
                            } else {
                                AbstractC8252i.this.m6045g();
                            }
                        }
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: a */
                    public final void mo6021a(boolean z) {
                        if (!AbstractC8252i.this.f32215w) {
                            AbstractC8282b bVar2 = (AbstractC8282b) weakReference.get();
                            if (bVar2 != null) {
                                bVar2.mo6003b(z);
                            } else {
                                AbstractC8252i.this.m6045g();
                            }
                        }
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: b */
                    public final void mo6020b() {
                        AbstractC8252i.this.m6050d("AdRendered");
                        AbstractC8252i iVar = AbstractC8252i.this;
                        if (!iVar.f32215w) {
                            iVar.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.6.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    C82756 r0 = C82756.this;
                                    AbstractC8252i.this.mo6060b((AbstractC8282b) weakReference.get());
                                }
                            });
                        }
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: c */
                    public final void mo6019c() {
                        if (!AbstractC8252i.this.f32215w) {
                            AbstractC8282b bVar2 = (AbstractC8282b) weakReference.get();
                            if (bVar2 != null) {
                                bVar2.mo6002c();
                            } else {
                                AbstractC8252i.this.m6045g();
                            }
                        }
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: d */
                    public final void mo6018d() {
                        Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
                        Logger.m5724a(internalLogLevel, "InMobi", "Successfully impressed ad for placement id: " + AbstractC8252i.this.f32196d);
                        if (!AbstractC8252i.this.f32215w) {
                            AbstractC8282b bVar2 = (AbstractC8282b) weakReference.get();
                            if (bVar2 != null) {
                                bVar2.mo5998g();
                            } else {
                                AbstractC8252i.this.m6045g();
                            }
                        }
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: e */
                    public final void mo6017e() {
                        Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
                        Logger.m5724a(internalLogLevel, "InMobi", "Ad interaction for placement id: " + AbstractC8252i.this.f32196d);
                        if (!AbstractC8252i.this.f32215w) {
                            AbstractC8282b bVar2 = (AbstractC8282b) weakReference.get();
                            if (bVar2 != null) {
                                bVar2.mo6009a(new HashMap());
                            } else {
                                AbstractC8252i.this.m6045g();
                            }
                        }
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: f */
                    public final void mo6016f() {
                        if (!AbstractC8252i.this.f32215w) {
                            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
                            Logger.m5724a(internalLogLevel, "InMobi", "Ad dismissed for placement id: " + AbstractC8252i.this.f32196d);
                            AbstractC8252i.this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.6.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    C82756 r0 = C82756.this;
                                    AbstractC8252i.this.mo6055c((AbstractC8282b) weakReference.get());
                                }
                            });
                        }
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: g */
                    public final void mo6015g() {
                        if (!AbstractC8252i.this.f32215w) {
                            AbstractC8282b bVar2 = (AbstractC8282b) weakReference.get();
                            if (bVar2 != null) {
                                bVar2.mo5999f();
                            } else {
                                AbstractC8252i.this.m6045g();
                            }
                        }
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: h */
                    public final void mo6014h() {
                        if (!AbstractC8252i.this.f32215w) {
                            AbstractC8282b bVar2 = (AbstractC8282b) weakReference.get();
                            if (bVar2 != null) {
                                bVar2.mo5997h();
                            } else {
                                AbstractC8252i.this.m6045g();
                            }
                        }
                    }

                    @Override // com.inmobi.ads.C8083ah.AbstractC8093c
                    /* renamed from: i */
                    public final void mo6013i() {
                        if (!AbstractC8252i.this.f32215w) {
                            AbstractC8282b bVar2 = (AbstractC8282b) weakReference.get();
                            if (bVar2 != null) {
                                bVar2.mo5995j();
                            } else {
                                AbstractC8252i.this.m6045g();
                            }
                        }
                    }
                });
                this.f32207o = a;
                if (runnable != null && looper != null) {
                    new Handler(looper).post(runnable);
                }
            } catch (JSONException e) {
                m6068a("InternalError", weakReference);
                C8328a.m5878a().m5875a(new C8365a(e));
            } catch (Exception e2) {
                new StringBuilder("Encountered unexpected error in loading ad markup into container: ").append(e2.getMessage());
                m6068a("InternalError", weakReference);
                C8328a.m5878a().m5875a(new C8365a(e2));
            }
        }
    }

    /* renamed from: a */
    public final void m6080a(AbstractC8282b bVar, String str, String str2) {
        if (bVar != null && bVar.mo5996i()) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append(" ");
            sb.append(str2);
            C8197c cVar = this.f32199g;
            String b = mo5975b();
            C8197c.C8198a aVar = cVar.f31988g.get(b + "Dict");
            C8197c.C8198a aVar2 = aVar;
            if (aVar == null) {
                aVar2 = cVar.f31987f;
            }
            if (aVar2.f32008h) {
                String str3 = this.f32203k;
                if (str3 == null) {
                    str3 = "";
                }
                this.f32190Q.mo6127a(new C8378b(UUID.randomUUID().toString(), this.f32205m, str, this.f32196d, str3, str2, C8398b.m5689a(m6093M()).get("d-nettype-raw"), mo5975b(), System.currentTimeMillis()));
            }
        }
    }

    @Override // com.inmobi.commons.core.configs.C8348b.AbstractC8351c
    /* renamed from: a */
    public final void mo5529a(AbstractC8346a aVar) {
        this.f32199g = (C8197c) aVar;
        m6041i().f32165d = this.f32199g.m6198a(mo5975b());
        C8178bm bmVar = this.f32188O;
        if (bmVar != null) {
            bmVar.f31908b = this.f32199g.m6198a(mo5975b());
        }
        C8366b.m5794a().m5788a("ads", this.f32199g.f31993l);
    }

    /* renamed from: a */
    public void mo5550a(RenderView renderView) {
        if (this.f32215w || m6092a() == null) {
        }
    }

    /* renamed from: a */
    public final void m6070a(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", str);
        m6052c("AdLoadRejected", hashMap);
    }

    @Override // com.inmobi.rendering.AbstractC8441a
    /* renamed from: a */
    public final void mo5539a(final String str, final String str2, final AbstractC8462b bVar) {
        this.f32208p.execute(new Runnable() { // from class: com.inmobi.ads.i.12
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (AbstractC8252i.this.f32203k != null) {
                        C8223d.m6169a();
                        C8047a c = C8223d.m6154c(AbstractC8252i.this.f32203k);
                        if (c != null) {
                            bVar.mo5503a(str, str2, c.f31481i);
                            String unused = AbstractC8252i.f32173z;
                            return;
                        }
                        String unused2 = AbstractC8252i.f32173z;
                        bVar.mo5503a(str, str2, "");
                        return;
                    }
                    String unused3 = AbstractC8252i.f32173z;
                    bVar.mo5503a(str, str2, "");
                } catch (Exception e) {
                    String unused4 = AbstractC8252i.f32173z;
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
        });
    }

    @Override // com.inmobi.ads.C8178bm.AbstractC8180a
    /* renamed from: a */
    public final void mo6067a(String str, Map<String, Object> map) {
        m6052c(str, map);
    }

    @Override // com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: a */
    public final void mo5549a(HashMap<Object, Object> hashMap) {
        if (!this.f32215w && m6092a() != null) {
            new StringBuilder("Ad reward action completed. Params:").append(hashMap.toString());
            if (m6047f() != null) {
                m6047f().mo6004b(hashMap);
            }
        }
    }

    /* renamed from: a */
    public void mo6066a(final boolean z) {
        m6050d("AdPrefetchRequested");
        this.f32193a = 1;
        this.f32208p.execute(new Runnable() { // from class: com.inmobi.ads.i.3
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (!C8407d.m5650a()) {
                        AbstractC8252i.this.mo6063b(AbstractC8252i.this.f32196d, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE));
                        return;
                    }
                    C8003o.m6743a().m6739e();
                    AbstractC8252i.m6094L();
                    C8359h hVar = new C8359h();
                    C8348b.m5847a().m5844a(hVar, (C8348b.AbstractC8351c) null);
                    if (!hVar.f32507g) {
                        AbstractC8252i.this.f32182I = System.currentTimeMillis();
                        try {
                            if (AbstractC8252i.this.f32188O == null) {
                                AbstractC8252i.this.f32188O = new C8178bm(AbstractC8252i.this, AbstractC8252i.this.f32199g.m6198a(AbstractC8252i.this.mo5975b()));
                            }
                            AbstractC8252i.this.f32204l = AbstractC8252i.this.f32188O.m6248a(AbstractC8252i.this.m6057b(false), z, AbstractC8252i.this.f32199g.f31984c);
                        } catch (C8142a e) {
                            String unused = AbstractC8252i.f32173z;
                            e.getMessage();
                            if (!AbstractC8252i.this.f32188O.f31907a) {
                                AbstractC8252i.this.mo6063b(AbstractC8252i.this.f32196d, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST));
                            }
                        }
                    }
                } catch (Exception e2) {
                    Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Unable to Prefetch ad; SDK encountered an unexpected error");
                    String unused2 = AbstractC8252i.f32173z;
                    new StringBuilder("Prefetch failed with unexpected error: ").append(e2.getMessage());
                    C8328a.m5878a().m5875a(new C8365a(e2));
                }
            }
        });
    }

    /* renamed from: a */
    public final void m6065a(boolean z, RenderView renderView) {
        boolean z2 = this.f32199g.f31992k.f32066j;
        for (C8185br brVar : this.f32186M) {
            if (z2 && 3 == brVar.f31928a) {
                try {
                    AbstractC6427a<WebView> a = C8310v.m5946a(m6092a(), z, (String) brVar.f31929b.get(VastResourceXmlManager.CREATIVE_TYPE), renderView);
                    if (a != null) {
                        brVar.f31929b.put("avidAdSession", a);
                        brVar.f31929b.put("deferred", Boolean.valueOf(z));
                    }
                } catch (Exception e) {
                    new StringBuilder("Setting up impression tracking for IAS encountered an unexpected error: ").append(e.getMessage());
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a3  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6064a(final byte[] r7) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.AbstractC8252i.m6064a(byte[]):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x029c A[Catch: IllegalArgumentException -> 0x0358, JSONException -> 0x035c, TRY_ENTER, TryCatch #4 {IllegalArgumentException -> 0x0358, JSONException -> 0x035c, blocks: (B:47:0x014f, B:49:0x0161, B:51:0x016d, B:53:0x0177, B:55:0x01a4, B:57:0x01ac, B:59:0x01b8, B:61:0x01be, B:63:0x01d9, B:65:0x01e2, B:67:0x01f6, B:69:0x0205, B:71:0x0210, B:73:0x021b, B:78:0x0247, B:82:0x0257, B:94:0x0287, B:96:0x029c, B:98:0x02b5, B:100:0x02c2, B:102:0x02cb, B:104:0x02db, B:106:0x02ee, B:108:0x02f8, B:110:0x031a, B:112:0x031f, B:115:0x032e, B:119:0x033c, B:121:0x034c), top: B:138:0x014f }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo6083a(com.inmobi.ads.C8047a r9) {
        /*
            Method dump skipped, instructions count: 910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.AbstractC8252i.mo6083a(com.inmobi.ads.a):boolean");
    }

    /* renamed from: b */
    public final C8240f m6057b(boolean z) {
        C8197c cVar = this.f32199g;
        String str = cVar.f31982a;
        long j = this.f32196d;
        C8418d dVar = new C8418d(cVar.f32471p.f32472a);
        C8053d.m6605a();
        C8240f fVar = new C8240f(str, j, dVar, C8053d.m6598c(), z);
        fVar.f32148f = this.f32197e;
        fVar.f32149g = this.f32198f;
        fVar.f32147e = mo5975b();
        fVar.f32144b = "sdkJson";
        fVar.f32146d = this.f32199g.m6198a(mo5975b()).f32017b;
        fVar.f32150h = mo5968e();
        fVar.f32145c = mo5972c();
        int i = this.f32199g.f31986e;
        fVar.f32612q = i * 1000;
        fVar.f32613r = i * 1000;
        fVar.f32152j = this.f32187N;
        fVar.f32619x = m6093M();
        return fVar;
    }

    /* renamed from: b */
    public abstract String mo5975b();

    @Override // com.inmobi.ads.C8178bm.AbstractC8180a
    /* renamed from: b */
    public final void mo6063b(long j, InMobiAdRequestStatus inMobiAdRequestStatus) {
        if (InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6053c("EarlyRefreshRequest");
        } else if (InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE.equals(inMobiAdRequestStatus.getStatusCode())) {
            m6053c("NetworkUnreachable");
        } else {
            m6050d("AdPrefetchFailed");
        }
        if (!this.f32215w && m6092a() != null) {
            Message obtain = Message.obtain();
            obtain.what = 13;
            obtain.obj = inMobiAdRequestStatus;
            Bundle bundle = new Bundle();
            bundle.putLong("placementId", j);
            obtain.setData(bundle);
            this.f32184K.sendMessage(obtain);
        }
    }

    @Override // com.inmobi.ads.C8247h.AbstractC8251a
    /* renamed from: b */
    public final void mo6062b(long j, C8047a aVar) {
        if (!this.f32215w && m6092a() != null) {
            this.f32183J = SystemClock.elapsedRealtime();
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = aVar;
            Bundle bundle = new Bundle();
            bundle.putLong("placementId", j);
            bundle.putBoolean("adAvailable", true);
            obtain.setData(bundle);
            this.f32184K.sendMessage(obtain);
        }
    }

    /* renamed from: b */
    public void mo6061b(long j, boolean z) {
        StringBuilder sb = new StringBuilder("Asset availability changed (");
        sb.append(z);
        sb.append(") for placement ID (");
        sb.append(j);
        sb.append(")");
    }

    /* renamed from: b */
    public void mo5974b(InMobiAdRequestStatus inMobiAdRequestStatus) {
        AbstractC8285e eVar;
        if (1 == this.f32193a && (eVar = this.f32209q) != null) {
            eVar.mo5990a(this, inMobiAdRequestStatus);
        }
    }

    /* renamed from: b */
    public abstract void mo5973b(C8047a aVar);

    /* renamed from: b */
    public void mo6060b(AbstractC8282b bVar) {
    }

    @Override // com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: b */
    public void mo5548b(RenderView renderView) {
        if (this.f32215w || m6092a() == null) {
        }
    }

    /* renamed from: b */
    public final void m6058b(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", str);
        hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - this.f32183J));
        m6052c("AdLoadFailed", hashMap);
    }

    @Override // com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: b */
    public final void mo5547b(String str, Map<String, Object> map) {
        m6052c(str, map);
    }

    @Override // com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: b */
    public final void mo5546b(HashMap<Object, Object> hashMap) {
        if (!this.f32215w && m6092a() != null) {
            new StringBuilder("Ad interaction. Params:").append(hashMap.toString());
            m6050d("AdInteracted");
            if (m6047f() != null) {
                m6047f().mo6009a(hashMap);
            }
        }
    }

    /* renamed from: c */
    public abstract String mo5972c();

    /* renamed from: c */
    public void mo5971c(long j, C8047a aVar) {
        if (j != this.f32196d || this.f32193a != 1) {
            return;
        }
        if (mo6083a(aVar)) {
            m6080a(m6047f(), "ARF", "");
            this.f32183J = SystemClock.elapsedRealtime();
            this.f32193a = 2;
            return;
        }
        m6058b("ParsingFailed");
        mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true);
    }

    /* renamed from: c */
    public final void m6056c(C8047a aVar) {
        if (aVar instanceof C8147bc) {
            C8147bc bcVar = (C8147bc) aVar;
            Context a = m6092a();
            boolean z = this.f32199g.f31992k.f32066j;
            for (C8185br brVar : this.f32186M) {
                if (z && 3 == brVar.f31928a && "video" == brVar.f31929b.get(VastResourceXmlManager.CREATIVE_TYPE)) {
                    try {
                        C8152be beVar = (C8152be) new C8109ao(mo5969d(), new JSONObject(this.f32200h), this.f32199g, new C8195by(bcVar.f31831l, bcVar.f31832m, bcVar.f31833n, bcVar.m6340h(), bcVar.m6339i(), this.f32199g.f31994m)).m6410c("VIDEO").get(0);
                        if (a != null) {
                            HashSet hashSet = new HashSet();
                            for (NativeTracker nativeTracker : beVar.f31696u) {
                                if (NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_IAS == nativeTracker.f31407b) {
                                    hashSet.add(m6049d(nativeTracker.f31406a, nativeTracker.f31408c));
                                }
                            }
                            if (hashSet.size() != 0) {
                                brVar.f31929b.put("avidAdSession", C8311w.m5942a(a, hashSet));
                                brVar.f31929b.put("deferred", true);
                            }
                        }
                    } catch (Exception e) {
                        new StringBuilder("Setting up impression tracking for AVID encountered an unexpected error: ").append(e.getMessage());
                        C8328a.m5878a().m5875a(new C8365a(e));
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public void mo6055c(AbstractC8282b bVar) {
    }

    /* renamed from: c */
    public void mo5545c(RenderView renderView) {
        if (this.f32215w || m6092a() == null) {
        }
    }

    /* renamed from: c */
    public final void m6053c(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", str);
        m6052c("AdPrefetchRejected", hashMap);
    }

    /* renamed from: c */
    public final void m6052c(String str, Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", mo5975b());
        hashMap.put("plId", Long.valueOf(this.f32196d));
        hashMap.put("impId", this.f32203k);
        hashMap.put("isPreloaded", this.f32206n ? "1" : "0");
        int a = C8398b.m5691a();
        hashMap.put("networkType", a != 0 ? a != 1 ? "NIL" : "wifi" : "carrier");
        hashMap.put("ts", Long.valueOf(System.currentTimeMillis()));
        if (map.get("clientRequestId") == null) {
            hashMap.put("clientRequestId", this.f32204l);
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

    /* renamed from: d */
    public abstract AdContainer.RenderingProperties.PlacementType mo5969d();

    /* renamed from: d */
    public void mo5544d(RenderView renderView) {
        if (this.f32215w || m6092a() == null) {
        }
    }

    /* renamed from: d */
    public final void m6050d(String str) {
        m6052c(str, new HashMap());
    }

    /* renamed from: e */
    public Map<String, String> mo5968e() {
        HashMap hashMap = new HashMap();
        hashMap.put("preload-request", this.f32206n ? "1" : "0");
        return hashMap;
    }

    @Override // com.inmobi.rendering.AbstractC8441a
    /* renamed from: e */
    public final void mo5538e(final String str) {
        this.f32208p.execute(new Runnable() { // from class: com.inmobi.ads.i.10
            @Override // java.lang.Runnable
            public final void run() {
                if (AbstractC8252i.this.f32203k == null || str == null) {
                    String unused = AbstractC8252i.f32173z;
                    return;
                }
                C8223d.m6169a();
                String str2 = AbstractC8252i.this.f32203k;
                String str3 = str;
                C8363b a = C8363b.m5815a();
                C8047a c = C8223d.m6154c(str2);
                int i = 0;
                if (c != null) {
                    c.f31481i = str3;
                    i = a.m5807b(C8078ad.f31587d, c.mo6341a(), "imp_id=?", new String[]{str2});
                }
                String unused2 = AbstractC8252i.f32173z;
                StringBuilder sb = new StringBuilder("Updated ");
                sb.append(i);
                sb.append("for blob ");
                sb.append(str);
            }
        });
    }

    /* renamed from: f */
    public final AbstractC8282b m6047f() {
        AbstractC8282b bVar = this.f32179F.get();
        if (bVar == null) {
            m6045g();
        }
        return bVar;
    }

    /* renamed from: g */
    public final void m6045g() {
        Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "Listener was garbage collected. Unable to give callback");
        m6050d("ListenerNotFound");
    }

    /* renamed from: h */
    public final boolean m6043h() {
        if (1 == this.f32193a) {
            return false;
        }
        return this.f32178E == -1 ? this.f32177D != 0 && System.currentTimeMillis() - this.f32177D > TimeUnit.SECONDS.toMillis(this.f32199g.m6198a(mo5975b()).f32019d) : this.f32177D != 0 && System.currentTimeMillis() > this.f32178E;
    }

    /* renamed from: i */
    public final C8247h m6041i() {
        if (this.f32176C == null) {
            this.f32176C = new C8247h(this, this.f32199g.m6198a(mo5975b()), m6057b(false));
        }
        return this.f32176C;
    }

    /* renamed from: j */
    public final AdContainer m6039j() {
        char c;
        int i = this.f32193a;
        String str = this.f32205m;
        int hashCode = str.hashCode();
        if (hashCode != -1084172778) {
            if (hashCode == 3213227 && str.equals(AdType.HTML)) {
                c = 1;
            }
            c = 65535;
        } else {
            if (str.equals("inmobiJson")) {
                c = 2;
            }
            c = 65535;
        }
        if (c != 1) {
            if (c != 2 || i == 0 || 1 == i || 3 == i || 2 == i) {
                return null;
            }
            return this.f32207o;
        } else if (i == 0 || 1 == i || 3 == i) {
            return null;
        } else {
            return mo5967k();
        }
    }

    /* renamed from: k */
    public RenderView mo5967k() {
        return this.f32180G;
    }

    /* renamed from: l */
    public InMobiAdRequest.MonetizationContext mo6036l() {
        return this.f32187N;
    }

    /* renamed from: n */
    public void mo6032n() {
        m6050d("AdLoadRequested");
        if (!C8407d.m5650a()) {
            mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE), true);
        } else {
            this.f32208p.execute(this.f32185L);
        }
    }

    /* renamed from: o */
    public final void m6030o() {
        final AbstractC8282b f = m6047f();
        final long currentTimeMillis = System.currentTimeMillis();
        boolean z = true;
        if (!C8407d.m5650a()) {
            if (f != null) {
                f.mo6005b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE));
            }
            m6080a(f, "ART", "NetworkNotAvailable");
            m6069a("AdGetSignalsFailed", currentTimeMillis);
        } else {
            int i = this.f32193a;
            if (i == 1 || i == 2 || i == 4) {
                if (f != null) {
                    f.mo6005b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GET_SIGNALS_CALLED_WHILE_LOADING));
                }
                m6080a(f, "ART", "LoadInProgress");
                m6069a("AdGetSignalsFailed", currentTimeMillis);
            } else if (i == 10) {
                if (f != null) {
                    f.mo6005b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.FETCHING_SIGNALS_STATE_ERROR));
                }
                m6080a(f, "ART", "SignalsFetchInProgress");
                m6069a("AdGetSignalsFailed", currentTimeMillis);
            } else if (i == 6 || i == 7 || i == 8) {
                if (f != null) {
                    f.mo6005b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
                }
                m6080a(f, "ART", "ReloadNotPermitted");
                m6069a("AdGetSignalsFailed", currentTimeMillis);
            } else {
                z = false;
            }
        }
        if (!z) {
            m6050d("AdGetSignalsRequested");
            this.f32208p.execute(new Runnable() { // from class: com.inmobi.ads.i.17
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC8252i iVar = AbstractC8252i.this;
                    iVar.f32193a = 10;
                    String a = C8224a.m6143a(iVar.f32198f);
                    if (AbstractC8252i.this.f32191R == null) {
                        AbstractC8252i iVar2 = AbstractC8252i.this;
                        iVar2.f32191R = new C8210a(iVar2, a);
                    } else {
                        AbstractC8252i.this.f32191R.f32069b = a;
                    }
                    if (f != null) {
                        try {
                            byte[] a2 = AbstractC8252i.this.f32191R.m6188a();
                            if (a2 == null) {
                                AbstractC8252i.this.f32193a = 3;
                                f.mo6005b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                                AbstractC8252i.this.m6080a(AbstractC8252i.this.m6047f(), "ART", "RequestCreationFailed");
                                AbstractC8252i.this.m6069a("AdGetSignalsFailed", currentTimeMillis);
                                return;
                            }
                            f.mo6007a(a2);
                            AbstractC8252i.this.f32193a = 11;
                            AbstractC8252i.this.m6080a(AbstractC8252i.this.m6047f(), "VAR", "");
                            AbstractC8252i.this.m6069a("AdGetSignalsSucceeded", currentTimeMillis);
                        } catch (C8143b e) {
                            AbstractC8252i.this.f32193a = 3;
                            f.mo6005b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED));
                        }
                    }
                }
            });
        }
    }

    /* renamed from: p */
    public final boolean m6029p() {
        int i = this.f32193a;
        if (1 == i) {
            mo6063b(this.f32196d, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_PENDING));
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.ERROR;
            Logger.m5724a(internalLogLevel, "InMobi", "An ad prefetch is already in progress. Please wait for the prefetch to complete before requesting for another ad for placement id: " + this.f32196d);
            return true;
        } else if (8 == i || 7 == i) {
            mo6063b(this.f32196d, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE));
            Logger.InternalLogLevel internalLogLevel2 = Logger.InternalLogLevel.ERROR;
            Logger.m5724a(internalLogLevel2, "InMobi", "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: " + this.f32196d);
            return true;
        } else {
            if (2 == i) {
                if (AdType.HTML.equals(this.f32205m)) {
                    mo6063b(this.f32196d, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_PENDING));
                    Logger.InternalLogLevel internalLogLevel3 = Logger.InternalLogLevel.ERROR;
                    Logger.m5724a(internalLogLevel3, "InMobi", "An ad load is already in progress. Please wait for the load to complete before requesting prefetch for another ad for placement id: " + this.f32196d);
                    return true;
                } else if ("inmobiJson".equals(this.f32205m)) {
                    mo6091a(this.f32196d);
                    return true;
                }
            }
            int i2 = this.f32193a;
            if (5 != i2 && 9 != i2) {
                return false;
            }
            mo6091a(this.f32196d);
            return true;
        }
    }

    /* renamed from: q */
    public void mo5966q() {
        mo6066a(false);
    }

    /* renamed from: r */
    public int mo5965r() {
        String str;
        boolean z = true;
        try {
            this.f32193a = 1;
            C8003o.m6743a().m6739e();
            C8416c.m5632a();
            C8416c.m5629c();
            C8359h hVar = new C8359h();
            C8348b.m5847a().m5844a(hVar, (C8348b.AbstractC8351c) null);
            if (!hVar.f32507g) {
                C8240f b = m6057b(false);
                this.f32182I = System.currentTimeMillis();
                C8247h i = m6041i();
                try {
                    int i2 = this.f32199g.f31984c;
                    C8247h.m6123a();
                    i.f32164c = b;
                    if ("int".equals(b.f32147e)) {
                        C8247h.m6107c();
                        List<C8047a> c = i.f32163b.m6155c(i.f32164c.f32143a, i.f32164c.f32145c, i.f32164c.f32152j, C8224a.m6143a(i.f32164c.f32149g));
                        if (c.size() == 0) {
                            if (SystemClock.elapsedRealtime() - i.f32166e >= i2 * 1000) {
                                z = false;
                            }
                            if (!z) {
                                str = i.m6120a(i.f32164c, i.f32164c.m6125c().equals("1"));
                            } else {
                                throw new C8142a("Ignoring request to fetch an ad from the network sooner than the minimum request interval");
                            }
                        } else {
                            str = c.get(0).f31480h;
                            if ("INMOBIJSON".equalsIgnoreCase(c.get(0).m6626e())) {
                                i.f32162a.mo6062b(i.f32164c.f32143a, c.get(0));
                                i.m6115a(c);
                            } else {
                                str = i.m6112b();
                            }
                        }
                    } else {
                        str = i.m6112b();
                    }
                    HashMap hashMap = new HashMap();
                    hashMap.put("im-accid", C8326a.m5885e());
                    hashMap.put("isPreloaded", i.f32164c.m6125c());
                    i.f32162a.m6104a("AdCacheAdRequested", hashMap);
                    this.f32204l = str;
                    m6080a(m6047f(), "VAR", "");
                    if (!this.f32206n) {
                        return 0;
                    }
                    m6050d("AdPreLoadRequested");
                    return 0;
                } catch (C8142a e) {
                    e.getMessage();
                    this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.i.8
                        @Override // java.lang.Runnable
                        public final void run() {
                            AbstractC8252i.this.mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST), true);
                        }
                    });
                    return 0;
                }
            } else {
                m6050d("LoadAfterMonetizationDisabled");
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f32173z, "SDK will not perform this load operation as monetization has been disabled. Please contact InMobi for further info.");
                mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MONETIZATION_DISABLED), true);
                return -1;
            }
        } catch (Exception e2) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Unable to load ad; SDK encountered an unexpected error");
            new StringBuilder("Load failed with unexpected error: ").append(e2.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e2));
            return -2;
        }
    }

    /* renamed from: s */
    public final void m6028s() {
        AdContainer j = m6039j();
        if (j != null) {
            j.mo5606a(2, null);
        }
    }

    /* renamed from: t */
    public void mo6027t() {
        if (!this.f32215w) {
            this.f32215w = true;
            this.f32203k = null;
            this.f32177D = 0L;
            this.f32178E = -1L;
            this.f32186M.clear();
            AdContainer j = m6039j();
            if (j != null) {
                j.destroy();
            }
            this.f32193a = 0;
            this.f32205m = "unknown";
            this.f32189P = false;
            this.f32213u = null;
            this.f32212t = false;
            this.f32214v = false;
            this.f32216x = "";
            this.f32201i = this.f32194b;
            this.f32175B = false;
        }
    }

    @Override // com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: u */
    public final void mo5543u() {
        if (!this.f32215w && m6092a() != null) {
            this.f32184K.sendEmptyMessage(11);
        }
    }

    /* renamed from: v */
    public void mo6026v() {
    }

    @Override // com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: w */
    public final void mo5542w() {
        if (!this.f32215w && m6092a() != null) {
            this.f32184K.sendEmptyMessage(12);
        }
    }

    /* renamed from: x */
    public void mo6025x() {
        m6058b("RenderFailed");
    }

    @Override // com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: y */
    public final void mo5541y() {
        if (!this.f32215w && m6092a() != null && 7 == this.f32193a) {
            this.f32193a = 3;
            m6080a(m6047f(), "AVFB", "");
            if (m6047f() != null) {
                m6047f().mo6006b();
            }
        }
    }

    @Override // com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: z */
    public final void mo5540z() {
        if (!this.f32215w && m6092a() != null && m6047f() != null) {
            m6047f().mo5999f();
        }
    }
}
