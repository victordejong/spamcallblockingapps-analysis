package com.google.android.gms.internal.consent_sdk;

import android.util.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/az.class */
public final class az {

    /* renamed from: b  reason: collision with root package name */
    public String f28738b;

    /* renamed from: c  reason: collision with root package name */
    public String f28739c;

    /* renamed from: d  reason: collision with root package name */
    public String f28740d;

    /* renamed from: a  reason: collision with root package name */
    public int f28737a = av.g;
    public List<String> e = Collections.emptyList();
    public List<ay> f = Collections.emptyList();

    public static az a(JsonReader jsonReader) throws IOException {
        az azVar = new az();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c2 = 65535;
            switch (nextName.hashCode()) {
                case -2001388947:
                    if (nextName.equals("consent_signal")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1938755376:
                    if (nextName.equals("error_message")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1851537225:
                    if (nextName.equals("consent_form_base_url")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1161803523:
                    if (nextName.equals("actions")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -986806987:
                    if (nextName.equals("request_info_keys")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -790907624:
                    if (nextName.equals("consent_form_payload")) {
                        c2 = 5;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    azVar.f28737a = av.b(jsonReader);
                    break;
                case 1:
                    azVar.f28740d = jsonReader.nextString();
                    break;
                case 2:
                    azVar.f28739c = jsonReader.nextString();
                    break;
                case 3:
                    azVar.f = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        ay ayVar = new ay();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            String nextName2 = jsonReader.nextName();
                            nextName2.hashCode();
                            if (nextName2.equals("args_json")) {
                                ayVar.f28736b = jsonReader.nextString();
                            } else if (!nextName2.equals("action_type")) {
                                jsonReader.skipValue();
                            } else {
                                ayVar.f28735a = av.a(jsonReader);
                            }
                        }
                        jsonReader.endObject();
                        azVar.f.add(ayVar);
                    }
                    jsonReader.endArray();
                    break;
                case 4:
                    azVar.e = new ArrayList();
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        azVar.e.add(jsonReader.nextString());
                    }
                    jsonReader.endArray();
                    break;
                case 5:
                    azVar.f28738b = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return azVar;
    }
}
