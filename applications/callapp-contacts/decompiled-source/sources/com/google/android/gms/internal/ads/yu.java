package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.google.android.gms.common.util.c;
import com.google.android.gms.common.util.f;
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
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yu.class */
public final class yu {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f28565b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f28566c = false;
    private final List<String> f;

    /* renamed from: a  reason: collision with root package name */
    private static Object f28564a = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static f f28567d = i.d();
    private static final Set<String> e = new HashSet(Arrays.asList(new String[0]));

    public yu() {
        this(null);
    }

    public yu(String str) {
        List<String> list;
        if (!c()) {
            list = new ArrayList<>();
        } else {
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            list = Arrays.asList(valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_"));
        }
        this.f = list;
    }

    public static void a() {
        synchronized (f28564a) {
            f28565b = false;
            f28566c = false;
            za.zzez("Ad debug logging enablement is out of date.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(int i, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        a(jsonWriter, map);
        jsonWriter.endObject();
    }

    private static void a(JsonWriter jsonWriter, Map<String, ?> map) throws IOException {
        if (map != null) {
            jsonWriter.name("headers").beginArray();
            Iterator<Map.Entry<String, ?>> it2 = map.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<String, ?> next = it2.next();
                String key = next.getKey();
                if (!e.contains(key)) {
                    if (!(next.getValue() instanceof List)) {
                        if (!(next.getValue() instanceof String)) {
                            za.zzex("Connection headers should be either Map<String, String> or Map<String, List<String>>");
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(String str, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    private final void a(String str, yx yxVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name(Reporting.Key.TIMESTAMP).value(f28567d.a());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.f) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            yxVar.a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e2) {
            za.zzc("unable to log", e2);
        }
        c(stringWriter.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        a(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(c.a(bArr));
        }
        jsonWriter.endObject();
    }

    public static void a(boolean z) {
        synchronized (f28564a) {
            f28565b = true;
            f28566c = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void a(byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String a2 = c.a(bArr);
        if (length < 10000) {
            jsonWriter.name("body").value(a2);
        } else {
            String a3 = yq.a(a2);
            if (a3 != null) {
                jsonWriter.name("bodydigest").value(a3);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    public static boolean a(Context context) {
        if (Build.VERSION.SDK_INT < 17 || !ck.f25964a.a().booleanValue()) {
            return false;
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
        } catch (Exception e2) {
            za.zzd("Fail to determine debug setting.", e2);
            return false;
        }
    }

    private final void b(final String str, final String str2, final Map<String, ?> map, final byte[] bArr) {
        a("onNetworkRequest", new yx(str, str2, map, bArr) { // from class: com.google.android.gms.internal.ads.yt

            /* renamed from: a  reason: collision with root package name */
            private final String f28560a;

            /* renamed from: b  reason: collision with root package name */
            private final String f28561b;

            /* renamed from: c  reason: collision with root package name */
            private final Map f28562c;

            /* renamed from: d  reason: collision with root package name */
            private final byte[] f28563d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28560a = str;
                this.f28561b = str2;
                this.f28562c = map;
                this.f28563d = bArr;
            }

            @Override // com.google.android.gms.internal.ads.yx
            public final void a(JsonWriter jsonWriter) {
                yu.a(this.f28560a, this.f28561b, this.f28562c, this.f28563d, jsonWriter);
            }
        });
    }

    public static boolean b() {
        boolean z;
        synchronized (f28564a) {
            z = f28565b;
        }
        return z;
    }

    private static void c(String str) {
        synchronized (yu.class) {
            try {
                za.zzey("GMA Debug BEGIN");
                int i = 0;
                while (i < str.length()) {
                    int i2 = i + ConferenceActivity.SNACK_BAR_DURATION;
                    String valueOf = String.valueOf(str.substring(i, Math.min(i2, str.length())));
                    za.zzey(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                    i = i2;
                }
                za.zzey("GMA Debug FINISH");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean c() {
        boolean z;
        synchronized (f28564a) {
            z = f28565b && f28566c;
        }
        return z;
    }

    public final void a(String str) {
        if (c() && str != null) {
            a(str.getBytes());
        }
    }

    public final void a(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (c()) {
            b(str, str2, map, bArr);
        }
    }

    public final void a(HttpURLConnection httpURLConnection, int i) {
        if (c()) {
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            String str = null;
            a(headerFields == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
            if (i < 200 || i >= 300) {
                try {
                    str = httpURLConnection.getResponseMessage();
                } catch (IOException e2) {
                    String valueOf = String.valueOf(e2.getMessage());
                    za.zzez(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                }
                b(str);
            }
        }
    }

    public final void a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (c()) {
            b(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    public final void a(final Map<String, ?> map, final int i) {
        a("onNetworkResponse", new yx(i, map) { // from class: com.google.android.gms.internal.ads.yw

            /* renamed from: a  reason: collision with root package name */
            private final int f28569a;

            /* renamed from: b  reason: collision with root package name */
            private final Map f28570b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28569a = i;
                this.f28570b = map;
            }

            @Override // com.google.android.gms.internal.ads.yx
            public final void a(JsonWriter jsonWriter) {
                yu.a(this.f28569a, this.f28570b, jsonWriter);
            }
        });
    }

    public final void a(final byte[] bArr) {
        a("onNetworkResponseBody", new yx(bArr) { // from class: com.google.android.gms.internal.ads.yv

            /* renamed from: a  reason: collision with root package name */
            private final byte[] f28568a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28568a = bArr;
            }

            @Override // com.google.android.gms.internal.ads.yx
            public final void a(JsonWriter jsonWriter) {
                yu.a(this.f28568a, jsonWriter);
            }
        });
    }

    public final void b(final String str) {
        a("onNetworkRequestError", new yx(str) { // from class: com.google.android.gms.internal.ads.yy

            /* renamed from: a  reason: collision with root package name */
            private final String f28571a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28571a = str;
            }

            @Override // com.google.android.gms.internal.ads.yx
            public final void a(JsonWriter jsonWriter) {
                yu.a(this.f28571a, jsonWriter);
            }
        });
    }
}
