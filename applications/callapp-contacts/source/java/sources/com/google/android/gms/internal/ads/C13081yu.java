package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import com.callapp.contacts.activity.contact.details.ConferenceActivity;
import com.google.android.gms.common.util.AbstractC12102f;
import com.google.android.gms.common.util.C12099c;
import com.google.android.gms.common.util.C12105i;
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
/* renamed from: com.google.android.gms.internal.ads.yu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yu.class */
public final class C13081yu {

    /* renamed from: b */
    private static boolean f50108b = false;

    /* renamed from: c */
    private static boolean f50109c = false;

    /* renamed from: f */
    private final List<String> f50112f;

    /* renamed from: a */
    private static Object f50107a = new Object();

    /* renamed from: d */
    private static AbstractC12102f f50110d = C12105i.m19036d();

    /* renamed from: e */
    private static final Set<String> f50111e = new HashSet(Arrays.asList(new String[0]));

    public C13081yu() {
        this(null);
    }

    public C13081yu(String str) {
        ArrayList arrayList;
        if (!m13908c()) {
            arrayList = new ArrayList();
        } else {
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            arrayList = Arrays.asList(valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_"));
        }
        this.f50112f = arrayList;
    }

    /* renamed from: a */
    public static void m13926a() {
        synchronized (f50107a) {
            f50108b = false;
            f50109c = false;
            C13088za.zzez("Ad debug logging enablement is out of date.");
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m13925a(int i, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        m13923a(jsonWriter, map);
        jsonWriter.endObject();
    }

    /* renamed from: a */
    private static void m13923a(JsonWriter jsonWriter, Map<String, ?> map) throws IOException {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator<Map.Entry<String, ?>> it2 = map.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it2.next();
            String key = next.getKey();
            if (!f50111e.contains(key)) {
                if (!(next.getValue() instanceof List)) {
                    if (!(next.getValue() instanceof String)) {
                        C13088za.zzex("Connection headers should be either Map<String, String> or Map<String, List<String>>");
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
    public static final /* synthetic */ void m13921a(String str, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    private final void m13920a(String str, AbstractC13084yx abstractC13084yx) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name(Reporting.Key.TIMESTAMP).value(f50110d.mo19039a());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.f50112f) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            abstractC13084yx.mo13906a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            C13088za.zzc("unable to log", e);
        }
        m13907c(stringWriter.toString());
    }

    /* renamed from: a */
    public static final /* synthetic */ void m13918a(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        m13923a(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(C12099c.m19046a(bArr));
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static void m13914a(boolean z) {
        synchronized (f50107a) {
            f50108b = true;
            f50109c = z;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m13912a(byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String m19046a = C12099c.m19046a(bArr);
        if (length < 10000) {
            jsonWriter.name("body").value(m19046a);
        } else {
            String m13942a = C13077yq.m13942a(m19046a);
            if (m13942a != null) {
                jsonWriter.name("bodydigest").value(m13942a);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    /* renamed from: a */
    public static boolean m13924a(Context context) {
        if (Build.VERSION.SDK_INT >= 17 && C12275ck.f45946a.mo17481a().booleanValue()) {
            try {
                return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
            } catch (Exception e) {
                C13088za.zzd("Fail to determine debug setting.", e);
                return false;
            }
        }
        return false;
    }

    /* renamed from: b */
    private final void m13909b(String str, String str2, Map<String, ?> map, byte[] bArr) {
        m13920a("onNetworkRequest", new AbstractC13084yx(str, str2, map, bArr) { // from class: com.google.android.gms.internal.ads.yt

            /* renamed from: a */
            private final String f50103a;

            /* renamed from: b */
            private final String f50104b;

            /* renamed from: c */
            private final Map f50105c;

            /* renamed from: d */
            private final byte[] f50106d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f50103a = str;
                this.f50104b = str2;
                this.f50105c = map;
                this.f50106d = bArr;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC13084yx
            /* renamed from: a */
            public final void mo13906a(JsonWriter jsonWriter) {
                C13081yu.m13918a(this.f50103a, this.f50104b, this.f50105c, this.f50106d, jsonWriter);
            }
        });
    }

    /* renamed from: b */
    public static boolean m13911b() {
        boolean z;
        synchronized (f50107a) {
            z = f50108b;
        }
        return z;
    }

    /* renamed from: c */
    private static void m13907c(String str) {
        synchronized (C13081yu.class) {
            try {
                C13088za.zzey("GMA Debug BEGIN");
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < str.length()) {
                        int i3 = i2 + ConferenceActivity.SNACK_BAR_DURATION;
                        String valueOf = String.valueOf(str.substring(i2, Math.min(i3, str.length())));
                        C13088za.zzey(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                        i = i3;
                    } else {
                        C13088za.zzey("GMA Debug FINISH");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public static boolean m13908c() {
        boolean z;
        synchronized (f50107a) {
            z = f50108b && f50109c;
        }
        return z;
    }

    /* renamed from: a */
    public final void m13922a(String str) {
        if (m13908c() && str != null) {
            m13913a(str.getBytes());
        }
    }

    /* renamed from: a */
    public final void m13919a(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (!m13908c()) {
            return;
        }
        m13909b(str, str2, map, bArr);
    }

    /* renamed from: a */
    public final void m13917a(HttpURLConnection httpURLConnection, int i) {
        String str;
        if (!m13908c()) {
            return;
        }
        m13915a(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
        if (i >= 200 && i < 300) {
            return;
        }
        try {
            str = httpURLConnection.getResponseMessage();
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            C13088za.zzez(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
            str = null;
        }
        m13910b(str);
    }

    /* renamed from: a */
    public final void m13916a(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (!m13908c()) {
            return;
        }
        m13909b(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
    }

    /* renamed from: a */
    public final void m13915a(Map<String, ?> map, int i) {
        m13920a("onNetworkResponse", new AbstractC13084yx(i, map) { // from class: com.google.android.gms.internal.ads.yw

            /* renamed from: a */
            private final int f50114a;

            /* renamed from: b */
            private final Map f50115b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f50114a = i;
                this.f50115b = map;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC13084yx
            /* renamed from: a */
            public final void mo13906a(JsonWriter jsonWriter) {
                C13081yu.m13925a(this.f50114a, this.f50115b, jsonWriter);
            }
        });
    }

    /* renamed from: a */
    public final void m13913a(byte[] bArr) {
        m13920a("onNetworkResponseBody", new AbstractC13084yx(bArr) { // from class: com.google.android.gms.internal.ads.yv

            /* renamed from: a */
            private final byte[] f50113a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f50113a = bArr;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC13084yx
            /* renamed from: a */
            public final void mo13906a(JsonWriter jsonWriter) {
                C13081yu.m13912a(this.f50113a, jsonWriter);
            }
        });
    }

    /* renamed from: b */
    public final void m13910b(String str) {
        m13920a("onNetworkRequestError", new AbstractC13084yx(str) { // from class: com.google.android.gms.internal.ads.yy

            /* renamed from: a */
            private final String f50116a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f50116a = str;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC13084yx
            /* renamed from: a */
            public final void mo13906a(JsonWriter jsonWriter) {
                C13081yu.m13921a(this.f50116a, jsonWriter);
            }
        });
    }
}
