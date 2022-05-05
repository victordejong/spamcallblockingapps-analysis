package p081h.p203i.p204a.p224e.p259j.p260a;

import android.util.JsonWriter;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.media2.exoplayer.external.audio.Sonic;
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
import p081h.p203i.p204a.p224e.p235d.p249s.AbstractC7074f;
import p081h.p203i.p204a.p224e.p235d.p249s.C7071c;
import p081h.p203i.p204a.p224e.p235d.p249s.C7077i;
import p459j.p460a.p541n0.C13032a;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.s1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/s1.class */
public final class C7392s1 {
    @GuardedBy("sLock")

    /* renamed from: c */
    public static boolean f17443c = false;
    @GuardedBy("sLock")

    /* renamed from: d */
    public static boolean f17444d = false;

    /* renamed from: a */
    public final List<String> f17447a;

    /* renamed from: b */
    public static Object f17442b = new Object();

    /* renamed from: e */
    public static AbstractC7074f f17445e = C7077i.m21148a();

    /* renamed from: f */
    public static final Set<String> f17446f = new HashSet(Arrays.asList(new String[0]));

    public C7392s1() {
        this(null);
    }

    public C7392s1(@Nullable String str) {
        List<String> list;
        if (!m20697a()) {
            list = new ArrayList<>();
        } else {
            String uuid = UUID.randomUUID().toString();
            if (str == null) {
                String valueOf = String.valueOf(uuid);
                list = Arrays.asList(valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_"));
            } else {
                String valueOf2 = String.valueOf(str);
                String concat = valueOf2.length() != 0 ? "ad_request_".concat(valueOf2) : new String("ad_request_");
                String valueOf3 = String.valueOf(uuid);
                list = Arrays.asList(concat, valueOf3.length() != 0 ? "network_request_".concat(valueOf3) : new String("network_request_"));
            }
        }
        this.f17447a = list;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m20696a(int i, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        m20695a(jsonWriter, map);
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static void m20695a(JsonWriter jsonWriter, @Nullable Map<String, ?> map) throws IOException {
        if (map != null) {
            jsonWriter.name("headers").beginArray();
            Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, ?> next = it.next();
                String key = next.getKey();
                if (!f17446f.contains(key)) {
                    if (!(next.getValue() instanceof List)) {
                        if (!(next.getValue() instanceof String)) {
                            C7452x1.m20574a("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                            break;
                        }
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(key);
                        jsonWriter.name(C13032a.f29462d).value((String) next.getValue());
                        jsonWriter.endObject();
                    } else {
                        for (String str : (List) next.getValue()) {
                            jsonWriter.beginObject();
                            jsonWriter.name("name").value(key);
                            jsonWriter.name(C13032a.f29462d).value(str);
                            jsonWriter.endObject();
                        }
                    }
                }
            }
            jsonWriter.endArray();
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m20693a(String str, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static final /* synthetic */ void m20690a(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        m20695a(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(C7071c.m21160a(bArr));
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static boolean m20697a() {
        boolean z;
        synchronized (f17442b) {
            z = f17443c && f17444d;
        }
        return z;
    }

    /* renamed from: b */
    public static void m20686b(String str) {
        synchronized (C7392s1.class) {
            try {
                C7452x1.m20570c("GMA Debug BEGIN");
                int i = 0;
                while (i < str.length()) {
                    int i2 = i + Sonic.AMDF_FREQUENCY;
                    String valueOf = String.valueOf(str.substring(i, Math.min(i2, str.length())));
                    C7452x1.m20570c(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                    i = i2;
                }
                C7452x1.m20570c("GMA Debug FINISH");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final void m20694a(@Nullable final String str) {
        m20692a("onNetworkRequestError", new AbstractC7440w1(str) { // from class: h.i.a.e.j.a.v1

            /* renamed from: a */
            public final String f17488a;

            {
                this.f17488a = str;
            }

            @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7440w1
            /* renamed from: a */
            public final void mo20619a(JsonWriter jsonWriter) {
                C7392s1.m20693a(this.f17488a, jsonWriter);
            }
        });
    }

    /* renamed from: a */
    public final void m20692a(String str, AbstractC7440w1 w1Var) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(f17445e.currentTimeMillis());
            jsonWriter.name(NotificationCompat.CATEGORY_EVENT).value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.f17447a) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            w1Var.mo20619a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            C7452x1.m20571b("unable to log", e);
        }
        m20686b(stringWriter.toString());
    }

    /* renamed from: a */
    public final void m20691a(final String str, final String str2, @Nullable final Map<String, ?> map, @Nullable final byte[] bArr) {
        m20692a("onNetworkRequest", new AbstractC7440w1(str, str2, map, bArr) { // from class: h.i.a.e.j.a.t1

            /* renamed from: a */
            public final String f17458a;

            /* renamed from: b */
            public final String f17459b;

            /* renamed from: c */
            public final Map f17460c;

            /* renamed from: d */
            public final byte[] f17461d;

            {
                this.f17458a = str;
                this.f17459b = str2;
                this.f17460c = map;
                this.f17461d = bArr;
            }

            @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7440w1
            /* renamed from: a */
            public final void mo20619a(JsonWriter jsonWriter) {
                C7392s1.m20690a(this.f17458a, this.f17459b, this.f17460c, this.f17461d, jsonWriter);
            }
        });
    }

    /* renamed from: a */
    public final void m20689a(HttpURLConnection httpURLConnection, int i) {
        if (m20697a()) {
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            String str = null;
            m20687a(headerFields == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
            if (i < 200 || i >= 300) {
                try {
                    str = httpURLConnection.getResponseMessage();
                } catch (IOException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    C7452x1.m20568d(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                }
                m20694a(str);
            }
        }
    }

    /* renamed from: a */
    public final void m20688a(HttpURLConnection httpURLConnection, @Nullable byte[] bArr) {
        if (m20697a()) {
            m20691a(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    /* renamed from: a */
    public final void m20687a(@Nullable final Map<String, ?> map, final int i) {
        m20692a("onNetworkResponse", new AbstractC7440w1(i, map) { // from class: h.i.a.e.j.a.u1

            /* renamed from: a */
            public final int f17480a;

            /* renamed from: b */
            public final Map f17481b;

            {
                this.f17480a = i;
                this.f17481b = map;
            }

            @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7440w1
            /* renamed from: a */
            public final void mo20619a(JsonWriter jsonWriter) {
                C7392s1.m20696a(this.f17480a, this.f17481b, jsonWriter);
            }
        });
    }
}
