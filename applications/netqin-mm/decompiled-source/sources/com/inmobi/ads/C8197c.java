package com.inmobi.ads;

import android.graphics.Color;
import com.facebook.ads.AdError;
import com.inmobi.commons.core.configs.AbstractC8346a;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c.class */
public final class C8197c extends AbstractC8346a {

    /* renamed from: q */
    public static boolean f31975q = true;

    /* renamed from: r */
    public static boolean f31976r = false;

    /* renamed from: s */
    public static boolean f31977s = true;

    /* renamed from: t */
    public static boolean f31978t = true;

    /* renamed from: u */
    public static final String f31979u = "c";

    /* renamed from: v */
    public static final Object f31980v = new Object();

    /* renamed from: f */
    public C8198a f31987f;

    /* renamed from: g */
    public Map<String, C8198a> f31988g;

    /* renamed from: l */
    public JSONObject f31993l;

    /* renamed from: w */
    public List<String> f31997w;

    /* renamed from: x */
    public C8201d f31998x;

    /* renamed from: y */
    public Map<String, C8201d> f31999y;

    /* renamed from: a */
    public String f31982a = "https://i.w.inmobi.com/showad.asm";

    /* renamed from: b */
    public String f31983b = "https://sdktm.w.inmobi.com/sdkpubreq/v2";

    /* renamed from: c */
    public int f31984c = 20;

    /* renamed from: d */
    public int f31985d = 60;

    /* renamed from: e */
    public int f31986e = 60;

    /* renamed from: o */
    public boolean f31996o = false;

    /* renamed from: h */
    public C8202e f31989h = new C8202e();

    /* renamed from: i */
    public C8206i f31990i = new C8206i();

    /* renamed from: j */
    public C8204g f31991j = new C8204g();

    /* renamed from: k */
    public C8209l f31992k = new C8209l();

    /* renamed from: m */
    public C8208k f31994m = new C8208k();

    /* renamed from: n */
    public C8199b f31995n = new C8199b();

    /* renamed from: A */
    public C8205h f31981A = new C8205h();

    /* renamed from: z */
    public Map<String, C8205h> f32000z = new HashMap();

    /* renamed from: com.inmobi.ads.c$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$a.class */
    public static final class C8198a {

        /* renamed from: a */
        public int f32001a;

        /* renamed from: b */
        public long f32002b;

        /* renamed from: c */
        public int f32003c;

        /* renamed from: d */
        public long f32004d;

        /* renamed from: e */
        public long f32005e;

        /* renamed from: f */
        public C8207j f32006f;

        /* renamed from: g */
        public C8207j f32007g;

        /* renamed from: h */
        public boolean f32008h;

        /* renamed from: a */
        public final boolean m6189a() {
            int i;
            int i2;
            long j = this.f32005e;
            long j2 = this.f32004d;
            if (j < j2) {
                return false;
            }
            long j3 = this.f32002b;
            if (j > j3 || j3 < j2 || !this.f32006f.m6184a() || !this.f32007g.m6184a() || (i = this.f32001a) < 0 || i > 3) {
                return false;
            }
            long j4 = this.f32002b;
            if (j4 <= 0 || j4 > 86400 || (i2 = this.f32003c) <= 0 || i2 > 1000) {
                return false;
            }
            long j5 = this.f32005e;
            if (j5 <= 0 || j5 > 180) {
                return false;
            }
            long j6 = this.f32004d;
            return j6 > 0 && j6 <= 60;
        }
    }

    /* renamed from: com.inmobi.ads.c$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$b.class */
    public static final class C8199b {

        /* renamed from: a */
        public int f32009a = 3;

        /* renamed from: b */
        public int f32010b = 1;

        /* renamed from: c */
        public int f32011c = 10;

        /* renamed from: d */
        public long f32012d = 104857600;

        /* renamed from: e */
        public long f32013e = 259200;
    }

    /* renamed from: com.inmobi.ads.c$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$c.class */
    public static final class C8200c {

        /* renamed from: a */
        public boolean f32014a = false;

        /* renamed from: b */
        public int f32015b = AdError.SERVER_ERROR_CODE;
    }

    /* renamed from: com.inmobi.ads.c$d */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$d.class */
    public static final class C8201d {

        /* renamed from: a */
        public int f32016a = 1;

        /* renamed from: b */
        public int f32017b;

        /* renamed from: c */
        public int f32018c;

        /* renamed from: d */
        public long f32019d;

        /* renamed from: e */
        public boolean f32020e;

        /* renamed from: a */
        public final boolean m6186a() {
            return this.f32017b > 0 && this.f32016a >= 0 && this.f32018c >= 0 && this.f32019d >= 0;
        }
    }

    /* renamed from: com.inmobi.ads.c$e */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$e.class */
    public static final class C8202e {

        /* renamed from: a */
        public int f32021a = 3;

        /* renamed from: b */
        public int f32022b = 60;

        /* renamed from: c */
        public int f32023c = 120;

        /* renamed from: d */
        public int f32024d = 500;

        /* renamed from: e */
        public int f32025e = 10;

        /* renamed from: f */
        public long f32026f = 10800;
    }

    /* renamed from: com.inmobi.ads.c$f */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$f.class */
    public static final class C8203f {

        /* renamed from: a */
        public boolean f32027a;

        /* renamed from: b */
        public String f32028b;

        public C8203f(boolean z, String str) {
            this.f32027a = z;
            this.f32028b = str;
        }
    }

    /* renamed from: com.inmobi.ads.c$g */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$g.class */
    public static final class C8204g {

        /* renamed from: a */
        public long f32029a = 432000;

        /* renamed from: b */
        public int f32030b = 3;

        /* renamed from: c */
        public int f32031c = 60;

        /* renamed from: d */
        public String f32032d = "https://i.l.inmobicdn.net/sdk/sdk/500/android/mraid.js";
    }

    /* renamed from: com.inmobi.ads.c$h */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$h.class */
    public static final class C8205h {

        /* renamed from: a */
        public boolean f32033a = false;

        /* renamed from: b */
        public long f32034b = 259200;

        /* renamed from: c */
        public int f32035c = 5;

        /* renamed from: a */
        public final boolean m6185a() {
            return this.f32034b >= 0 && this.f32035c > 0;
        }
    }

    /* renamed from: com.inmobi.ads.c$i */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$i.class */
    public static final class C8206i {

        /* renamed from: a */
        public int f32036a = 60;

        /* renamed from: b */
        public int f32037b = 320;

        /* renamed from: c */
        public int f32038c = 480;

        /* renamed from: d */
        public int f32039d = 100;

        /* renamed from: e */
        public String f32040e = "#00000000";

        /* renamed from: f */
        public int f32041f = Color.parseColor("#00000000");

        /* renamed from: g */
        public boolean f32042g = true;

        /* renamed from: h */
        public int f32043h = 5;

        /* renamed from: i */
        public int f32044i = 20;

        /* renamed from: j */
        public long f32045j = 5242880;

        /* renamed from: k */
        public ArrayList<String> f32046k = new ArrayList<>(Arrays.asList("video/mp4"));

        /* renamed from: l */
        public boolean f32047l = false;

        /* renamed from: m */
        public boolean f32048m = false;
    }

    /* renamed from: com.inmobi.ads.c$j */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$j.class */
    public static final class C8207j {

        /* renamed from: a */
        public long f32049a;

        /* renamed from: b */
        public int f32050b;

        /* renamed from: c */
        public int f32051c;

        /* renamed from: a */
        public final boolean m6184a() {
            int i;
            int i2;
            long j = this.f32049a;
            return j > 0 && j <= 60 && (i = this.f32050b) > 0 && i <= (i2 = this.f32051c) && i2 > 0 && i2 <= 97;
        }
    }

    /* renamed from: com.inmobi.ads.c$k */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$k.class */
    public static final class C8208k {

        /* renamed from: a */
        public int f32052a = 3;

        /* renamed from: b */
        public long f32053b = 3145728;

        /* renamed from: c */
        public long f32054c = 31457280;

        /* renamed from: d */
        public C8200c f32055d = new C8200c();

        /* renamed from: e */
        public ArrayList<String> f32056e = new ArrayList<>(Arrays.asList("video/mp4", "image/jpeg", "image/jpg", "image/gif", "image/png"));
    }

    /* renamed from: com.inmobi.ads.c$l */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/c$l.class */
    public static final class C8209l {

        /* renamed from: a */
        public int f32057a = 50;

        /* renamed from: b */
        public int f32058b = 1000;

        /* renamed from: c */
        public int f32059c = 100;

        /* renamed from: d */
        public int f32060d = 250;

        /* renamed from: e */
        public int f32061e = 67;

        /* renamed from: f */
        public int f32062f = 50;

        /* renamed from: g */
        public int f32063g = AdError.SERVER_ERROR_CODE;

        /* renamed from: h */
        public int f32064h = 50;

        /* renamed from: i */
        public boolean f32065i = true;

        /* renamed from: j */
        public boolean f32066j = true;

        /* renamed from: k */
        public C8203f f32067k = new C8203f(true, "https://i.l.inmobicdn.cn/sdk/sdk/MMA/im_sdkconfig.xml");
    }

    public C8197c() {
        LinkedList linkedList = new LinkedList();
        this.f31997w = linkedList;
        linkedList.add("bannerDict");
        this.f31997w.add("intDict");
        this.f31997w.add("nativeDict");
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("maxCacheSize", 1);
            jSONObject2.put("fetchLimit", 1);
            jSONObject2.put("minThreshold", 0);
            jSONObject2.put("timeToLive", 3300);
            jSONObject2.put("sortByBid", false);
            jSONObject.put("base", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("maxCacheSize", 1);
            jSONObject3.put("fetchLimit", 1);
            jSONObject3.put("minThreshold", 1);
            jSONObject3.put("timeToLive", 3300);
            jSONObject.put("banner", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("maxCacheSize", 1);
            jSONObject4.put("fetchLimit", 1);
            jSONObject4.put("minThreshold", 1);
            jSONObject4.put("timeToLive", 3300);
            jSONObject.put("int", jSONObject4);
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("maxCacheSize", 100);
            jSONObject5.put("fetchLimit", 1);
            jSONObject5.put("minThreshold", 1);
            jSONObject5.put("timeToLive", 3300);
            jSONObject.put("native", jSONObject5);
            m6193c(jSONObject);
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("enabled", true);
            jSONObject6.put("samplingFactor", 0);
            this.f31993l = jSONObject6;
            JSONObject jSONObject7 = new JSONObject();
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("enabled", f31975q);
            jSONObject8.put("maxRetryCount", 0);
            jSONObject8.put("eventTTL", 86400L);
            jSONObject8.put("maxEventsToPersist", 1000);
            jSONObject8.put("txLatency", 50L);
            jSONObject8.put("processingInterval", 20L);
            jSONObject8.put("networkType", m6192e());
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("enabled", f31976r);
            jSONObject9.put("maxRetryCount", 0);
            jSONObject9.put("eventTTL", 86400L);
            jSONObject9.put("maxEventsToPersist", 1000);
            jSONObject9.put("txLatency", 50L);
            jSONObject9.put("processingInterval", 20L);
            jSONObject9.put("networkType", m6192e());
            JSONObject jSONObject10 = new JSONObject();
            jSONObject10.put("enabled", f31977s);
            jSONObject10.put("maxRetryCount", 0);
            jSONObject10.put("eventTTL", 86400L);
            jSONObject10.put("maxEventsToPersist", 1000);
            jSONObject10.put("txLatency", 50L);
            jSONObject10.put("processingInterval", 20L);
            jSONObject10.put("networkType", m6192e());
            JSONObject jSONObject11 = new JSONObject();
            jSONObject11.put("enabled", f31978t);
            jSONObject11.put("maxRetryCount", 0);
            jSONObject11.put("eventTTL", 86400L);
            jSONObject11.put("maxEventsToPersist", 1000);
            jSONObject11.put("txLatency", 50L);
            jSONObject11.put("processingInterval", 20L);
            jSONObject11.put("networkType", m6192e());
            jSONObject7.put("baseDict", jSONObject8);
            jSONObject7.put("bannerDict", jSONObject9);
            jSONObject7.put("intDict", jSONObject10);
            jSONObject7.put("nativeDict", jSONObject11);
            m6195b(jSONObject7);
        } catch (JSONException e) {
        }
    }

    /* renamed from: a */
    public static JSONObject m6199a(C8198a aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        C8207j jVar = aVar.f32007g;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("retryInterval", jVar.f32049a);
        jSONObject2.put("minBatchSize", jVar.f32050b);
        jSONObject2.put("maxBatchSize", jVar.f32051c);
        jSONObject.put("wifi", jSONObject2);
        C8207j jVar2 = aVar.f32006f;
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("retryInterval", jVar2.f32049a);
        jSONObject3.put("minBatchSize", jVar2.f32050b);
        jSONObject3.put("maxBatchSize", jVar2.f32051c);
        jSONObject.put("others", jSONObject3);
        return jSONObject;
    }

    /* renamed from: a */
    public static void m6197a(JSONObject jSONObject, C8198a aVar) throws JSONException {
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject jSONObject2 = jSONObject.getJSONObject(next);
            C8207j jVar = new C8207j();
            jVar.f32049a = jSONObject2.getLong("retryInterval");
            jVar.f32050b = jSONObject2.getInt("minBatchSize");
            jVar.f32051c = jSONObject2.getInt("maxBatchSize");
            char c = 65535;
            int hashCode = next.hashCode();
            if (hashCode != -1068855134) {
                if (hashCode != -1006804125) {
                    if (hashCode == 3649301 && next.equals("wifi")) {
                        c = 0;
                    }
                } else if (next.equals("others")) {
                    c = 2;
                }
            } else if (next.equals("mobile")) {
                c = 1;
            }
            if (c != 0) {
                aVar.f32006f = jVar;
            } else {
                aVar.f32007g = jVar;
            }
        }
    }

    /* renamed from: b */
    private void m6195b(JSONObject jSONObject) throws JSONException {
        List<String> list;
        JSONObject jSONObject2 = jSONObject.getJSONObject("baseDict");
        C8198a aVar = new C8198a();
        this.f31987f = aVar;
        aVar.f32008h = jSONObject2.getBoolean("enabled");
        this.f31987f.f32001a = jSONObject2.getInt("maxRetryCount");
        this.f31987f.f32002b = jSONObject2.getLong("eventTTL");
        this.f31987f.f32003c = jSONObject2.getInt("maxEventsToPersist");
        this.f31987f.f32004d = jSONObject2.getLong("processingInterval");
        this.f31987f.f32005e = jSONObject2.getLong("txLatency");
        m6197a(jSONObject2.getJSONObject("networkType"), this.f31987f);
        jSONObject.remove("baseDict");
        this.f31988g = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!(next == null || (list = this.f31997w) == null || !list.contains(next))) {
                JSONObject jSONObject3 = jSONObject.getJSONObject(next);
                C8198a aVar2 = new C8198a();
                aVar2.f32008h = jSONObject3.optBoolean("enabled", this.f31987f.f32008h);
                aVar2.f32001a = jSONObject3.optInt("maxRetryCount", this.f31987f.f32001a);
                aVar2.f32002b = jSONObject3.optLong("eventTTL", this.f31987f.f32002b);
                aVar2.f32003c = jSONObject3.optInt("maxEventsToPersist", this.f31987f.f32003c);
                aVar2.f32004d = jSONObject3.optLong("processingInterval", this.f31987f.f32004d);
                aVar2.f32005e = jSONObject3.optLong("txLatency", this.f31987f.f32005e);
                m6197a(jSONObject3.getJSONObject("networkType"), aVar2);
                this.f31988g.put(next, aVar2);
            }
        }
    }

    /* renamed from: c */
    private void m6193c(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject("base");
        C8201d dVar = new C8201d();
        this.f31998x = dVar;
        dVar.f32016a = jSONObject2.getInt("maxCacheSize");
        this.f31998x.f32017b = jSONObject2.getInt("fetchLimit");
        this.f31998x.f32018c = jSONObject2.getInt("minThreshold");
        this.f31998x.f32019d = jSONObject2.getLong("timeToLive");
        this.f31998x.f32020e = jSONObject2.optBoolean("sortByBid");
        jSONObject.remove("base");
        this.f31999y = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject jSONObject3 = jSONObject.getJSONObject(next);
            C8201d dVar2 = new C8201d();
            dVar2.f32016a = jSONObject3.optInt("maxCacheSize", this.f31998x.f32016a);
            dVar2.f32017b = jSONObject3.optInt("fetchLimit", this.f31998x.f32017b);
            dVar2.f32018c = jSONObject3.optInt("minThreshold", this.f31998x.f32018c);
            dVar2.f32019d = jSONObject3.optLong("timeToLive", this.f31998x.f32019d);
            dVar2.f32020e = jSONObject3.optBoolean("sortByBid", this.f31998x.f32020e);
            this.f31999y.put(next, dVar2);
        }
    }

    /* renamed from: e */
    public static JSONObject m6192e() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("retryInterval", 3L);
        jSONObject2.put("minBatchSize", 2);
        jSONObject2.put("maxBatchSize", 85);
        jSONObject.put("wifi", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("retryInterval", 3L);
        jSONObject3.put("minBatchSize", 2);
        jSONObject3.put("maxBatchSize", 85);
        jSONObject.put("others", jSONObject3);
        return jSONObject;
    }

    /* renamed from: f */
    private JSONObject m6191f() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("enabled", this.f31981A.f32033a);
        jSONObject2.put("placementExpiry", this.f31981A.f32034b);
        jSONObject2.put("maxPreloadedAds", this.f31981A.f32035c);
        jSONObject.put("base", jSONObject2);
        for (Map.Entry<String, C8205h> entry : this.f32000z.entrySet()) {
            JSONObject jSONObject3 = new JSONObject();
            C8205h value = entry.getValue();
            jSONObject3.put("enabled", value.f32033a);
            jSONObject3.put("placementExpiry", value.f32034b);
            jSONObject3.put("maxPreloadedAds", value.f32035c);
            jSONObject.put(entry.getKey(), jSONObject3);
        }
        return jSONObject;
    }

    /* renamed from: g */
    private JSONObject m6190g() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("enabled", this.f31987f.f32008h);
        jSONObject2.put("maxRetryCount", this.f31987f.f32001a);
        jSONObject2.put("eventTTL", this.f31987f.f32002b);
        jSONObject2.put("maxEventsToPersist", this.f31987f.f32003c);
        jSONObject2.put("processingInterval", this.f31987f.f32004d);
        jSONObject2.put("txLatency", this.f31987f.f32005e);
        jSONObject2.put("networkType", m6199a(this.f31987f));
        jSONObject.put("baseDict", jSONObject2);
        for (Map.Entry<String, C8198a> entry : this.f31988g.entrySet()) {
            JSONObject jSONObject3 = new JSONObject();
            C8198a value = entry.getValue();
            jSONObject3.put("enabled", value.f32008h);
            jSONObject3.put("maxRetryCount", value.f32001a);
            jSONObject3.put("eventTTL", value.f32002b);
            jSONObject3.put("maxEventsToPersist", value.f32003c);
            jSONObject3.put("processingInterval", value.f32004d);
            jSONObject3.put("txLatency", value.f32005e);
            jSONObject3.put("networkType", m6199a(value));
            jSONObject.put(entry.getKey(), jSONObject3);
        }
        return jSONObject;
    }

    /* renamed from: a */
    public final C8201d m6198a(String str) {
        C8201d dVar = this.f31999y.get(str);
        C8201d dVar2 = dVar;
        if (dVar == null) {
            dVar2 = this.f31998x;
        }
        return dVar2;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final String mo5778a() {
        return "ads";
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: a */
    public final void mo5777a(JSONObject jSONObject) throws JSONException {
        super.mo5777a(jSONObject);
        if (jSONObject.has("url")) {
            this.f31982a = jSONObject.getString("url");
        }
        if (jSONObject.has("trueRequestUrl")) {
            this.f31983b = jSONObject.getString("trueRequestUrl");
        }
        this.f31984c = jSONObject.getInt("minimumRefreshInterval");
        this.f31985d = jSONObject.getInt("defaultRefreshInterval");
        this.f31986e = jSONObject.getInt("fetchTimeout");
        this.f31996o = jSONObject.getBoolean("flushCacheOnStart");
        m6193c(jSONObject.getJSONObject("cache"));
        m6195b(jSONObject.getJSONObject("trcFlagDict"));
        JSONObject jSONObject2 = jSONObject.getJSONObject("preload");
        JSONObject jSONObject3 = jSONObject2.getJSONObject("base");
        C8205h hVar = new C8205h();
        this.f31981A = hVar;
        hVar.f32033a = jSONObject3.getBoolean("enabled");
        this.f31981A.f32034b = jSONObject3.getLong("placementExpiry");
        this.f31981A.f32035c = jSONObject3.getInt("maxPreloadedAds");
        jSONObject2.remove("base");
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            JSONObject jSONObject4 = jSONObject2.getJSONObject(next);
            C8205h hVar2 = new C8205h();
            hVar2.f32033a = jSONObject4.optBoolean("enabled", this.f31981A.f32033a);
            hVar2.f32034b = jSONObject4.optLong("placementExpiry", this.f31981A.f32034b);
            hVar2.f32035c = jSONObject4.optInt("maxPreloadedAds", this.f31981A.f32035c);
            this.f32000z.put(next, hVar2);
        }
        JSONObject jSONObject5 = jSONObject.getJSONObject("imai");
        this.f31989h.f32021a = jSONObject5.getInt("maxRetries");
        this.f31989h.f32022b = jSONObject5.getInt("pingInterval");
        this.f31989h.f32023c = jSONObject5.getInt("pingTimeout");
        this.f31989h.f32024d = jSONObject5.getInt("maxDbEvents");
        this.f31989h.f32025e = jSONObject5.getInt("maxEventBatch");
        this.f31989h.f32026f = jSONObject5.getLong("pingCacheExpiry");
        JSONObject jSONObject6 = jSONObject.getJSONObject("rendering");
        this.f31990i.f32036a = jSONObject6.getInt("renderTimeout");
        this.f31990i.f32038c = jSONObject6.getInt("picHeight");
        this.f31990i.f32037b = jSONObject6.getInt("picWidth");
        this.f31990i.f32039d = jSONObject6.getInt("picQuality");
        this.f31990i.f32040e = jSONObject6.getString("webviewBackground");
        this.f31990i.f32042g = jSONObject6.getBoolean("autoRedirectionEnforcement");
        this.f31990i.f32043h = jSONObject6.getInt("maxVibrationDuration");
        this.f31990i.f32044i = jSONObject6.getInt("maxVibrationPatternLength");
        this.f31990i.f32048m = jSONObject6.optBoolean("enablePubMuteControl", false);
        this.f31990i.f32045j = jSONObject6.getJSONObject("savecontent").getInt("maxSaveSize");
        synchronized (f31980v) {
            try {
                this.f31990i.f32046k.clear();
                JSONArray jSONArray = jSONObject6.getJSONObject("savecontent").getJSONArray("allowedContentType");
                for (int i = 0; i < jSONArray.length(); i++) {
                    this.f31990i.f32046k.add(jSONArray.getString(i));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f31990i.f32047l = jSONObject6.getBoolean("shouldRenderPopup");
        JSONObject jSONObject7 = jSONObject.getJSONObject(AdType.MRAID);
        this.f31991j.f32029a = jSONObject7.getLong("expiry");
        this.f31991j.f32030b = jSONObject7.getInt("maxRetries");
        this.f31991j.f32031c = jSONObject7.getInt("retryInterval");
        this.f31991j.f32032d = jSONObject7.getString("url");
        if (jSONObject.has("telemetry")) {
            this.f31993l = jSONObject.getJSONObject("telemetry");
        }
        JSONObject jSONObject8 = jSONObject.getJSONObject("viewability");
        this.f31992k.f32057a = jSONObject8.getInt("impressionMinPercentageViewed");
        this.f31992k.f32058b = jSONObject8.getInt("impressionMinTimeViewed");
        this.f31992k.f32061e = jSONObject8.optInt("displayMinPercentageAnimate", 67);
        this.f31992k.f32059c = jSONObject8.optInt("visibilityThrottleMillis", 100);
        this.f31992k.f32060d = jSONObject8.optInt("impressionPollIntervalMillis", 250);
        this.f31992k.f32065i = jSONObject8.optBoolean("moatEnabled", false);
        this.f31992k.f32066j = jSONObject8.optBoolean("iasEnabled", false);
        C8209l lVar = this.f31992k;
        JSONObject optJSONObject = jSONObject8.optJSONObject("mmaConfig");
        lVar.f32067k = optJSONObject != null ? new C8203f(optJSONObject.optBoolean("enabled", false), optJSONObject.optString("xmlConfigUrl", "")) : new C8203f(true, "https://i.l.inmobicdn.cn/sdk/sdk/MMA/im_sdkconfig.xml");
        JSONObject jSONObject9 = jSONObject8.getJSONObject("video");
        this.f31992k.f32062f = jSONObject9.getInt("impressionMinPercentageViewed");
        this.f31992k.f32063g = jSONObject9.getInt("impressionMinTimeViewed");
        this.f31992k.f32064h = jSONObject9.optInt("videoMinPercentagePlay", 50);
        JSONObject jSONObject10 = jSONObject.getJSONObject("vastVideo");
        this.f31994m.f32052a = jSONObject10.getInt("maxWrapperLimit");
        this.f31994m.f32053b = jSONObject10.getLong("optimalVastVideoSize");
        this.f31994m.f32054c = jSONObject10.getLong("vastMaxAssetSize");
        synchronized (f31980v) {
            this.f31994m.f32056e.clear();
            JSONArray jSONArray2 = jSONObject10.getJSONArray("allowedContentType");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                this.f31994m.f32056e.add(jSONArray2.getString(i2));
            }
        }
        C8200c cVar = this.f31994m.f32055d;
        JSONObject jSONObject11 = jSONObject10.getJSONObject("bitRate");
        cVar.f32014a = jSONObject11.getBoolean("bitrate_mandatory");
        cVar.f32015b = jSONObject11.getInt("headerTimeout");
        JSONObject jSONObject12 = jSONObject.getJSONObject("assetCache");
        this.f31995n.f32010b = jSONObject12.getInt("retryInterval");
        this.f31995n.f32009a = jSONObject12.getInt("maxRetries");
        this.f31995n.f32011c = jSONObject12.getInt("maxCachedAssets");
        this.f31995n.f32012d = jSONObject12.getInt("maxCacheSize");
        this.f31995n.f32013e = jSONObject12.getLong("timeToLive");
    }

    /* renamed from: b */
    public final C8198a m6196b(String str) {
        C8198a aVar = this.f31988g.get(str + "Dict");
        C8198a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = this.f31987f;
        }
        return aVar2;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: b */
    public final JSONObject mo5776b() throws JSONException {
        JSONObject b = super.mo5776b();
        b.put("url", this.f31982a);
        b.put("trueRequestUrl", this.f31983b);
        b.put("minimumRefreshInterval", this.f31984c);
        b.put("defaultRefreshInterval", this.f31985d);
        b.put("fetchTimeout", this.f31986e);
        b.put("flushCacheOnStart", this.f31996o);
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("maxCacheSize", this.f31998x.f32016a);
        jSONObject2.put("fetchLimit", this.f31998x.f32017b);
        jSONObject2.put("minThreshold", this.f31998x.f32018c);
        jSONObject2.put("timeToLive", this.f31998x.f32019d);
        jSONObject2.put("sortByBid", this.f31998x.f32020e);
        jSONObject.put("base", jSONObject2);
        for (Map.Entry<String, C8201d> entry : this.f31999y.entrySet()) {
            JSONObject jSONObject3 = new JSONObject();
            C8201d value = entry.getValue();
            jSONObject3.put("maxCacheSize", value.f32016a);
            jSONObject3.put("fetchLimit", value.f32017b);
            jSONObject3.put("minThreshold", value.f32018c);
            jSONObject3.put("timeToLive", value.f32019d);
            jSONObject3.put("sortByBid", value.f32020e);
            jSONObject.put(entry.getKey(), jSONObject3);
        }
        b.put("cache", jSONObject);
        b.put("trcFlagDict", m6190g());
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put("maxRetries", this.f31989h.f32021a);
        jSONObject4.put("pingInterval", this.f31989h.f32022b);
        jSONObject4.put("pingTimeout", this.f31989h.f32023c);
        jSONObject4.put("maxDbEvents", this.f31989h.f32024d);
        jSONObject4.put("maxEventBatch", this.f31989h.f32025e);
        jSONObject4.put("pingCacheExpiry", this.f31989h.f32026f);
        b.put("imai", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        jSONObject5.put("renderTimeout", this.f31990i.f32036a);
        jSONObject5.put("picWidth", this.f31990i.f32037b);
        jSONObject5.put("picHeight", this.f31990i.f32038c);
        jSONObject5.put("picQuality", this.f31990i.f32039d);
        jSONObject5.put("webviewBackground", this.f31990i.f32040e);
        jSONObject5.put("autoRedirectionEnforcement", this.f31990i.f32042g);
        jSONObject5.put("maxVibrationDuration", this.f31990i.f32043h);
        jSONObject5.put("maxVibrationPatternLength", this.f31990i.f32044i);
        jSONObject5.put("enablePubMuteControl", this.f31990i.f32048m);
        JSONObject jSONObject6 = new JSONObject();
        jSONObject6.put("maxSaveSize", this.f31990i.f32045j);
        jSONObject6.put("allowedContentType", new JSONArray((Collection) this.f31990i.f32046k));
        jSONObject5.put("savecontent", jSONObject6);
        jSONObject5.put("shouldRenderPopup", this.f31990i.f32047l);
        b.put("rendering", jSONObject5);
        JSONObject jSONObject7 = new JSONObject();
        jSONObject7.put("expiry", this.f31991j.f32029a);
        jSONObject7.put("maxRetries", this.f31991j.f32030b);
        jSONObject7.put("retryInterval", this.f31991j.f32031c);
        jSONObject7.put("url", this.f31991j.f32032d);
        b.put(AdType.MRAID, jSONObject7);
        JSONObject jSONObject8 = new JSONObject();
        jSONObject8.put("impressionMinPercentageViewed", this.f31992k.f32057a);
        jSONObject8.put("impressionMinTimeViewed", this.f31992k.f32058b);
        jSONObject8.put("displayMinPercentageAnimate", this.f31992k.f32061e);
        jSONObject8.put("visibilityThrottleMillis", this.f31992k.f32059c);
        jSONObject8.put("impressionPollIntervalMillis", this.f31992k.f32060d);
        jSONObject8.put("moatEnabled", this.f31992k.f32065i);
        jSONObject8.put("iasEnabled", this.f31992k.f32066j);
        C8203f fVar = this.f31992k.f32067k;
        JSONObject jSONObject9 = new JSONObject();
        jSONObject9.put("enabled", fVar.f32027a);
        jSONObject9.put("xmlConfigUrl", fVar.f32028b);
        jSONObject8.put("mmaConfig", jSONObject9);
        JSONObject jSONObject10 = new JSONObject();
        jSONObject10.put("impressionMinPercentageViewed", this.f31992k.f32062f);
        jSONObject10.put("impressionMinTimeViewed", this.f31992k.f32063g);
        jSONObject10.put("videoMinPercentagePlay", this.f31992k.f32064h);
        jSONObject8.put("video", jSONObject10);
        b.put("viewability", jSONObject8);
        b.put("preload", m6191f());
        JSONObject jSONObject11 = new JSONObject();
        jSONObject11.put("maxWrapperLimit", this.f31994m.f32052a);
        jSONObject11.put("optimalVastVideoSize", this.f31994m.f32053b);
        jSONObject11.put("vastMaxAssetSize", this.f31994m.f32054c);
        jSONObject11.put("allowedContentType", new JSONArray((Collection) this.f31994m.f32056e));
        C8200c cVar = this.f31994m.f32055d;
        JSONObject jSONObject12 = new JSONObject();
        jSONObject12.put("headerTimeout", cVar.f32015b);
        jSONObject12.put("bitrate_mandatory", cVar.f32014a);
        jSONObject11.put("bitRate", jSONObject12);
        b.put("vastVideo", jSONObject11);
        JSONObject jSONObject13 = new JSONObject();
        jSONObject13.put("retryInterval", this.f31995n.f32010b);
        jSONObject13.put("maxRetries", this.f31995n.f32009a);
        jSONObject13.put("maxCachedAssets", this.f31995n.f32011c);
        jSONObject13.put("maxCacheSize", this.f31995n.f32012d);
        jSONObject13.put("timeToLive", this.f31995n.f32013e);
        b.put("assetCache", jSONObject13);
        JSONObject jSONObject14 = this.f31993l;
        if (jSONObject14 != null) {
            b.put("telemetry", jSONObject14);
        }
        return b;
    }

    /* renamed from: c */
    public final C8205h m6194c(String str) {
        C8205h hVar = this.f32000z.get(str);
        C8205h hVar2 = hVar;
        if (hVar == null) {
            hVar2 = this.f31981A;
        }
        return hVar2;
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: c */
    public final boolean mo5774c() {
        int i;
        int i2;
        C8201d dVar;
        String str;
        String str2;
        C8209l lVar;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        C8205h hVar;
        int i10;
        if (!(this.f31982a.startsWith("http://") || this.f31982a.startsWith("https://"))) {
            return false;
        }
        if (!(this.f31983b.startsWith("http://") || this.f31983b.startsWith("https://")) || (i = this.f31984c) < 0 || (i2 = this.f31985d) < 0 || i > i2 || this.f31986e <= 0 || (dVar = this.f31998x) == null || !dVar.m6186a()) {
            return false;
        }
        for (Map.Entry<String, C8201d> entry : this.f31999y.entrySet()) {
            if (!entry.getValue().m6186a()) {
                return false;
            }
        }
        C8198a aVar = this.f31987f;
        if (aVar == null || !aVar.m6189a()) {
            return false;
        }
        for (Map.Entry<String, C8198a> entry2 : this.f31988g.entrySet()) {
            if (!entry2.getValue().m6189a()) {
                return false;
            }
        }
        C8202e eVar = this.f31989h;
        if (eVar.f32024d < 0 || eVar.f32025e < 0 || eVar.f32021a < 0 || eVar.f32022b < 0 || eVar.f32023c <= 0 || eVar.f32026f <= 0) {
            return false;
        }
        C8204g gVar = this.f31991j;
        if (gVar.f32029a < 0 || gVar.f32031c < 0 || gVar.f32030b < 0) {
            return false;
        }
        if (!(gVar.f32032d.startsWith("http://") || this.f31991j.f32032d.startsWith("https://"))) {
            return false;
        }
        C8206i iVar = this.f31990i;
        if (iVar.f32036a < 0 || iVar.f32038c < 0 || iVar.f32037b < 0 || iVar.f32039d < 0 || iVar.f32043h < 0 || iVar.f32044i < 0 || iVar.f32045j < 0 || (str = iVar.f32040e) == null || str.trim().length() == 0) {
            return false;
        }
        try {
            this.f31990i.f32041f = Color.parseColor(this.f31990i.f32040e);
            C8204g gVar2 = this.f31991j;
            if (gVar2.f32030b < 0 || gVar2.f32031c < 0 || (str2 = gVar2.f32032d) == null || str2.trim().length() == 0 || (i3 = (lVar = this.f31992k).f32057a) <= 0 || i3 > 100 || (i4 = lVar.f32058b) < 0 || (i5 = lVar.f32061e) <= 0 || i5 > 100 || (i6 = lVar.f32062f) <= 0 || i6 > 100 || lVar.f32063g < 0 || (i7 = lVar.f32064h) <= 0 || i7 > 100 || (i8 = lVar.f32059c) < 50 || i8 * 5 > i4 || (i9 = lVar.f32060d) < 50 || i9 * 4 > i4) {
                return false;
            }
            C8203f fVar = lVar.f32067k;
            if (!((fVar.f32028b.startsWith("http") || fVar.f32028b.startsWith("https")) && (hVar = this.f31981A) != null && hVar.m6185a())) {
                return false;
            }
            for (Map.Entry<String, C8205h> entry3 : this.f32000z.entrySet()) {
                if (!entry3.getValue().m6185a()) {
                    return false;
                }
            }
            C8208k kVar = this.f31994m;
            long j = kVar.f32053b;
            if (j > 31457280 || j <= 0 || kVar.f32052a < 0) {
                return false;
            }
            long j2 = kVar.f32054c;
            if (j2 <= 0 || j2 > 31457280) {
                return false;
            }
            C8199b bVar = this.f31995n;
            return bVar.f32010b >= 0 && (i10 = bVar.f32011c) <= 20 && i10 >= 0 && bVar.f32013e >= 0 && bVar.f32012d >= 0 && bVar.f32009a >= 0;
        } catch (IllegalArgumentException e) {
            return false;
        }
    }

    @Override // com.inmobi.commons.core.configs.AbstractC8346a
    /* renamed from: d */
    public final AbstractC8346a mo5773d() {
        return new C8197c();
    }
}
