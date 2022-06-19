package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import androidx.core.app.NotificationCompat;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaze.class */
public final class zzaze {
    private static boolean enabled = false;
    private static boolean zzehs = false;
    private final List<String> zzehu;
    private static Object lock = new Object();
    private static Clock zzbqg = DefaultClock.getInstance();
    private static final Set<String> zzeht = new HashSet(Arrays.asList(new String[0]));

    public zzaze() {
        this(null);
    }

    public zzaze(String str) {
        ArrayList arrayList;
        if (!isEnabled()) {
            arrayList = new ArrayList();
        } else {
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            arrayList = Arrays.asList(valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_"));
        }
        this.zzehu = arrayList;
    }

    public static boolean isEnabled() {
        boolean z;
        synchronized (lock) {
            z = zzehs && enabled;
        }
        return z;
    }

    public static final /* synthetic */ void zza(int i, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        zza(jsonWriter, map);
        jsonWriter.endObject();
    }

    private static void zza(JsonWriter jsonWriter, Map<String, ?> map) throws IOException {
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
            if (!zzeht.contains(key)) {
                if (!(next.getValue() instanceof List)) {
                    if (!(next.getValue() instanceof String)) {
                        zzazk.zzev("Connection headers should be either Map<String, String> or Map<String, List<String>>");
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

    public static final /* synthetic */ void zza(String str, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
        if (str != null) {
            jsonWriter.name(NativeProtocol.BRIDGE_ARG_ERROR_DESCRIPTION).value(str);
        }
        jsonWriter.endObject();
    }

    private final void zza(String str, zzazh zzazhVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(zzbqg.currentTimeMillis());
            jsonWriter.name(NotificationCompat.CATEGORY_EVENT).value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.zzehu) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            zzazhVar.zzb(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzazk.zzc("unable to log", e);
        }
        zzeu(stringWriter.toString());
    }

    public static final /* synthetic */ void zza(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name(ShareConstants.MEDIA_URI).value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        zza(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name(SDKConstants.PARAM_A2U_BODY).value(Base64Utils.encode(bArr));
        }
        jsonWriter.endObject();
    }

    public static final /* synthetic */ void zza(byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name(NativeProtocol.WEB_DIALOG_PARAMS).beginObject();
        int length = bArr.length;
        String encode = Base64Utils.encode(bArr);
        if (length < 10000) {
            jsonWriter.name(SDKConstants.PARAM_A2U_BODY).value(encode);
        } else {
            String zzeq = zzaza.zzeq(encode);
            if (zzeq != null) {
                jsonWriter.name("bodydigest").value(zzeq);
            }
        }
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    public static boolean zzaaa() {
        boolean z;
        synchronized (lock) {
            z = zzehs;
        }
        return z;
    }

    public static void zzas(boolean z) {
        synchronized (lock) {
            zzehs = true;
            enabled = z;
        }
    }

    private final void zzb(String str, String str2, Map<String, ?> map, byte[] bArr) {
        zza("onNetworkRequest", new zzazh(str, str2, map, bArr) { // from class: com.google.android.gms.internal.ads.zzazd
            private final String zzdjf;
            private final String zzdlh;
            private final Map zzehq;
            private final byte[] zzehr;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdlh = str;
                this.zzdjf = str2;
                this.zzehq = map;
                this.zzehr = bArr;
            }

            @Override // com.google.android.gms.internal.ads.zzazh
            public final void zzb(JsonWriter jsonWriter) {
                zzaze.zza(this.zzdlh, this.zzdjf, this.zzehq, this.zzehr, jsonWriter);
            }
        });
    }

    private final void zzb(Map<String, ?> map, int i) {
        zza("onNetworkResponse", new zzazh(i, map) { // from class: com.google.android.gms.internal.ads.zzazg
            private final int zzehw;
            private final Map zzehx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzehw = i;
                this.zzehx = map;
            }

            @Override // com.google.android.gms.internal.ads.zzazh
            public final void zzb(JsonWriter jsonWriter) {
                zzaze.zza(this.zzehw, this.zzehx, jsonWriter);
            }
        });
    }

    public static boolean zzbs(Context context) {
        if (Build.VERSION.SDK_INT >= 17 && zzadh.zzddu.get().booleanValue()) {
            try {
                return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
            } catch (Exception e) {
                zzazk.zzd("Fail to determine debug setting.", e);
                return false;
            }
        }
        return false;
    }

    private final void zzet(String str) {
        zza("onNetworkRequestError", new zzazh(str) { // from class: com.google.android.gms.internal.ads.zzazi
            private final String zzdlh;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzdlh = str;
            }

            @Override // com.google.android.gms.internal.ads.zzazh
            public final void zzb(JsonWriter jsonWriter) {
                zzaze.zza(this.zzdlh, jsonWriter);
            }
        });
    }

    private static void zzeu(String str) {
        synchronized (zzaze.class) {
            try {
                zzazk.zzew("GMA Debug BEGIN");
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < str.length()) {
                        int i3 = i2 + 4000;
                        String valueOf = String.valueOf(str.substring(i2, Math.min(i3, str.length())));
                        zzazk.zzew(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                        i = i3;
                    } else {
                        zzazk.zzew("GMA Debug FINISH");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void zzzz() {
        synchronized (lock) {
            zzehs = false;
            enabled = false;
            zzazk.zzex("Ad debug logging enablement is out of date.");
        }
    }

    public final void zza(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (!isEnabled()) {
            return;
        }
        zzb(str, str2, map, bArr);
    }

    public final void zza(HttpURLConnection httpURLConnection, int i) {
        String str;
        if (!isEnabled()) {
            return;
        }
        zzb(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
        if (i >= 200 && i < 300) {
            return;
        }
        try {
            str = httpURLConnection.getResponseMessage();
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzazk.zzex(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
            str = null;
        }
        zzet(str);
    }

    public final void zza(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (!isEnabled()) {
            return;
        }
        zzb(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
    }

    public final void zza(Map<String, ?> map, int i) {
        if (!isEnabled()) {
            return;
        }
        zzb(map, i);
        if (i >= 200 && i < 300) {
            return;
        }
        zzet(null);
    }

    public final void zzes(String str) {
        if (isEnabled() && str != null) {
            zzi(str.getBytes());
        }
    }

    public final void zzi(byte[] bArr) {
        zza("onNetworkResponseBody", new zzazh(bArr) { // from class: com.google.android.gms.internal.ads.zzazf
            private final byte[] zzehv;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzehv = bArr;
            }

            @Override // com.google.android.gms.internal.ads.zzazh
            public final void zzb(JsonWriter jsonWriter) {
                zzaze.zza(this.zzehv, jsonWriter);
            }
        });
    }
}
