package com.facebook.internal;

import android.net.Uri;
import java.util.EnumSet;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.l */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/l.class */
public final class C2048l {

    /* renamed from: a */
    private boolean f6034a;

    /* renamed from: b */
    private String f6035b;

    /* renamed from: c */
    private boolean f6036c;

    /* renamed from: d */
    private int f6037d;

    /* renamed from: e */
    private EnumSet<EnumC2078w> f6038e;

    /* renamed from: f */
    private Map<String, Map<String, C2049a>> f6039f;

    /* renamed from: g */
    private boolean f6040g;

    /* renamed from: h */
    private C2032g f6041h;

    /* renamed from: i */
    private String f6042i;

    /* renamed from: j */
    private String f6043j;

    /* renamed from: k */
    private boolean f6044k;

    /* renamed from: l */
    private boolean f6045l;

    /* renamed from: m */
    private String f6046m;

    /* renamed from: n */
    private JSONArray f6047n;

    /* renamed from: o */
    private boolean f6048o;

    /* renamed from: p */
    private String f6049p;

    /* renamed from: q */
    private String f6050q;

    /* renamed from: r */
    private String f6051r;

    /* renamed from: com.facebook.internal.l$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/l$a.class */
    public static class C2049a {

        /* renamed from: a */
        private String f6052a;

        /* renamed from: b */
        private String f6053b;

        /* renamed from: c */
        private Uri f6054c;

        /* renamed from: d */
        private int[] f6055d;

        private C2049a(String str, String str2, Uri uri, int[] iArr) {
            this.f6052a = str;
            this.f6053b = str2;
            this.f6054c = uri;
            this.f6055d = iArr;
        }

        /* renamed from: a */
        public static C2049a m15589a(JSONObject jSONObject) {
            C2049a c2049a;
            String optString = jSONObject.optString("name");
            if (C2079x.m15472a(optString)) {
                c2049a = null;
            } else {
                String[] split = optString.split("\\|");
                c2049a = null;
                if (split.length == 2) {
                    String str = split[0];
                    String str2 = split[1];
                    c2049a = null;
                    if (!C2079x.m15472a(str)) {
                        c2049a = null;
                        if (!C2079x.m15472a(str2)) {
                            String optString2 = jSONObject.optString("url");
                            Uri uri = null;
                            if (!C2079x.m15472a(optString2)) {
                                uri = Uri.parse(optString2);
                            }
                            c2049a = new C2049a(str, str2, uri, m15590a(jSONObject.optJSONArray("versions")));
                        }
                    }
                }
            }
            return c2049a;
        }

        /* renamed from: a */
        private static int[] m15590a(JSONArray jSONArray) {
            int[] iArr = null;
            if (jSONArray != null) {
                int length = jSONArray.length();
                iArr = new int[length];
                for (int i = 0; i < length; i++) {
                    int optInt = jSONArray.optInt(i, -1);
                    int i2 = optInt;
                    if (optInt == -1) {
                        String optString = jSONArray.optString(i);
                        i2 = optInt;
                        if (!C2079x.m15472a(optString)) {
                            try {
                                i2 = Integer.parseInt(optString);
                            } catch (NumberFormatException e) {
                                C2079x.m15470a("FacebookSDK", (Exception) e);
                                i2 = -1;
                            }
                        }
                    }
                    iArr[i] = i2;
                }
            }
            return iArr;
        }

        /* renamed from: a */
        public String m15591a() {
            return this.f6052a;
        }

        /* renamed from: b */
        public String m15588b() {
            return this.f6053b;
        }
    }

    public C2048l(boolean z, String str, boolean z2, int i, EnumSet<EnumC2078w> enumSet, Map<String, Map<String, C2049a>> map, boolean z3, C2032g c2032g, String str2, String str3, boolean z4, boolean z5, JSONArray jSONArray, String str4, boolean z6, String str5, String str6, String str7) {
        this.f6034a = z;
        this.f6035b = str;
        this.f6036c = z2;
        this.f6039f = map;
        this.f6041h = c2032g;
        this.f6037d = i;
        this.f6040g = z3;
        this.f6038e = enumSet;
        this.f6042i = str2;
        this.f6043j = str3;
        this.f6044k = z4;
        this.f6045l = z5;
        this.f6047n = jSONArray;
        this.f6046m = str4;
        this.f6048o = z6;
        this.f6049p = str5;
        this.f6050q = str6;
        this.f6051r = str7;
    }

    /* renamed from: a */
    public boolean m15605a() {
        return this.f6034a;
    }

    /* renamed from: b */
    public String m15604b() {
        return this.f6035b;
    }

    /* renamed from: c */
    public boolean m15603c() {
        return this.f6036c;
    }

    /* renamed from: d */
    public int m15602d() {
        return this.f6037d;
    }

    /* renamed from: e */
    public boolean m15601e() {
        return this.f6040g;
    }

    /* renamed from: f */
    public EnumSet<EnumC2078w> m15600f() {
        return this.f6038e;
    }

    /* renamed from: g */
    public C2032g m15599g() {
        return this.f6041h;
    }

    /* renamed from: h */
    public boolean m15598h() {
        return this.f6044k;
    }

    /* renamed from: i */
    public boolean m15597i() {
        return this.f6045l;
    }

    /* renamed from: j */
    public JSONArray m15596j() {
        return this.f6047n;
    }

    /* renamed from: k */
    public String m15595k() {
        return this.f6046m;
    }

    /* renamed from: l */
    public String m15594l() {
        return this.f6049p;
    }

    /* renamed from: m */
    public String m15593m() {
        return this.f6050q;
    }

    /* renamed from: n */
    public String m15592n() {
        return this.f6051r;
    }
}
