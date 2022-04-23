package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.ads.zzbbk;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3868o6;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbk.class */
public final class zzbbk {

    /* renamed from: c */
    public static boolean f24753c = false;

    /* renamed from: d */
    public static boolean f24754d = false;

    /* renamed from: a */
    public final List<String> f24757a;

    /* renamed from: b */
    public static Object f24752b = new Object();

    /* renamed from: e */
    public static Clock f24755e = DefaultClock.m17089d();

    /* renamed from: f */
    public static final Set<String> f24756f = new HashSet(Arrays.asList(new String[0]));

    public zzbbk() {
        this(null);
    }

    public zzbbk(String str) {
        List<String> list;
        if (!m15880a()) {
            list = new ArrayList<>();
        } else {
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            list = Arrays.asList(valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_"));
        }
        this.f24757a = list;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m15879a(int i, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        m15877a(jsonWriter, map);
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static void m15877a(JsonWriter jsonWriter, Map<String, ?> map) throws IOException {
        if (map != null) {
            jsonWriter.name("headers").beginArray();
            Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, ?> next = it.next();
                String key = next.getKey();
                if (!f24756f.contains(key)) {
                    if (!(next.getValue() instanceof List)) {
                        if (!(next.getValue() instanceof String)) {
                            zzbbq.m15856b("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                            break;
                        }
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(key);
                        jsonWriter.name("value").value((String) next.getValue());
                        jsonWriter.endObject();
                    } else {
                        for (String str : (List) next.getValue()) {
                            jsonWriter.beginObject();
                            jsonWriter.name("name").value(key);
                            jsonWriter.name("value").value(str);
                            jsonWriter.endObject();
                        }
                    }
                }
            }
            jsonWriter.endArray();
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m15875a(String str, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static final /* synthetic */ void m15872a(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        m15877a(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(Base64Utils.m17111a(bArr));
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static void m15868a(boolean z) {
        synchronized (f24752b) {
            f24753c = true;
            f24754d = z;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m15866a(byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String a = Base64Utils.m17111a(bArr);
        if (length < 10000) {
            jsonWriter.name("body").value(a);
        } else {
            String a2 = zzbbg.m15903a(a);
            if (a2 != null) {
                jsonWriter.name("bodydigest").value(a2);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static boolean m15880a() {
        boolean z;
        synchronized (f24752b) {
            z = f24753c && f24754d;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m15878a(Context context) {
        if (Build.VERSION.SDK_INT < 17 || !zzacr.f23975a.mo16862a().booleanValue()) {
            return false;
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
        } catch (Exception e) {
            zzbbq.m15853c("Fail to determine debug setting.", e);
            return false;
        }
    }

    /* renamed from: b */
    public static void m15865b() {
        synchronized (f24752b) {
            f24753c = false;
            f24754d = false;
            zzbbq.m15852d("Ad debug logging enablement is out of date.");
        }
    }

    /* renamed from: c */
    public static void m15860c(String str) {
        synchronized (zzbbk.class) {
            try {
                zzbbq.m15854c("GMA Debug BEGIN");
                int i = 0;
                while (i < str.length()) {
                    int i2 = i + 4000;
                    String valueOf = String.valueOf(str.substring(i, Math.min(i2, str.length())));
                    zzbbq.m15854c(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                    i = i2;
                }
                zzbbq.m15854c("GMA Debug FINISH");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static boolean m15861c() {
        boolean z;
        synchronized (f24752b) {
            z = f24753c;
        }
        return z;
    }

    /* renamed from: a */
    public final void m15876a(String str) {
        if (m15880a() && str != null) {
            m15867a(str.getBytes());
        }
    }

    /* renamed from: a */
    public final void m15874a(String str, AbstractC3868o6 o6Var) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name(AvidJSONUtil.KEY_TIMESTAMP).value(f24755e.mo17091b());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.f24757a) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            o6Var.mo26604a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzbbq.m15855b("unable to log", e);
        }
        m15860c(stringWriter.toString());
    }

    /* renamed from: a */
    public final void m15873a(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (m15880a()) {
            m15863b(str, str2, map, bArr);
        }
    }

    /* renamed from: a */
    public final void m15871a(HttpURLConnection httpURLConnection, int i) {
        if (m15880a()) {
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            String str = null;
            m15862b(headerFields == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
            if (i < 200 || i >= 300) {
                try {
                    str = httpURLConnection.getResponseMessage();
                } catch (IOException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    zzbbq.m15852d(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                }
                m15864b(str);
            }
        }
    }

    /* renamed from: a */
    public final void m15870a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (m15880a()) {
            m15863b(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    /* renamed from: a */
    public final void m15869a(Map<String, ?> map, int i) {
        if (m15880a()) {
            m15862b(map, i);
            if (i < 200 || i >= 300) {
                m15864b(null);
            }
        }
    }

    /* renamed from: a */
    public final void m15867a(final byte[] bArr) {
        m15874a("onNetworkResponseBody", new AbstractC3868o6(bArr) { // from class: c.d.b.d.g.a.n6

            /* renamed from: a */
            public final byte[] f14216a;

            {
                this.f14216a = bArr;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3868o6
            /* renamed from: a */
            public final void mo26604a(JsonWriter jsonWriter) {
                zzbbk.m15866a(this.f14216a, jsonWriter);
            }
        });
    }

    /* renamed from: b */
    public final void m15864b(final String str) {
        m15874a("onNetworkRequestError", new AbstractC3868o6(str) { // from class: c.d.b.d.g.a.m6

            /* renamed from: a */
            public final String f14019a;

            {
                this.f14019a = str;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3868o6
            /* renamed from: a */
            public final void mo26604a(JsonWriter jsonWriter) {
                zzbbk.m15875a(this.f14019a, jsonWriter);
            }
        });
    }

    /* renamed from: b */
    public final void m15863b(final String str, final String str2, final Map<String, ?> map, final byte[] bArr) {
        m15874a("onNetworkRequest", new AbstractC3868o6(str, str2, map, bArr) { // from class: c.d.b.d.g.a.l6

            /* renamed from: a */
            public final String f13933a;

            /* renamed from: b */
            public final String f13934b;

            /* renamed from: c */
            public final Map f13935c;

            /* renamed from: d */
            public final byte[] f13936d;

            {
                this.f13933a = str;
                this.f13934b = str2;
                this.f13935c = map;
                this.f13936d = bArr;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3868o6
            /* renamed from: a */
            public final void mo26604a(JsonWriter jsonWriter) {
                zzbbk.m15872a(this.f13933a, this.f13934b, this.f13935c, this.f13936d, jsonWriter);
            }
        });
    }

    /* renamed from: b */
    public final void m15862b(final Map<String, ?> map, final int i) {
        m15874a("onNetworkResponse", new AbstractC3868o6(i, map) { // from class: c.d.b.d.g.a.k6

            /* renamed from: a */
            public final int f13839a;

            /* renamed from: b */
            public final Map f13840b;

            {
                this.f13839a = i;
                this.f13840b = map;
            }

            @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3868o6
            /* renamed from: a */
            public final void mo26604a(JsonWriter jsonWriter) {
                zzbbk.m15879a(this.f13839a, this.f13840b, jsonWriter);
            }
        });
    }
}
