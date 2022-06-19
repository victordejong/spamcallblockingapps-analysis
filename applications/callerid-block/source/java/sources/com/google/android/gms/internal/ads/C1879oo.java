package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import com.callerid.block.bean.EZBlackList;
import com.google.android.gms.common.util.AbstractC1610f;
import com.google.android.gms.common.util.C1607c;
import com.google.android.gms.common.util.i;
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
/* renamed from: com.google.android.gms.internal.ads.oo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oo.class */
public final class C1879oo {

    /* renamed from: c */
    private static boolean f7870c = false;

    /* renamed from: d */
    private static boolean f7871d = false;

    /* renamed from: g */
    public static final /* synthetic */ int f7874g = 0;

    /* renamed from: a */
    private final List<String> f7875a;

    /* renamed from: b */
    private static final Object f7869b = new Object();

    /* renamed from: e */
    private static final AbstractC1610f f7872e = i.e();

    /* renamed from: f */
    private static final Set<String> f7873f = new HashSet(Arrays.asList(new String[0]));

    public C1879oo(String str) {
        ArrayList arrayList;
        if (!m6290j()) {
            arrayList = new ArrayList();
        } else {
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            arrayList = Arrays.asList(valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_"));
        }
        this.f7875a = arrayList;
    }

    /* renamed from: g */
    public static void m6293g() {
        synchronized (f7869b) {
            f7870c = false;
            f7871d = false;
            C1894po.m6180f("Ad debug logging enablement is out of date.");
        }
    }

    /* renamed from: h */
    public static void m6292h(boolean z) {
        synchronized (f7869b) {
            f7870c = true;
            f7871d = z;
        }
    }

    /* renamed from: i */
    public static boolean m6291i() {
        boolean z;
        synchronized (f7869b) {
            z = f7870c;
        }
        return z;
    }

    /* renamed from: j */
    public static boolean m6290j() {
        boolean z;
        synchronized (f7869b) {
            z = false;
            if (f7870c) {
                z = false;
                if (f7871d) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: k */
    public static boolean m6289k(Context context) {
        if (Build.VERSION.SDK_INT >= 17 && C2048y4.f9198a.m6222e().booleanValue()) {
            try {
                return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
            } catch (Exception e) {
                C1894po.m6179g("Fail to determine debug setting.", e);
                return false;
            }
        }
        return false;
    }

    /* renamed from: l */
    static final /* synthetic */ void m6288l(int i, Map map, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        m6283q(jsonWriter, map);
        jsonWriter.endObject();
    }

    /* renamed from: m */
    static final /* synthetic */ void m6287m(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        m6283q(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(C1607c.m8250a(bArr));
        }
        jsonWriter.endObject();
    }

    /* renamed from: n */
    private final void m6286n(String str, String str2, Map<String, ?> map, byte[] bArr) {
        m6282r("onNetworkRequest", new jo(str, str2, map, bArr));
    }

    /* renamed from: o */
    private final void m6285o(Map<String, ?> map, int i) {
        m6282r("onNetworkResponse", new ko(i, map));
    }

    /* renamed from: p */
    private final void m6284p(String str) {
        m6282r("onNetworkRequestError", new mo(str));
    }

    /* renamed from: q */
    private static void m6283q(JsonWriter jsonWriter, Map<String, ?> map) {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it.next();
            String key = next.getKey();
            if (!f7873f.contains(key)) {
                if (!(next.getValue() instanceof List)) {
                    if (!(next.getValue() instanceof String)) {
                        C1894po.m6183c("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name(EZBlackList.NAME).value(key);
                    jsonWriter.name("value").value((String) next.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str : (List) next.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name(EZBlackList.NAME).value(key);
                        jsonWriter.name("value").value(str);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    /* renamed from: r */
    private final void m6282r(String str, AbstractC1862no abstractC1862no) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(f7872e.m8247a());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.f7875a) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            abstractC1862no.m6412a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            C1894po.m6182d("unable to log", e);
        }
        m6281s(stringWriter.toString());
    }

    /* renamed from: s */
    private static void m6281s(String str) {
        synchronized (C1879oo.class) {
            try {
                C1894po.m6181e("GMA Debug BEGIN");
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < str.length()) {
                        int i3 = i2 + 4000;
                        String valueOf = String.valueOf(str.substring(i2, Math.min(i3, str.length())));
                        C1894po.m6181e(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                        i = i3;
                    } else {
                        C1894po.m6181e("GMA Debug FINISH");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m6299a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (!m6290j()) {
            return;
        }
        m6286n(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
    }

    /* renamed from: b */
    public final void m6298b(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (!m6290j()) {
            return;
        }
        m6286n(str, "GET", map, bArr);
    }

    /* renamed from: c */
    public final void m6297c(HttpURLConnection httpURLConnection, int i) {
        String str;
        if (!m6290j()) {
            return;
        }
        m6285o(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
        if (i >= 200 && i < 300) {
            return;
        }
        try {
            str = httpURLConnection.getResponseMessage();
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            C1894po.m6180f(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
            str = null;
        }
        m6284p(str);
    }

    /* renamed from: d */
    public final void m6296d(Map<String, ?> map, int i) {
        if (!m6290j()) {
            return;
        }
        m6285o(map, i);
        if (i >= 200 && i < 300) {
            return;
        }
        m6284p(null);
    }

    /* renamed from: e */
    public final void m6295e(String str) {
        if (m6290j() && str != null) {
            m6294f(str.getBytes());
        }
    }

    /* renamed from: f */
    public final void m6294f(byte[] bArr) {
        m6282r("onNetworkResponseBody", new lo(bArr));
    }
}
