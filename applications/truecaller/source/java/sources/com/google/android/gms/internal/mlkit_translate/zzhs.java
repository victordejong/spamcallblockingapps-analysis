package com.google.android.gms.internal.mlkit_translate;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.internal.mlkit_translate.zzbj;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzhs.class */
public final class zzhs {
    private static String zza = "https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch";
    private static final Pattern zzj = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");
    private final Context zzb;
    private final String zzc;
    private final String zzd;
    private final String zze;
    private final String zzf;
    private final long zzg;
    private final long zzh;
    private final zzih zzi;

    public zzhs(Context context, String str, String str2, String str3, long j, long j2, zzih zzihVar) {
        this.zzb = context;
        this.zzc = str;
        this.zzd = str2;
        Matcher matcher = zzj.matcher(str);
        this.zze = matcher.matches() ? matcher.group(1) : null;
        this.zzf = str3;
        this.zzg = 5L;
        this.zzh = 5L;
        this.zzi = zzihVar;
    }

    private static zzhr zza(JSONObject jSONObject, Date date, zzhl zzhlVar, zzhl zzhlVar2) throws zzif {
        JSONObject jSONObject2;
        JSONArray jSONArray;
        try {
            zzht zza2 = zzhr.zzc().zza(date);
            try {
                jSONObject2 = jSONObject.getJSONObject("entries");
            } catch (JSONException e) {
                jSONObject2 = null;
            }
            if (jSONObject2 != null) {
                zza2.zza(jSONObject2);
            }
            try {
                jSONArray = jSONObject.getJSONArray("experimentDescriptions");
            } catch (JSONException e2) {
                jSONArray = null;
            }
            if (jSONArray != null) {
                zza2.zza(jSONArray);
            }
            return zza2.zza();
        } catch (JSONException e3) {
            zzbj.zzbg.zza zzaVar = zzbj.zzbg.zza.RPC_RETURNED_INVALID_RESULT;
            zzhlVar2.zza(zzaVar);
            zzhlVar.zzc(zzaVar);
            throw new zzif("Fetch failed: fetch response could not be parsed.", e3);
        }
    }

    /* JADX WARN: Finally extract failed */
    private static zzhu zza(HttpURLConnection httpURLConnection, byte[] bArr, Date date, zzhl zzhlVar, zzhl zzhlVar2) throws zzie {
        InputStream errorStream;
        String.valueOf(httpURLConnection).length();
        try {
            httpURLConnection.setFixedLengthStreamingMode(bArr.length);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            bufferedOutputStream.write(bArr);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            try {
                zzhlVar2.zza(responseCode);
                if (responseCode != 200) {
                    zzbj.zzbg.zza zzaVar = zzbj.zzbg.zza.RPC_ERROR;
                    zzhlVar2.zza(zzaVar);
                    zzhlVar.zzc(zzaVar);
                    if (Log.isLoggable("MLKitRemoteConfigFetch", 4)) {
                        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
                            for (String str : entry.getValue()) {
                                String.valueOf(entry.getKey()).length();
                                String.valueOf(str).length();
                            }
                        }
                    }
                    if (Log.isLoggable("MLKitRemoteConfigFetch", 5) && (errorStream = httpURLConnection.getErrorStream()) != null) {
                        Scanner useDelimiter = new Scanner(errorStream).useDelimiter("\\A");
                        if (useDelimiter.hasNext()) {
                            String valueOf = String.valueOf(useDelimiter.next());
                            if (valueOf.length() != 0) {
                                "HTTP Error Stream: ".concat(valueOf);
                            } else {
                                new String("HTTP Error Stream: ");
                            }
                        }
                    }
                    try {
                        throw new zzii(responseCode, httpURLConnection.getResponseMessage());
                    } catch (IOException e) {
                        throw new zzii(responseCode, "<error reading HTTP response>", e);
                    }
                }
                if (Log.isLoggable("MLKitRemoteConfigFetch", 3)) {
                    for (Map.Entry<String, List<String>> entry2 : httpURLConnection.getHeaderFields().entrySet()) {
                        for (String str2 : entry2.getValue()) {
                            String.valueOf(entry2.getKey()).length();
                            String.valueOf(str2).length();
                        }
                    }
                }
                String headerField = httpURLConnection.getHeaderField("ETag");
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), zza.zza));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        int read = bufferedReader.read();
                        if (read == -1) {
                            break;
                        }
                        sb.append((char) read);
                    }
                    JSONObject jSONObject = new JSONObject(sb.toString());
                    String valueOf2 = String.valueOf(headerField);
                    if (valueOf2.length() != 0) {
                        "Remote config: got response ETag: ".concat(valueOf2);
                    } else {
                        new String("Remote config: got response ETag: ");
                    }
                    String.valueOf(jSONObject).length();
                    httpURLConnection.disconnect();
                    return !zzb(jSONObject) ? zzhu.zza(date) : zzhu.zza(zza(jSONObject, date, zzhlVar, zzhlVar2), headerField);
                } catch (IOException e2) {
                    zzbj.zzbg.zza zzaVar2 = zzbj.zzbg.zza.RPC_ERROR;
                    zzhlVar2.zza(zzaVar2);
                    zzhlVar.zzc(zzaVar2);
                    throw new zzif("The client had an error while calling the backend!", e2);
                } catch (JSONException e3) {
                    zzbj.zzbg.zza zzaVar3 = zzbj.zzbg.zza.RPC_RETURNED_MALFORMED_RESULT;
                    zzhlVar2.zza(zzaVar3);
                    zzhlVar.zzc(zzaVar3);
                    throw new zzif("Error parsing the server output", e3);
                }
            } catch (Throwable th) {
                httpURLConnection.disconnect();
                throw th;
            }
            httpURLConnection.disconnect();
            throw th;
        } catch (IOException e4) {
            zzbj.zzbg.zza zzaVar4 = zzbj.zzbg.zza.NO_CONNECTION;
            zzhlVar2.zza(zzaVar4);
            zzhlVar.zzc(zzaVar4);
            String valueOf3 = String.valueOf(httpURLConnection);
            throw new zzif(C22128a.m8674Q1(valueOf3.length() + 20, "Error connecting to ", valueOf3), e4);
        }
    }

    private final JSONObject zza(String str, String str2, Map<String, String> map, String str3) throws zzif {
        HashMap hashMap = new HashMap();
        if (str != null) {
            hashMap.put("appInstanceId", str);
            hashMap.put("appInstanceIdToken", str2);
            hashMap.put("appId", this.zzc);
            Locale locale = this.zzb.getResources().getConfiguration().locale;
            hashMap.put("countryCode", locale.getCountry());
            hashMap.put("languageCode", locale.toString());
            hashMap.put("platformVersion", Integer.toString(Build.VERSION.SDK_INT));
            hashMap.put("timeZone", TimeZone.getDefault().getID());
            try {
                PackageInfo packageInfo = this.zzb.getPackageManager().getPackageInfo(this.zzb.getPackageName(), 0);
                if (packageInfo != null) {
                    hashMap.put("appVersion", packageInfo.versionName);
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
            hashMap.put("packageName", this.zzb.getPackageName());
            hashMap.put("sdkVersion", str3);
            hashMap.put("analyticsUserProperties", new JSONObject(map));
            return new JSONObject(hashMap);
        }
        throw new zzif("Fetch failed: Firebase instance id is null.");
    }

    private static JSONObject zza(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                jSONObject2.put(next, jSONObject.get(next));
            } catch (JSONException e) {
                throw new IllegalStateException("shallowCopyJsonObject: concurrent mutation?", e);
            }
        }
        return jSONObject2;
    }

    private final String zzb() {
        try {
            Context context = this.zzb;
            byte[] m38798a = AndroidUtilsLight.m38798a(context, context.getPackageName());
            if (m38798a != null) {
                return Hex.m38781b(m38798a, false);
            }
            String valueOf = String.valueOf(this.zzb.getPackageName());
            if (valueOf.length() != 0) {
                "Could not get fingerprint hash for package: ".concat(valueOf);
                return null;
            }
            new String("Could not get fingerprint hash for package: ");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf2 = String.valueOf(this.zzb.getPackageName());
            if (valueOf2.length() != 0) {
                "No such package: ".concat(valueOf2);
                return null;
            }
            new String("No such package: ");
            return null;
        }
    }

    private static boolean zzb(JSONObject jSONObject) {
        try {
            return !jSONObject.get("state").equals("NO_CHANGE");
        } catch (JSONException e) {
            return true;
        }
    }

    public final zzhu zza(HttpURLConnection httpURLConnection, String str, String str2, Map<String, String> map, String str3, Map<String, String> map2, Date date, String str4, zzhl zzhlVar) throws zzie {
        httpURLConnection.setDoOutput(true);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        httpURLConnection.setConnectTimeout((int) timeUnit.toMillis(this.zzg));
        httpURLConnection.setReadTimeout((int) timeUnit.toMillis(this.zzh));
        httpURLConnection.setRequestProperty("If-None-Match", null);
        httpURLConnection.setRequestProperty("X-Goog-Api-Key", this.zzd);
        httpURLConnection.setRequestProperty("X-Android-Package", this.zzb.getPackageName());
        httpURLConnection.setRequestProperty("X-Android-Cert", zzb());
        httpURLConnection.setRequestProperty("X-Google-GFE-Can-Retry", "yes");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept", "application/json");
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        if (Log.isLoggable("MLKitRemoteConfigFetch", 3)) {
            for (Map.Entry<String, List<String>> entry2 : httpURLConnection.getRequestProperties().entrySet()) {
                String key = entry2.getKey();
                if (!zzb.zza(key).contains("api-key") && !zzb.zza(key).contains("android-cert")) {
                    for (String str5 : entry2.getValue()) {
                        String.valueOf(key).length();
                        String.valueOf(str5).length();
                    }
                }
            }
        }
        JSONObject zza2 = zza(str, str2, map, str4);
        if (Log.isLoggable("MLKitRemoteConfigFetch", 3)) {
            JSONObject zza3 = zza(zza2);
            zza3.remove("appInstanceIdToken");
            String.valueOf(zza3).length();
        }
        byte[] bytes = zza2.toString().getBytes(zza.zza);
        zzhl zzhlVar2 = new zzhl();
        zzhlVar2.zza();
        try {
            return zza(httpURLConnection, bytes, date, zzhlVar, zzhlVar2);
        } finally {
            zzhlVar2.zzb();
            this.zzi.zzh(zzhlVar2);
        }
    }

    public final HttpURLConnection zza() throws zzie {
        try {
            return (HttpURLConnection) new URL(String.format(zza, this.zze, this.zzf)).openConnection();
        } catch (IOException e) {
            throw new zzie(e.getMessage());
        }
    }
}
