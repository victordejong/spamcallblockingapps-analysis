package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import com.google.android.gms.common.util.AbstractC2708e;
import com.google.android.gms.common.util.C2706c;
import com.google.android.gms.common.util.C2711h;
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
/* renamed from: com.google.android.gms.internal.ads.xv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xv.class */
public final class C3638xv {

    /* renamed from: a */
    private static Object f17626a = new Object();

    /* renamed from: b */
    private static boolean f17627b = false;

    /* renamed from: c */
    private static boolean f17628c = false;

    /* renamed from: d */
    private static AbstractC2708e f17629d = C2711h.m13859d();

    /* renamed from: e */
    private static final Set<String> f17630e = new HashSet(Arrays.asList(new String[0]));

    /* renamed from: f */
    private final List<String> f17631f;

    public C3638xv() {
        this(null);
    }

    public C3638xv(String str) {
        ArrayList asList;
        if (!m6760c()) {
            asList = new ArrayList();
        } else {
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            asList = Arrays.asList(valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_"));
        }
        this.f17631f = asList;
    }

    /* renamed from: a */
    public static void m6779a() {
        synchronized (f17626a) {
            f17627b = false;
            f17628c = false;
            C3645yb.m6745e("Ad debug logging enablement is out of date.");
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m6778a(int i, Map map, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        m6776a(jsonWriter, map);
        jsonWriter.endObject();
    }

    /* renamed from: a */
    private static void m6776a(JsonWriter jsonWriter, Map<String, ?> map) {
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
            if (!f17630e.contains(key)) {
                if (!(next.getValue() instanceof List)) {
                    if (!(next.getValue() instanceof String)) {
                        C3645yb.m6749c("Connection headers should be either Map<String, String> or Map<String, List<String>>");
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

    /* renamed from: a */
    public static final /* synthetic */ void m6774a(String str, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    private final void m6773a(String str, AbstractC3641xy abstractC3641xy) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(f17629d.mo13862a());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.f17631f) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            abstractC3641xy.mo6758a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            C3645yb.m6748c("unable to log", e);
        }
        m6759c(stringWriter.toString());
    }

    /* renamed from: a */
    public static final /* synthetic */ void m6771a(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        m6776a(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(C2706c.m13877a(bArr));
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static void m6767a(boolean z) {
        synchronized (f17626a) {
            f17627b = true;
            f17628c = z;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m6765a(byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String m13877a = C2706c.m13877a(bArr);
        if (length < 10000) {
            jsonWriter.name("body").value(m13877a);
        } else {
            String m6794a = C3634xr.m6794a(m13877a);
            if (m6794a != null) {
                jsonWriter.name("bodydigest").value(m6794a);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static boolean m6777a(Context context) {
        boolean z;
        if (Build.VERSION.SDK_INT < 17) {
            z = false;
        } else if (!C2779al.f9930a.mo13599a().booleanValue()) {
            z = false;
        } else {
            try {
                z = Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
            } catch (Exception e) {
                C3645yb.m6746d("Fail to determine debug setting.", e);
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    private final void m6763b(String str) {
        m6773a("onNetworkRequestError", new AbstractC3641xy(str) { // from class: com.google.android.gms.internal.ads.xz

            /* renamed from: a */
            private final String f17635a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17635a = str;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3641xy
            /* renamed from: a */
            public final void mo6758a(JsonWriter jsonWriter) {
                C3638xv.m6774a(this.f17635a, jsonWriter);
            }
        });
    }

    /* renamed from: b */
    private final void m6762b(String str, String str2, Map<String, ?> map, byte[] bArr) {
        m6773a("onNetworkRequest", new AbstractC3641xy(str, str2, map, bArr) { // from class: com.google.android.gms.internal.ads.xu

            /* renamed from: a */
            private final String f17622a;

            /* renamed from: b */
            private final String f17623b;

            /* renamed from: c */
            private final Map f17624c;

            /* renamed from: d */
            private final byte[] f17625d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17622a = str;
                this.f17623b = str2;
                this.f17624c = map;
                this.f17625d = bArr;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3641xy
            /* renamed from: a */
            public final void mo6758a(JsonWriter jsonWriter) {
                C3638xv.m6771a(this.f17622a, this.f17623b, this.f17624c, this.f17625d, jsonWriter);
            }
        });
    }

    /* renamed from: b */
    private final void m6761b(Map<String, ?> map, int i) {
        m6773a("onNetworkResponse", new AbstractC3641xy(i, map) { // from class: com.google.android.gms.internal.ads.xx

            /* renamed from: a */
            private final int f17633a;

            /* renamed from: b */
            private final Map f17634b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17633a = i;
                this.f17634b = map;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3641xy
            /* renamed from: a */
            public final void mo6758a(JsonWriter jsonWriter) {
                C3638xv.m6778a(this.f17633a, this.f17634b, jsonWriter);
            }
        });
    }

    /* renamed from: b */
    public static boolean m6764b() {
        boolean z;
        synchronized (f17626a) {
            z = f17627b;
        }
        return z;
    }

    /* renamed from: c */
    private static void m6759c(String str) {
        synchronized (C3638xv.class) {
            try {
                C3645yb.m6747d("GMA Debug BEGIN");
                for (int i = 0; i < str.length(); i += 4000) {
                    String valueOf = String.valueOf(str.substring(i, Math.min(i + 4000, str.length())));
                    C3645yb.m6747d(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                }
                C3645yb.m6747d("GMA Debug FINISH");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static boolean m6760c() {
        boolean z;
        synchronized (f17626a) {
            z = f17627b && f17628c;
        }
        return z;
    }

    /* renamed from: a */
    public final void m6775a(String str) {
        if (m6760c() && str != null) {
            m6766a(str.getBytes());
        }
    }

    /* renamed from: a */
    public final void m6772a(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (!m6760c()) {
            return;
        }
        m6762b(str, str2, map, bArr);
    }

    /* renamed from: a */
    public final void m6770a(HttpURLConnection httpURLConnection, int i) {
        String str;
        if (!m6760c()) {
            return;
        }
        m6761b(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
        if (i >= 200 && i < 300) {
            return;
        }
        try {
            str = httpURLConnection.getResponseMessage();
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            C3645yb.m6745e(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
            str = null;
        }
        m6763b(str);
    }

    /* renamed from: a */
    public final void m6769a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (!m6760c()) {
            return;
        }
        m6762b(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
    }

    /* renamed from: a */
    public final void m6768a(Map<String, ?> map, int i) {
        if (!m6760c()) {
            return;
        }
        m6761b(map, i);
        if (i >= 200 && i < 300) {
            return;
        }
        m6763b(null);
    }

    /* renamed from: a */
    public final void m6766a(byte[] bArr) {
        m6773a("onNetworkResponseBody", new AbstractC3641xy(bArr) { // from class: com.google.android.gms.internal.ads.xw

            /* renamed from: a */
            private final byte[] f17632a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f17632a = bArr;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC3641xy
            /* renamed from: a */
            public final void mo6758a(JsonWriter jsonWriter) {
                C3638xv.m6765a(this.f17632a, jsonWriter);
            }
        });
    }
}
