package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.os.Handler;
import android.util.JsonReader;
import android.util.JsonWriter;
import android.util.Log;
import android.webkit.WebSettings;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import e.m.a.i.c;
import e.m.a.i.d;
import e.m.a.i.e;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/consent_sdk/zzp.class */
public final class zzp {
    private final Application zza;
    private final zzab zzb;
    private final Handler zzc;
    private final Executor zzd;
    private final zzal zze;
    private final zzaz zzf;
    private final zzn zzg;
    private final zzz zzh;
    private final zze zzi;

    public zzp(Application application, zzab zzabVar, Handler handler, Executor executor, zzal zzalVar, zzaz zzazVar, zzn zznVar, zzz zzzVar, zze zzeVar) {
        this.zza = application;
        this.zzb = zzabVar;
        this.zzc = handler;
        this.zzd = executor;
        this.zze = zzalVar;
        this.zzf = zzazVar;
        this.zzg = zznVar;
        this.zzh = zzzVar;
        this.zzi = zzeVar;
    }

    private final zzby zza(zzbn zzbnVar) throws zzk {
        try {
            return zzb(zzbnVar);
        } catch (SocketTimeoutException e) {
            throw new zzk(4, "The server timed out.", e);
        } catch (IOException e2) {
            throw new zzk(2, "Error making request.", e2);
        }
    }

    private final zzby zzb(zzbn zzbnVar) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://fundingchoicesmessages.google.com/a/consent").openConnection();
        httpURLConnection.setRequestProperty("User-Agent", WebSettings.getDefaultUserAgent(this.zza));
        httpURLConnection.setConnectTimeout(10000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), StringConstant.UTF8);
        try {
            JsonWriter jsonWriter = new JsonWriter(outputStreamWriter);
            jsonWriter.beginObject();
            String str = zzbnVar.zza;
            if (str != null) {
                jsonWriter.name("admob_app_id");
                jsonWriter.value(str);
            }
            String str2 = zzbnVar.zzb;
            if (str2 != null) {
                jsonWriter.name("adid");
                jsonWriter.value(str2);
            }
            zzbr zzbrVar = zzbnVar.zzc;
            if (zzbrVar != null) {
                jsonWriter.name("device_info");
                jsonWriter.beginObject();
                int i = zzbrVar.zza;
                if (i != zzbu.zza) {
                    jsonWriter.name("os_type");
                    zzbu.zza(i, jsonWriter);
                }
                String str3 = zzbrVar.zzb;
                if (str3 != null) {
                    jsonWriter.name("model");
                    jsonWriter.value(str3);
                }
                Integer num = zzbrVar.zzc;
                if (num != null) {
                    jsonWriter.name("android_api_level");
                    jsonWriter.value(num);
                }
                jsonWriter.endObject();
            }
            String str4 = zzbnVar.zzd;
            if (str4 != null) {
                jsonWriter.name("publisher_privacy_policy_url");
                jsonWriter.value(str4);
            }
            String str5 = zzbnVar.zze;
            if (str5 != null) {
                jsonWriter.name("language_code");
                jsonWriter.value(str5);
            }
            String str6 = zzbnVar.zzf;
            if (str6 != null) {
                jsonWriter.name("country_code_if_unknown_region");
                jsonWriter.value(str6);
            }
            Boolean bool = zzbnVar.zzg;
            if (bool != null) {
                jsonWriter.name("opt_out_if_unknown_region");
                jsonWriter.value(bool.booleanValue());
            }
            Boolean bool2 = zzbnVar.zzh;
            if (bool2 != null) {
                jsonWriter.name("tag_for_under_age_of_consent");
                jsonWriter.value(bool2.booleanValue());
            }
            Boolean bool3 = zzbnVar.zzi;
            if (bool3 != null) {
                jsonWriter.name("is_lat");
                jsonWriter.value(bool3.booleanValue());
            }
            Map<String, String> map = zzbnVar.zzj;
            if (!map.isEmpty()) {
                jsonWriter.name("stored_infos_map");
                jsonWriter.beginObject();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jsonWriter.name(entry.getKey());
                    jsonWriter.value(entry.getValue());
                }
                jsonWriter.endObject();
            }
            zzbt zzbtVar = zzbnVar.zzk;
            if (zzbtVar != null) {
                jsonWriter.name("screen_info");
                jsonWriter.beginObject();
                Integer num2 = zzbtVar.zza;
                if (num2 != null) {
                    jsonWriter.name("width");
                    jsonWriter.value(num2);
                }
                Integer num3 = zzbtVar.zzb;
                if (num3 != null) {
                    jsonWriter.name("height");
                    jsonWriter.value(num3);
                }
                Double d = zzbtVar.zzc;
                if (d != null) {
                    jsonWriter.name(AnalyticsConstants.DENSITY);
                    jsonWriter.value(d);
                }
                List<zzbw> list = zzbtVar.zzd;
                if (!list.isEmpty()) {
                    jsonWriter.name("screen_insets");
                    jsonWriter.beginArray();
                    for (zzbw zzbwVar : list) {
                        jsonWriter.beginObject();
                        Integer num4 = zzbwVar.zza;
                        if (num4 != null) {
                            jsonWriter.name("top");
                            jsonWriter.value(num4);
                        }
                        Integer num5 = zzbwVar.zzb;
                        if (num5 != null) {
                            jsonWriter.name("left");
                            jsonWriter.value(num5);
                        }
                        Integer num6 = zzbwVar.zzc;
                        if (num6 != null) {
                            jsonWriter.name("right");
                            jsonWriter.value(num6);
                        }
                        Integer num7 = zzbwVar.zzd;
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
            zzbp zzbpVar = zzbnVar.zzl;
            if (zzbpVar != null) {
                jsonWriter.name("app_info");
                jsonWriter.beginObject();
                String str7 = zzbpVar.zza;
                if (str7 != null) {
                    jsonWriter.name("package_name");
                    jsonWriter.value(str7);
                }
                String str8 = zzbpVar.zzb;
                if (str8 != null) {
                    jsonWriter.name("publisher_display_name");
                    jsonWriter.value(str8);
                }
                String str9 = zzbpVar.zzc;
                if (str9 != null) {
                    jsonWriter.name("version");
                    jsonWriter.value(str9);
                }
                jsonWriter.endObject();
            }
            zzbv zzbvVar = zzbnVar.zzm;
            if (zzbvVar != null) {
                jsonWriter.name("sdk_info");
                jsonWriter.beginObject();
                String str10 = zzbvVar.zza;
                if (str10 != null) {
                    jsonWriter.name("version");
                    jsonWriter.value(str10);
                }
                jsonWriter.endObject();
            }
            List<zzbs> list2 = zzbnVar.zzn;
            if (!list2.isEmpty()) {
                jsonWriter.name("debug_params");
                jsonWriter.beginArray();
                for (zzbs zzbsVar : list2) {
                    zzbsVar.zza(jsonWriter);
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
                zzby zza = zzby.zza(new JsonReader(new StringReader(headerField)));
                zza.zzb = new Scanner(httpURLConnection.getInputStream()).useDelimiter("\\A").next();
                return zza;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), StringConstant.UTF8));
            try {
                bufferedReader.readLine();
                JsonReader jsonReader = new JsonReader(bufferedReader);
                zzby zza2 = zzby.zza(jsonReader);
                jsonReader.close();
                bufferedReader.close();
                return zza2;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    zzcj.zza(th, th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th4) {
                zzcj.zza(th3, th4);
            }
            throw th3;
        }
    }

    public final void zza(Activity activity, e eVar, d dVar, c cVar) {
        this.zzd.execute(new Runnable(this, activity, eVar, dVar, cVar) { // from class: com.google.android.gms.internal.consent_sdk.zzs
            private final zzp zza;
            private final Activity zzb;
            private final e zzc;
            private final d zzd;
            private final c zze;

            {
                this.zza = this;
                this.zzb = activity;
                this.zzd = dVar;
                this.zze = cVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzb(this.zzb, this.zzc, this.zzd, this.zze);
            }
        });
    }

    public final /* synthetic */ void zza(d dVar) {
        Handler handler = this.zzc;
        dVar.getClass();
        handler.post(zzu.zza(dVar));
    }

    public final void zzb(Activity activity, e eVar, d dVar, c cVar) {
        try {
            throw null;
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(Log.getStackTraceString(e));
            this.zzc.post(new Runnable(cVar, new zzk(1, valueOf.length() != 0 ? "Caught exception when trying to request consent info update: ".concat(valueOf) : new String("Caught exception when trying to request consent info update: "))) { // from class: com.google.android.gms.internal.consent_sdk.zzw
                private final c zza;
                private final zzk zzb;

                {
                    this.zza = cVar;
                    this.zzb = zzkVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.a(this.zzb.zza());
                }
            });
        }
    }
}
