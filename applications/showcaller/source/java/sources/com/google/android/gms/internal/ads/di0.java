package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.gms.common.util.AbstractC6227e;
import com.google.android.gms.common.util.C6225c;
import com.google.android.gms.common.util.C6230h;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/di0.class */
public final class di0 {

    /* renamed from: b */
    private static boolean f21637b = false;

    /* renamed from: c */
    private static boolean f21638c = false;

    /* renamed from: f */
    public static final /* synthetic */ int f21641f = 0;

    /* renamed from: g */
    private final List<String> f21642g;

    /* renamed from: a */
    private static final Object f21636a = new Object();

    /* renamed from: d */
    private static final AbstractC6227e f21639d = C6230h.m16804d();

    /* renamed from: e */
    private static final Set<String> f21640e = new HashSet(Arrays.asList(new String[0]));

    public di0(String str) {
        ArrayList arrayList;
        if (!m15804j()) {
            arrayList = new ArrayList();
        } else {
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            arrayList = Arrays.asList(valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_"));
        }
        this.f21642g = arrayList;
    }

    /* renamed from: g */
    public static void m15807g() {
        synchronized (f21636a) {
            f21637b = false;
            f21638c = false;
            ei0.m15464f("Ad debug logging enablement is out of date.");
        }
    }

    /* renamed from: h */
    public static void m15806h(boolean z) {
        synchronized (f21636a) {
            f21637b = true;
            f21638c = z;
        }
    }

    /* renamed from: i */
    public static boolean m15805i() {
        boolean z;
        synchronized (f21636a) {
            z = f21637b;
        }
        return z;
    }

    /* renamed from: j */
    public static boolean m15804j() {
        boolean z;
        synchronized (f21636a) {
            z = false;
            if (f21637b) {
                z = false;
                if (f21638c) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: k */
    public static boolean m15803k(Context context) {
        if (Build.VERSION.SDK_INT >= 17 && C7087vx.f31395a.m12799e().booleanValue()) {
            try {
                return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
            } catch (Exception e) {
                ei0.m15463g("Fail to determine debug setting.", e);
                return false;
            }
        }
        return false;
    }

    /* renamed from: l */
    public static final /* synthetic */ void m15802l(int i, Map map, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        m15797q(jsonWriter, map);
        jsonWriter.endObject();
    }

    /* renamed from: m */
    public static final /* synthetic */ void m15801m(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        m15797q(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(C6225c.m16821a(bArr));
        }
        jsonWriter.endObject();
    }

    /* renamed from: n */
    private final void m15800n(String str, String str2, Map<String, ?> map, byte[] bArr) {
        m15796r("onNetworkRequest", new ci0(str, str2, map, bArr) { // from class: com.google.android.gms.internal.ads.yh0

            /* renamed from: a */
            private final String f32506a;

            /* renamed from: b */
            private final String f32507b;

            /* renamed from: c */
            private final Map f32508c;

            /* renamed from: d */
            private final byte[] f32509d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32506a = str;
                this.f32507b = str2;
                this.f32508c = map;
                this.f32509d = bArr;
            }

            @Override // com.google.android.gms.internal.ads.ci0
            /* renamed from: a */
            public final void mo8386a(JsonWriter jsonWriter) {
                di0.m15801m(this.f32506a, this.f32507b, this.f32508c, this.f32509d, jsonWriter);
            }
        });
    }

    /* renamed from: o */
    private final void m15799o(Map<String, ?> map, int i) {
        m15796r("onNetworkResponse", new ci0(i, map) { // from class: com.google.android.gms.internal.ads.zh0

            /* renamed from: a */
            private final int f32926a;

            /* renamed from: b */
            private final Map f32927b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32926a = i;
                this.f32927b = map;
            }

            @Override // com.google.android.gms.internal.ads.ci0
            /* renamed from: a */
            public final void mo8386a(JsonWriter jsonWriter) {
                di0.m15802l(this.f32926a, this.f32927b, jsonWriter);
            }
        });
    }

    /* renamed from: p */
    private final void m15798p(String str) {
        m15796r("onNetworkRequestError", new ci0(str) { // from class: com.google.android.gms.internal.ads.bi0

            /* renamed from: a */
            private final String f20464a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f20464a = str;
            }

            @Override // com.google.android.gms.internal.ads.ci0
            /* renamed from: a */
            public final void mo8386a(JsonWriter jsonWriter) {
                String str2 = this.f20464a;
                int i = di0.f21641f;
                jsonWriter.name("params").beginObject();
                if (str2 != null) {
                    jsonWriter.name("error_description").value(str2);
                }
                jsonWriter.endObject();
            }
        });
    }

    /* renamed from: q */
    private static void m15797q(JsonWriter jsonWriter, Map<String, ?> map) {
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
            if (!f21640e.contains(key)) {
                if (!(next.getValue() instanceof List)) {
                    if (!(next.getValue() instanceof String)) {
                        ei0.m15467c("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name(ShortCut.NAME).value(key);
                    jsonWriter.name("value").value((String) next.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str : (List) next.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name(ShortCut.NAME).value(key);
                        jsonWriter.name("value").value(str);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    /* renamed from: r */
    private final void m15796r(String str, ci0 ci0Var) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(f21639d.mo16807a());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.f21642g) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            ci0Var.mo8386a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            ei0.m15466d("unable to log", e);
        }
        m15795s(stringWriter.toString());
    }

    /* renamed from: s */
    private static void m15795s(String str) {
        synchronized (di0.class) {
            try {
                ei0.m15465e("GMA Debug BEGIN");
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < str.length()) {
                        int i3 = i2 + 4000;
                        String valueOf = String.valueOf(str.substring(i2, Math.min(i3, str.length())));
                        ei0.m15465e(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                        i = i3;
                    } else {
                        ei0.m15465e("GMA Debug FINISH");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m15813a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (!m15804j()) {
            return;
        }
        m15800n(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
    }

    /* renamed from: b */
    public final void m15812b(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (!m15804j()) {
            return;
        }
        m15800n(str, "GET", map, bArr);
    }

    /* renamed from: c */
    public final void m15811c(HttpURLConnection httpURLConnection, int i) {
        String str;
        if (!m15804j()) {
            return;
        }
        m15799o(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
        if (i >= 200 && i < 300) {
            return;
        }
        try {
            str = httpURLConnection.getResponseMessage();
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            ei0.m15464f(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
            str = null;
        }
        m15798p(str);
    }

    /* renamed from: d */
    public final void m15810d(Map<String, ?> map, int i) {
        if (!m15804j()) {
            return;
        }
        m15799o(map, i);
        if (i >= 200 && i < 300) {
            return;
        }
        m15798p(null);
    }

    /* renamed from: e */
    public final void m15809e(String str) {
        if (m15804j() && str != null) {
            m15808f(str.getBytes());
        }
    }

    /* renamed from: f */
    public final void m15808f(byte[] bArr) {
        m15796r("onNetworkResponseBody", new ci0(bArr) { // from class: com.google.android.gms.internal.ads.ai0

            /* renamed from: a */
            private final byte[] f19957a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19957a = bArr;
            }

            @Override // com.google.android.gms.internal.ads.ci0
            /* renamed from: a */
            public final void mo8386a(JsonWriter jsonWriter) {
                byte[] bArr2 = this.f19957a;
                int i = di0.f21641f;
                jsonWriter.name("params").beginObject();
                int length = bArr2.length;
                String m16821a = C6225c.m16821a(bArr2);
                if (length < 10000) {
                    jsonWriter.name("body").value(m16821a);
                } else {
                    String m9174d = xh0.m9174d(m16821a);
                    if (m9174d != null) {
                        jsonWriter.name("bodydigest").value(m9174d);
                    }
                }
                jsonWriter.name("bodylength").value(length);
                jsonWriter.endObject();
            }
        });
    }
}
