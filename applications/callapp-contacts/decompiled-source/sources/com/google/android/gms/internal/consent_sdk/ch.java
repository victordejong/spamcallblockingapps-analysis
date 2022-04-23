package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.util.JsonReader;
import android.util.JsonWriter;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ch.class */
public final class ch {

    /* renamed from: a  reason: collision with root package name */
    final Application f28794a;

    /* renamed from: b  reason: collision with root package name */
    final Handler f28795b;

    /* renamed from: c  reason: collision with root package name */
    final Executor f28796c;

    /* renamed from: d  reason: collision with root package name */
    final m f28797d;
    final aa e;
    final cf f;
    final cr g;
    final bx h;
    private final c i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ch(Application application, c cVar, Handler handler, Executor executor, m mVar, aa aaVar, cf cfVar, cr crVar, bx bxVar) {
        this.f28794a = application;
        this.i = cVar;
        this.f28795b = handler;
        this.f28796c = executor;
        this.f28797d = mVar;
        this.e = aaVar;
        this.f = cfVar;
        this.g = crVar;
        this.h = bxVar;
    }

    private final az b(ao aoVar) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://fundingchoicesmessages.google.com/a/consent").openConnection();
        Application application = this.f28794a;
        httpURLConnection.setRequestProperty("User-Agent", Build.VERSION.SDK_INT >= 17 ? WebSettings.getDefaultUserAgent(application) : new WebView(application).getSettings().getUserAgentString());
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF-8");
        try {
            JsonWriter jsonWriter = new JsonWriter(outputStreamWriter);
            jsonWriter.beginObject();
            String str = aoVar.f28706a;
            if (str != null) {
                jsonWriter.name("admob_app_id");
                jsonWriter.value(str);
            }
            String str2 = aoVar.f28707b;
            if (str2 != null) {
                jsonWriter.name("adid");
                jsonWriter.value(str2);
            }
            as asVar = aoVar.f28708c;
            if (asVar != null) {
                jsonWriter.name("device_info");
                jsonWriter.beginObject();
                int i = asVar.f28719a;
                if (i != av.f28726a) {
                    jsonWriter.name("os_type");
                    av.a(i, jsonWriter);
                }
                String str3 = asVar.f28720b;
                if (str3 != null) {
                    jsonWriter.name("model");
                    jsonWriter.value(str3);
                }
                Integer num = asVar.f28721c;
                if (num != null) {
                    jsonWriter.name("android_api_level");
                    jsonWriter.value(num);
                }
                jsonWriter.endObject();
            }
            String str4 = aoVar.f28709d;
            if (str4 != null) {
                jsonWriter.name("publisher_privacy_policy_url");
                jsonWriter.value(str4);
            }
            String str5 = aoVar.e;
            if (str5 != null) {
                jsonWriter.name("language_code");
                jsonWriter.value(str5);
            }
            String str6 = aoVar.f;
            if (str6 != null) {
                jsonWriter.name("country_code_if_unknown_region");
                jsonWriter.value(str6);
            }
            Boolean bool = aoVar.g;
            if (bool != null) {
                jsonWriter.name("opt_out_if_unknown_region");
                jsonWriter.value(bool.booleanValue());
            }
            Boolean bool2 = aoVar.h;
            if (bool2 != null) {
                jsonWriter.name("tag_for_under_age_of_consent");
                jsonWriter.value(bool2.booleanValue());
            }
            Boolean bool3 = aoVar.i;
            if (bool3 != null) {
                jsonWriter.name("is_lat");
                jsonWriter.value(bool3.booleanValue());
            }
            Map<String, String> map = aoVar.j;
            if (!map.isEmpty()) {
                jsonWriter.name("stored_infos_map");
                jsonWriter.beginObject();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jsonWriter.name(entry.getKey());
                    jsonWriter.value(entry.getValue());
                }
                jsonWriter.endObject();
            }
            au auVar = aoVar.k;
            if (auVar != null) {
                jsonWriter.name("screen_info");
                jsonWriter.beginObject();
                Integer num2 = auVar.f28722a;
                if (num2 != null) {
                    jsonWriter.name("width");
                    jsonWriter.value(num2);
                }
                Integer num3 = auVar.f28723b;
                if (num3 != null) {
                    jsonWriter.name("height");
                    jsonWriter.value(num3);
                }
                Double d2 = auVar.f28724c;
                if (d2 != null) {
                    jsonWriter.name("density");
                    jsonWriter.value(d2);
                }
                List<ax> list = auVar.f28725d;
                if (!list.isEmpty()) {
                    jsonWriter.name("screen_insets");
                    jsonWriter.beginArray();
                    for (ax axVar : list) {
                        jsonWriter.beginObject();
                        Integer num4 = axVar.f28731a;
                        if (num4 != null) {
                            jsonWriter.name("top");
                            jsonWriter.value(num4);
                        }
                        Integer num5 = axVar.f28732b;
                        if (num5 != null) {
                            jsonWriter.name("left");
                            jsonWriter.value(num5);
                        }
                        Integer num6 = axVar.f28733c;
                        if (num6 != null) {
                            jsonWriter.name("right");
                            jsonWriter.value(num6);
                        }
                        Integer num7 = axVar.f28734d;
                        if (num7 != null) {
                            jsonWriter.name("bottom");
                            jsonWriter.value(num7);
                        }
                        jsonWriter.endObject();
                    }
                    jsonWriter.endArray();
                }
                jsonWriter.endObject();
            }
            aq aqVar = aoVar.l;
            if (aqVar != null) {
                jsonWriter.name("app_info");
                jsonWriter.beginObject();
                String str7 = aqVar.f28714a;
                if (str7 != null) {
                    jsonWriter.name("package_name");
                    jsonWriter.value(str7);
                }
                String str8 = aqVar.f28715b;
                if (str8 != null) {
                    jsonWriter.name("publisher_display_name");
                    jsonWriter.value(str8);
                }
                String str9 = aqVar.f28716c;
                if (str9 != null) {
                    jsonWriter.name("version");
                    jsonWriter.value(str9);
                }
                jsonWriter.endObject();
            }
            aw awVar = aoVar.m;
            if (awVar != null) {
                jsonWriter.name("sdk_info");
                jsonWriter.beginObject();
                String str10 = awVar.f28730a;
                if (str10 != null) {
                    jsonWriter.name("version");
                    jsonWriter.value(str10);
                }
                jsonWriter.endObject();
            }
            List<at> list2 = aoVar.n;
            if (!list2.isEmpty()) {
                jsonWriter.name("debug_params");
                jsonWriter.beginArray();
                for (at atVar : list2) {
                    atVar.zza(jsonWriter);
                }
                jsonWriter.endArray();
            }
            jsonWriter.endObject();
            jsonWriter.close();
            outputStreamWriter.close();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                String headerField = httpURLConnection.getHeaderField("x-ump-using-header");
                if (headerField != null) {
                    az a2 = az.a(new JsonReader(new StringReader(headerField)));
                    a2.f28738b = new Scanner(httpURLConnection.getInputStream()).useDelimiter("\\A").next();
                    return a2;
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
                try {
                    bufferedReader.readLine();
                    JsonReader jsonReader = new JsonReader(bufferedReader);
                    az a3 = az.a(jsonReader);
                    jsonReader.close();
                    bufferedReader.close();
                    return a3;
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        bk.a(th, th2);
                    }
                    throw th;
                }
            } else {
                String next = new Scanner(httpURLConnection.getErrorStream()).useDelimiter("\\A").next();
                StringBuilder sb = new StringBuilder(String.valueOf(next).length() + 31);
                sb.append("Http error code - ");
                sb.append(responseCode);
                sb.append(".\n");
                sb.append(next);
                throw new IOException(sb.toString());
            }
        } catch (Throwable th3) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th4) {
                bk.a(th3, th4);
            }
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final az a(ao aoVar) throws zzk {
        try {
            return b(aoVar);
        } catch (SocketTimeoutException e) {
            throw new zzk(4, "The server timed out.", e);
        } catch (IOException e2) {
            throw new zzk(2, "Error making request.", e2);
        }
    }
}
