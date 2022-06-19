package com.google.android.gms.internal.consent_sdk;

import android.util.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.internal.consent_sdk.az */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/az.class */
public final class C13195az {

    /* renamed from: b */
    public String f50367b;

    /* renamed from: c */
    public String f50368c;

    /* renamed from: d */
    public String f50369d;

    /* renamed from: a */
    public int f50366a = C13191av.f50348g;

    /* renamed from: e */
    public List<String> f50370e = Collections.emptyList();

    /* renamed from: f */
    public List<C13194ay> f50371f = Collections.emptyList();

    /* renamed from: a */
    public static C13195az m13572a(JsonReader jsonReader) throws IOException {
        C13195az c13195az = new C13195az();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            boolean z = true;
            switch (nextName.hashCode()) {
                case -2001388947:
                    if (nextName.equals("consent_signal")) {
                        z = false;
                        break;
                    }
                    break;
                case -1938755376:
                    if (nextName.equals("error_message")) {
                        z = true;
                        break;
                    }
                    break;
                case -1851537225:
                    if (nextName.equals("consent_form_base_url")) {
                        z = true;
                        break;
                    }
                    break;
                case -1161803523:
                    if (nextName.equals("actions")) {
                        z = true;
                        break;
                    }
                    break;
                case -986806987:
                    if (nextName.equals("request_info_keys")) {
                        z = true;
                        break;
                    }
                    break;
                case -790907624:
                    if (nextName.equals("consent_form_payload")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    c13195az.f50366a = C13191av.m13574b(jsonReader);
                    break;
                case true:
                    c13195az.f50369d = jsonReader.nextString();
                    break;
                case true:
                    c13195az.f50368c = jsonReader.nextString();
                    break;
                case true:
                    c13195az.f50371f = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        C13194ay c13194ay = new C13194ay();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName2 = jsonReader.nextName();
                            nextName2.hashCode();
                            if (nextName2.equals("args_json")) {
                                c13194ay.f50365b = jsonReader.nextString();
                            } else if (!nextName2.equals("action_type")) {
                                jsonReader.skipValue();
                            } else {
                                c13194ay.f50364a = C13191av.m13576a(jsonReader);
                            }
                        }
                        jsonReader.endObject();
                        c13195az.f50371f.add(c13194ay);
                    }
                    jsonReader.endArray();
                    break;
                case true:
                    c13195az.f50370e = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        c13195az.f50370e.add(jsonReader.nextString());
                    }
                    jsonReader.endArray();
                    break;
                case true:
                    c13195az.f50367b = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return c13195az;
    }
}
