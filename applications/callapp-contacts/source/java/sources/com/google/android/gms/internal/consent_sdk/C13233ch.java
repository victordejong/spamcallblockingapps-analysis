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
/* renamed from: com.google.android.gms.internal.consent_sdk.ch */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/ch.class */
public final class C13233ch {

    /* renamed from: a */
    final Application f50425a;

    /* renamed from: b */
    final Handler f50426b;

    /* renamed from: c */
    final Executor f50427c;

    /* renamed from: d */
    final C13253m f50428d;

    /* renamed from: e */
    final C13170aa f50429e;

    /* renamed from: f */
    final C13231cf f50430f;

    /* renamed from: g */
    final C13243cr f50431g;

    /* renamed from: h */
    final C13222bx f50432h;

    /* renamed from: i */
    private final C13225c f50433i;

    public C13233ch(Application application, C13225c c13225c, Handler handler, Executor executor, C13253m c13253m, C13170aa c13170aa, C13231cf c13231cf, C13243cr c13243cr, C13222bx c13222bx) {
        this.f50425a = application;
        this.f50433i = c13225c;
        this.f50426b = handler;
        this.f50427c = executor;
        this.f50428d = c13253m;
        this.f50429e = c13170aa;
        this.f50430f = c13231cf;
        this.f50431g = c13243cr;
        this.f50432h = c13222bx;
    }

    /* renamed from: b */
    private final C13195az m13543b(C13184ao c13184ao) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://fundingchoicesmessages.google.com/a/consent").openConnection();
        Application application = this.f50425a;
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
            String str = c13184ao.f50309a;
            if (str != null) {
                jsonWriter.name("admob_app_id");
                jsonWriter.value(str);
            }
            String str2 = c13184ao.f50310b;
            if (str2 != null) {
                jsonWriter.name("adid");
                jsonWriter.value(str2);
            }
            C13188as c13188as = c13184ao.f50311c;
            if (c13188as != null) {
                jsonWriter.name("device_info");
                jsonWriter.beginObject();
                int i = c13188as.f50335a;
                if (i != C13191av.f50342a) {
                    jsonWriter.name("os_type");
                    C13191av.m13577a(i, jsonWriter);
                }
                String str3 = c13188as.f50336b;
                if (str3 != null) {
                    jsonWriter.name("model");
                    jsonWriter.value(str3);
                }
                Integer num = c13188as.f50337c;
                if (num != null) {
                    jsonWriter.name("android_api_level");
                    jsonWriter.value(num);
                }
                jsonWriter.endObject();
            }
            String str4 = c13184ao.f50312d;
            if (str4 != null) {
                jsonWriter.name("publisher_privacy_policy_url");
                jsonWriter.value(str4);
            }
            String str5 = c13184ao.f50313e;
            if (str5 != null) {
                jsonWriter.name("language_code");
                jsonWriter.value(str5);
            }
            String str6 = c13184ao.f50314f;
            if (str6 != null) {
                jsonWriter.name("country_code_if_unknown_region");
                jsonWriter.value(str6);
            }
            Boolean bool = c13184ao.f50315g;
            if (bool != null) {
                jsonWriter.name("opt_out_if_unknown_region");
                jsonWriter.value(bool.booleanValue());
            }
            Boolean bool2 = c13184ao.f50316h;
            if (bool2 != null) {
                jsonWriter.name("tag_for_under_age_of_consent");
                jsonWriter.value(bool2.booleanValue());
            }
            Boolean bool3 = c13184ao.f50317i;
            if (bool3 != null) {
                jsonWriter.name("is_lat");
                jsonWriter.value(bool3.booleanValue());
            }
            Map<String, String> map = c13184ao.f50318j;
            if (!map.isEmpty()) {
                jsonWriter.name("stored_infos_map");
                jsonWriter.beginObject();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jsonWriter.name(entry.getKey());
                    jsonWriter.value(entry.getValue());
                }
                jsonWriter.endObject();
            }
            C13190au c13190au = c13184ao.f50319k;
            if (c13190au != null) {
                jsonWriter.name("screen_info");
                jsonWriter.beginObject();
                Integer num2 = c13190au.f50338a;
                if (num2 != null) {
                    jsonWriter.name("width");
                    jsonWriter.value(num2);
                }
                Integer num3 = c13190au.f50339b;
                if (num3 != null) {
                    jsonWriter.name("height");
                    jsonWriter.value(num3);
                }
                Double d = c13190au.f50340c;
                if (d != null) {
                    jsonWriter.name("density");
                    jsonWriter.value(d);
                }
                List<C13193ax> list = c13190au.f50341d;
                if (!list.isEmpty()) {
                    jsonWriter.name("screen_insets");
                    jsonWriter.beginArray();
                    for (C13193ax c13193ax : list) {
                        jsonWriter.beginObject();
                        Integer num4 = c13193ax.f50360a;
                        if (num4 != null) {
                            jsonWriter.name("top");
                            jsonWriter.value(num4);
                        }
                        Integer num5 = c13193ax.f50361b;
                        if (num5 != null) {
                            jsonWriter.name("left");
                            jsonWriter.value(num5);
                        }
                        Integer num6 = c13193ax.f50362c;
                        if (num6 != null) {
                            jsonWriter.name("right");
                            jsonWriter.value(num6);
                        }
                        Integer num7 = c13193ax.f50363d;
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
            C13186aq c13186aq = c13184ao.f50320l;
            if (c13186aq != null) {
                jsonWriter.name("app_info");
                jsonWriter.beginObject();
                String str7 = c13186aq.f50330a;
                if (str7 != null) {
                    jsonWriter.name("package_name");
                    jsonWriter.value(str7);
                }
                String str8 = c13186aq.f50331b;
                if (str8 != null) {
                    jsonWriter.name("publisher_display_name");
                    jsonWriter.value(str8);
                }
                String str9 = c13186aq.f50332c;
                if (str9 != null) {
                    jsonWriter.name("version");
                    jsonWriter.value(str9);
                }
                jsonWriter.endObject();
            }
            C13192aw c13192aw = c13184ao.f50321m;
            if (c13192aw != null) {
                jsonWriter.name("sdk_info");
                jsonWriter.beginObject();
                String str10 = c13192aw.f50359a;
                if (str10 != null) {
                    jsonWriter.name("version");
                    jsonWriter.value(str10);
                }
                jsonWriter.endObject();
            }
            List<EnumC13189at> list2 = c13184ao.f50322n;
            if (!list2.isEmpty()) {
                jsonWriter.name("debug_params");
                jsonWriter.beginArray();
                for (EnumC13189at enumC13189at : list2) {
                    enumC13189at.zza(jsonWriter);
                }
                jsonWriter.endArray();
            }
            jsonWriter.endObject();
            jsonWriter.close();
            outputStreamWriter.close();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 200) {
                String next = new Scanner(httpURLConnection.getErrorStream()).useDelimiter("\\A").next();
                StringBuilder sb = new StringBuilder(String.valueOf(next).length() + 31);
                sb.append("Http error code - ");
                sb.append(responseCode);
                sb.append(".\n");
                sb.append(next);
                throw new IOException(sb.toString());
            }
            String headerField = httpURLConnection.getHeaderField("x-ump-using-header");
            if (headerField != null) {
                C13195az m13572a = C13195az.m13572a(new JsonReader(new StringReader(headerField)));
                m13572a.f50367b = new Scanner(httpURLConnection.getInputStream()).useDelimiter("\\A").next();
                return m13572a;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
            try {
                bufferedReader.readLine();
                JsonReader jsonReader = new JsonReader(bufferedReader);
                C13195az m13572a2 = C13195az.m13572a(jsonReader);
                jsonReader.close();
                bufferedReader.close();
                return m13572a2;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    C13208bk.m13558a(th, th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th4) {
                C13208bk.m13558a(th3, th4);
            }
            throw th3;
        }
    }

    /* renamed from: a */
    public final C13195az m13544a(C13184ao c13184ao) throws zzk {
        try {
            return m13543b(c13184ao);
        } catch (SocketTimeoutException e) {
            throw new zzk(4, "The server timed out.", e);
        } catch (IOException e2) {
            throw new zzk(2, "Error making request.", e2);
        }
    }
}
