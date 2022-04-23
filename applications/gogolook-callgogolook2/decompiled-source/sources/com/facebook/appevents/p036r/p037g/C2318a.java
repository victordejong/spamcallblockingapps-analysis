package com.facebook.appevents.p036r.p037g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.r.g.a */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/g/a.class */
public class C2318a {

    /* renamed from: a */
    public final String f2790a;

    /* renamed from: b */
    public final List<C2322c> f2791b;

    /* renamed from: c */
    public final List<C2321b> f2792c;

    /* renamed from: d */
    public final String f2793d;

    /* renamed from: com.facebook.appevents.r.g.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/g/a$a.class */
    public enum EnumC2319a {
        CLICK,
        SELECTED,
        TEXT_CHANGED
    }

    /* renamed from: com.facebook.appevents.r.g.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/appevents/r/g/a$b.class */
    public enum EnumC2320b {
        MANUAL,
        INFERENCE
    }

    public C2318a(String str, EnumC2320b bVar, EnumC2319a aVar, String str2, List<C2322c> list, List<C2321b> list2, String str3, String str4, String str5) {
        this.f2790a = str;
        this.f2791b = list;
        this.f2792c = list2;
        this.f2793d = str5;
    }

    /* renamed from: a */
    public static C2318a m35185a(JSONObject jSONObject) throws JSONException, IllegalArgumentException {
        String string = jSONObject.getString("event_name");
        EnumC2320b valueOf = EnumC2320b.valueOf(jSONObject.getString("method").toUpperCase(Locale.ENGLISH));
        EnumC2319a valueOf2 = EnumC2319a.valueOf(jSONObject.getString("event_type").toUpperCase(Locale.ENGLISH));
        String string2 = jSONObject.getString("app_version");
        JSONArray jSONArray = jSONObject.getJSONArray("path");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new C2322c(jSONArray.getJSONObject(i)));
        }
        String optString = jSONObject.optString("path_type", "absolute");
        JSONArray optJSONArray = jSONObject.optJSONArray("parameters");
        ArrayList arrayList2 = new ArrayList();
        if (optJSONArray != null) {
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                arrayList2.add(new C2321b(optJSONArray.getJSONObject(i2)));
            }
        }
        return new C2318a(string, valueOf, valueOf2, string2, arrayList, arrayList2, jSONObject.optString("component_id"), optString, jSONObject.optString("activity_name"));
    }

    /* renamed from: a */
    public static List<C2318a> m35186a(JSONArray jSONArray) {
        int i;
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            try {
                i = jSONArray.length();
            } catch (IllegalArgumentException | JSONException e) {
            }
        } else {
            i = 0;
        }
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(m35185a(jSONArray.getJSONObject(i2)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public String m35187a() {
        return this.f2793d;
    }

    /* renamed from: b */
    public String m35184b() {
        return this.f2790a;
    }

    /* renamed from: c */
    public List<C2321b> m35183c() {
        return Collections.unmodifiableList(this.f2792c);
    }

    /* renamed from: d */
    public List<C2322c> m35182d() {
        return Collections.unmodifiableList(this.f2791b);
    }
}
