package com.facebook.p094a.p096b.p097a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.b.a.a */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/a/a.class */
public class C1821a {

    /* renamed from: a */
    private final String f5534a;

    /* renamed from: b */
    private final EnumC1823b f5535b;

    /* renamed from: c */
    private final EnumC1822a f5536c;

    /* renamed from: d */
    private final String f5537d;

    /* renamed from: e */
    private final List<C1825c> f5538e;

    /* renamed from: f */
    private final List<C1824b> f5539f;

    /* renamed from: g */
    private final String f5540g;

    /* renamed from: h */
    private final String f5541h;

    /* renamed from: i */
    private final String f5542i;

    /* renamed from: com.facebook.a.b.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/b/a/a$a.class */
    public enum EnumC1822a {
        CLICK,
        SELECTED,
        TEXT_CHANGED
    }

    /* renamed from: com.facebook.a.b.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/a/b/a/a$b.class */
    public enum EnumC1823b {
        MANUAL,
        INFERENCE
    }

    public C1821a(String str, EnumC1823b enumC1823b, EnumC1822a enumC1822a, String str2, List<C1825c> list, List<C1824b> list2, String str3, String str4, String str5) {
        this.f5534a = str;
        this.f5535b = enumC1823b;
        this.f5536c = enumC1822a;
        this.f5537d = str2;
        this.f5538e = list;
        this.f5539f = list2;
        this.f5540g = str3;
        this.f5541h = str4;
        this.f5542i = str5;
    }

    /* renamed from: a */
    public static C1821a m16195a(JSONObject jSONObject) {
        String string = jSONObject.getString("event_name");
        EnumC1823b valueOf = EnumC1823b.valueOf(jSONObject.getString("method").toUpperCase(Locale.ENGLISH));
        EnumC1822a valueOf2 = EnumC1822a.valueOf(jSONObject.getString("event_type").toUpperCase(Locale.ENGLISH));
        String string2 = jSONObject.getString("app_version");
        JSONArray jSONArray = jSONObject.getJSONArray("path");
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new C1825c(jSONArray.getJSONObject(i)));
        }
        String optString = jSONObject.optString("path_type", "absolute");
        JSONArray optJSONArray = jSONObject.optJSONArray("parameters");
        ArrayList arrayList2 = new ArrayList();
        if (optJSONArray != null) {
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                arrayList2.add(new C1824b(optJSONArray.getJSONObject(i2)));
            }
        }
        return new C1821a(string, valueOf, valueOf2, string2, arrayList, arrayList2, jSONObject.optString("component_id"), optString, jSONObject.optString("activity_name"));
    }

    /* renamed from: a */
    public static List<C1821a> m16196a(JSONArray jSONArray) {
        int i;
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            try {
                i = jSONArray.length();
            } catch (IllegalArgumentException e) {
            } catch (JSONException e2) {
            }
        } else {
            i = 0;
        }
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(m16195a(jSONArray.getJSONObject(i2)));
        }
        return arrayList;
    }

    /* renamed from: a */
    public List<C1825c> m16198a() {
        return Collections.unmodifiableList(this.f5538e);
    }

    /* renamed from: b */
    public List<C1824b> m16194b() {
        return Collections.unmodifiableList(this.f5539f);
    }

    /* renamed from: c */
    public String m16193c() {
        return this.f5534a;
    }

    /* renamed from: d */
    public String m16192d() {
        return this.f5542i;
    }
}
