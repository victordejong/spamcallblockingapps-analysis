package com.facebook.internal;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.EnumSet;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.o */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/o.class */
public final class C2464o {

    /* renamed from: a */
    public boolean f3118a;

    /* renamed from: b */
    public String f3119b;

    /* renamed from: c */
    public boolean f3120c;

    /* renamed from: d */
    public int f3121d;

    /* renamed from: e */
    public EnumSet<EnumC2403e0> f3122e;

    /* renamed from: f */
    public Map<String, Map<String, C2465a>> f3123f;

    /* renamed from: g */
    public boolean f3124g;

    /* renamed from: h */
    public C2430j f3125h;

    /* renamed from: i */
    public boolean f3126i;

    /* renamed from: j */
    public boolean f3127j;

    /* renamed from: k */
    public String f3128k;

    /* renamed from: l */
    public JSONArray f3129l;
    @Nullable

    /* renamed from: m */
    public String f3130m;
    @Nullable

    /* renamed from: n */
    public String f3131n;

    /* renamed from: com.facebook.internal.o$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/o$a.class */
    public static class C2465a {

        /* renamed from: a */
        public String f3132a;

        /* renamed from: b */
        public String f3133b;

        /* renamed from: c */
        public Uri f3134c;

        /* renamed from: d */
        public int[] f3135d;

        public C2465a(String str, String str2, Uri uri, int[] iArr) {
            this.f3132a = str;
            this.f3133b = str2;
            this.f3134c = uri;
            this.f3135d = iArr;
        }

        /* renamed from: a */
        public static C2465a m34650a(JSONObject jSONObject) {
            String optString = jSONObject.optString("name");
            Uri uri = null;
            if (C2408g0.m34816d(optString)) {
                return null;
            }
            String[] split = optString.split("\\|");
            if (split.length != 2) {
                return null;
            }
            String str = split[0];
            String str2 = split[1];
            if (C2408g0.m34816d(str) || C2408g0.m34816d(str2)) {
                return null;
            }
            String optString2 = jSONObject.optString("url");
            if (!C2408g0.m34816d(optString2)) {
                uri = Uri.parse(optString2);
            }
            return new C2465a(str, str2, uri, m34651a(jSONObject.optJSONArray("versions")));
        }

        /* renamed from: a */
        public static int[] m34651a(JSONArray jSONArray) {
            int[] iArr;
            if (jSONArray != null) {
                int length = jSONArray.length();
                int[] iArr2 = new int[length];
                int i = 0;
                while (true) {
                    iArr = iArr2;
                    if (i >= length) {
                        break;
                    }
                    int i2 = -1;
                    int optInt = jSONArray.optInt(i, -1);
                    if (optInt == -1) {
                        String optString = jSONArray.optString(i);
                        if (!C2408g0.m34816d(optString)) {
                            try {
                                i2 = Integer.parseInt(optString);
                            } catch (NumberFormatException e) {
                                C2408g0.m34853a("FacebookSDK", (Exception) e);
                            }
                            iArr2[i] = i2;
                            i++;
                        }
                    }
                    i2 = optInt;
                    iArr2[i] = i2;
                    i++;
                }
            } else {
                iArr = null;
            }
            return iArr;
        }

        /* renamed from: a */
        public String m34652a() {
            return this.f3132a;
        }

        /* renamed from: b */
        public Uri m34649b() {
            return this.f3134c;
        }

        /* renamed from: c */
        public String m34648c() {
            return this.f3133b;
        }

        /* renamed from: d */
        public int[] m34647d() {
            return this.f3135d;
        }
    }

    public C2464o(boolean z, String str, boolean z2, int i, EnumSet<EnumC2403e0> enumSet, Map<String, Map<String, C2465a>> map, boolean z3, C2430j jVar, String str2, String str3, boolean z4, boolean z5, JSONArray jSONArray, String str4, boolean z6, @Nullable String str5, @Nullable String str6) {
        this.f3118a = z;
        this.f3119b = str;
        this.f3120c = z2;
        this.f3123f = map;
        this.f3125h = jVar;
        this.f3121d = i;
        this.f3124g = z3;
        this.f3122e = enumSet;
        this.f3126i = z4;
        this.f3127j = z5;
        this.f3129l = jSONArray;
        this.f3128k = str4;
        this.f3130m = str5;
        this.f3131n = str6;
    }

    /* renamed from: a */
    public static C2465a m34666a(String str, String str2, String str3) {
        C2464o c;
        Map<String, C2465a> map;
        if (C2408g0.m34816d(str2) || C2408g0.m34816d(str3) || (c = C2466p.m34636c(str)) == null || (map = c.m34664c().get(str2)) == null) {
            return null;
        }
        return map.get(str3);
    }

    /* renamed from: a */
    public boolean m34667a() {
        return this.f3124g;
    }

    /* renamed from: b */
    public boolean m34665b() {
        return this.f3127j;
    }

    /* renamed from: c */
    public Map<String, Map<String, C2465a>> m34664c() {
        return this.f3123f;
    }

    /* renamed from: d */
    public C2430j m34663d() {
        return this.f3125h;
    }

    /* renamed from: e */
    public JSONArray m34662e() {
        return this.f3129l;
    }

    /* renamed from: f */
    public boolean m34661f() {
        return this.f3126i;
    }

    /* renamed from: g */
    public String m34660g() {
        return this.f3119b;
    }

    /* renamed from: h */
    public boolean m34659h() {
        return this.f3120c;
    }

    @Nullable
    /* renamed from: i */
    public String m34658i() {
        return this.f3130m;
    }

    /* renamed from: j */
    public String m34657j() {
        return this.f3128k;
    }

    /* renamed from: k */
    public int m34656k() {
        return this.f3121d;
    }

    /* renamed from: l */
    public EnumSet<EnumC2403e0> m34655l() {
        return this.f3122e;
    }

    @Nullable
    /* renamed from: m */
    public String m34654m() {
        return this.f3131n;
    }

    /* renamed from: n */
    public boolean m34653n() {
        return this.f3118a;
    }
}
