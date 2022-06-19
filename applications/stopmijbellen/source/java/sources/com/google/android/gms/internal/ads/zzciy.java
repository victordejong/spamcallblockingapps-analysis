package com.google.android.gms.internal.ads;

import android.content.Context;
import android.provider.Settings;
import android.util.JsonWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
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
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzciy.class */
public final class zzciy {
    public static final /* synthetic */ int zza = 0;
    private static boolean zzc = false;
    private static boolean zzd = false;
    private final List<String> zzg;
    private static final Object zzb = new Object();
    private static final Clock zze = DefaultClock.getInstance();
    private static final Set<String> zzf = new HashSet(Arrays.asList(new String[0]));

    public zzciy() {
        this(null);
    }

    public zzciy(String str) {
        ArrayList arrayList;
        if (!zzl()) {
            arrayList = new ArrayList();
        } else {
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            arrayList = Arrays.asList(valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_"));
        }
        this.zzg = arrayList;
    }

    public static /* synthetic */ void zza(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        zzs(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(Base64Utils.encode(bArr));
        }
        jsonWriter.endObject();
    }

    public static /* synthetic */ void zzb(int i, Map map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        zzs(jsonWriter, map);
        jsonWriter.endObject();
    }

    public static void zzi() {
        synchronized (zzb) {
            zzc = false;
            zzd = false;
            zzciz.zzj("Ad debug logging enablement is out of date.");
        }
    }

    public static void zzj(boolean z) {
        synchronized (zzb) {
            zzc = true;
            zzd = z;
        }
    }

    public static boolean zzk(Context context) {
        if (!zzbmu.zza.zze().booleanValue()) {
            return false;
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
        } catch (Exception e) {
            zzciz.zzk("Fail to determine debug setting.", e);
            return false;
        }
    }

    public static boolean zzl() {
        boolean z;
        synchronized (zzb) {
            z = false;
            if (zzc) {
                z = false;
                if (zzd) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static boolean zzm() {
        boolean z;
        synchronized (zzb) {
            z = zzc;
        }
        return z;
    }

    private static void zzn(String str) {
        synchronized (zzciy.class) {
            try {
                zzciz.zzi("GMA Debug BEGIN");
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < str.length()) {
                        int i3 = i2 + 4000;
                        String valueOf = String.valueOf(str.substring(i2, Math.min(i3, str.length())));
                        zzciz.zzi(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                        i = i3;
                    } else {
                        zzciz.zzi("GMA Debug FINISH");
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzo(String str, zzcix zzcixVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(zze.currentTimeMillis());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.zzg) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            zzcixVar.zza(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzciz.zzh("unable to log", e);
        }
        zzn(stringWriter.toString());
    }

    private final void zzp(final String str) {
        zzo("onNetworkRequestError", new zzcix() { // from class: com.google.android.gms.internal.ads.zzciu
            @Override // com.google.android.gms.internal.ads.zzcix
            public final void zza(JsonWriter jsonWriter) {
                String str2 = str;
                int i = zzciy.zza;
                jsonWriter.name("params").beginObject();
                if (str2 != null) {
                    jsonWriter.name("error_description").value(str2);
                }
                jsonWriter.endObject();
            }
        });
    }

    private final void zzq(final String str, final String str2, final Map<String, ?> map, final byte[] bArr) {
        zzo("onNetworkRequest", new zzcix() { // from class: com.google.android.gms.internal.ads.zzciv
            @Override // com.google.android.gms.internal.ads.zzcix
            public final void zza(JsonWriter jsonWriter) {
                zzciy.zza(str, str2, map, bArr, jsonWriter);
            }
        });
    }

    private final void zzr(final Map<String, ?> map, final int i) {
        zzo("onNetworkResponse", new zzcix() { // from class: com.google.android.gms.internal.ads.zzcit
            @Override // com.google.android.gms.internal.ads.zzcix
            public final void zza(JsonWriter jsonWriter) {
                zzciy.zzb(i, map, jsonWriter);
            }
        });
    }

    private static void zzs(JsonWriter jsonWriter, Map<String, ?> map) throws IOException {
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
            if (!zzf.contains(key)) {
                if (!(next.getValue() instanceof List)) {
                    if (!(next.getValue() instanceof String)) {
                        zzciz.zzg("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                        break;
                    }
                    jsonWriter.beginObject();
                    jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.NAME).value(key);
                    jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.VALUE).value((String) next.getValue());
                    jsonWriter.endObject();
                } else {
                    for (String str : (List) next.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.NAME).value(key);
                        jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.VALUE).value(str);
                        jsonWriter.endObject();
                    }
                }
            }
        }
        jsonWriter.endArray();
    }

    public final void zzc(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (!zzl()) {
            return;
        }
        zzq(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
    }

    public final void zzd(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (!zzl()) {
            return;
        }
        zzq(str, "GET", map, bArr);
    }

    public final void zze(HttpURLConnection httpURLConnection, int i) {
        String str;
        if (!zzl()) {
            return;
        }
        zzr(httpURLConnection.getHeaderFields() == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
        if (i >= 200 && i < 300) {
            return;
        }
        try {
            str = httpURLConnection.getResponseMessage();
        } catch (IOException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzciz.zzj(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
            str = null;
        }
        zzp(str);
    }

    public final void zzf(Map<String, ?> map, int i) {
        if (!zzl()) {
            return;
        }
        zzr(map, i);
        if (i >= 200 && i < 300) {
            return;
        }
        zzp(null);
    }

    public final void zzg(String str) {
        if (zzl() && str != null) {
            zzh(str.getBytes());
        }
    }

    public final void zzh(final byte[] bArr) {
        zzo("onNetworkResponseBody", new zzcix() { // from class: com.google.android.gms.internal.ads.zzciw
            @Override // com.google.android.gms.internal.ads.zzcix
            public final void zza(JsonWriter jsonWriter) {
                byte[] bArr2 = bArr;
                int i = zzciy.zza;
                jsonWriter.name("params").beginObject();
                int length = bArr2.length;
                String encode = Base64Utils.encode(bArr2);
                if (length < 10000) {
                    jsonWriter.name("body").value(encode);
                } else {
                    String zze2 = zzcis.zze(encode);
                    if (zze2 != null) {
                        jsonWriter.name("bodydigest").value(zze2);
                    }
                }
                jsonWriter.name("bodylength").value(length);
                jsonWriter.endObject();
            }
        });
    }
}
