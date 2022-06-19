package com.facebook.internal;

import com.facebook.C1990i;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.g */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/g.class */
public final class C2032g {

    /* renamed from: g */
    private static C2032g f5992g;

    /* renamed from: a */
    private final Map<Integer, Set<Integer>> f5993a;

    /* renamed from: b */
    private final Map<Integer, Set<Integer>> f5994b;

    /* renamed from: c */
    private final Map<Integer, Set<Integer>> f5995c;

    /* renamed from: d */
    private final String f5996d;

    /* renamed from: e */
    private final String f5997e;

    /* renamed from: f */
    private final String f5998f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.internal.g$3 */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/g$3.class */
    public static /* synthetic */ class C20353 {

        /* renamed from: a */
        static final /* synthetic */ int[] f5999a = new int[C1990i.EnumC1992a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:14:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0033 -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f5999a[C1990i.EnumC1992a.OTHER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5999a[C1990i.EnumC1992a.LOGIN_RECOVERABLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5999a[C1990i.EnumC1992a.TRANSIENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    C2032g(Map<Integer, Set<Integer>> map, Map<Integer, Set<Integer>> map2, Map<Integer, Set<Integer>> map3, String str, String str2, String str3) {
        this.f5993a = map;
        this.f5994b = map2;
        this.f5995c = map3;
        this.f5996d = str;
        this.f5997e = str2;
        this.f5998f = str3;
    }

    /* renamed from: a */
    public static C2032g m15635a() {
        C2032g c2032g;
        synchronized (C2032g.class) {
            try {
                if (f5992g == null) {
                    f5992g = m15630b();
                }
                c2032g = f5992g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2032g;
    }

    /* renamed from: a */
    public static C2032g m15632a(JSONArray jSONArray) {
        C2032g c2032g;
        Map<Integer, Set<Integer>> map;
        Map<Integer, Set<Integer>> map2;
        Map<Integer, Set<Integer>> map3;
        String str;
        String str2;
        String str3;
        if (jSONArray == null) {
            c2032g = null;
        } else {
            int i = 0;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            Map<Integer, Set<Integer>> map4 = null;
            Map<Integer, Set<Integer>> map5 = null;
            Map<Integer, Set<Integer>> map6 = null;
            while (i < jSONArray.length()) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject == null) {
                    str3 = str4;
                    str2 = str5;
                    str = str6;
                    map3 = map4;
                    map2 = map5;
                    map = map6;
                } else {
                    String optString = optJSONObject.optString("name");
                    map = map6;
                    map2 = map5;
                    map3 = map4;
                    str = str6;
                    str2 = str5;
                    str3 = str4;
                    if (optString != null) {
                        if (optString.equalsIgnoreCase("other")) {
                            str = optJSONObject.optString("recovery_message", null);
                            map = m15631a(optJSONObject);
                            map2 = map5;
                            map3 = map4;
                            str2 = str5;
                            str3 = str4;
                        } else if (optString.equalsIgnoreCase("transient")) {
                            str2 = optJSONObject.optString("recovery_message", null);
                            map2 = m15631a(optJSONObject);
                            map = map6;
                            map3 = map4;
                            str = str6;
                            str3 = str4;
                        } else {
                            map = map6;
                            map2 = map5;
                            map3 = map4;
                            str = str6;
                            str2 = str5;
                            str3 = str4;
                            if (optString.equalsIgnoreCase("login_recoverable")) {
                                str3 = optJSONObject.optString("recovery_message", null);
                                map3 = m15631a(optJSONObject);
                                map = map6;
                                map2 = map5;
                                str = str6;
                                str2 = str5;
                            }
                        }
                    }
                }
                i++;
                map6 = map;
                map5 = map2;
                map4 = map3;
                str6 = str;
                str5 = str2;
                str4 = str3;
            }
            c2032g = new C2032g(map6, map5, map4, str6, str5, str4);
        }
        return c2032g;
    }

    /* renamed from: a */
    private static Map<Integer, Set<Integer>> m15631a(JSONObject jSONObject) {
        HashMap hashMap;
        int optInt;
        HashSet hashSet;
        JSONArray optJSONArray = jSONObject.optJSONArray("items");
        if (optJSONArray.length() == 0) {
            hashMap = null;
        } else {
            HashMap hashMap2 = new HashMap();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null && (optInt = optJSONObject.optInt("code")) != 0) {
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray("subcodes");
                    if (optJSONArray2 == null || optJSONArray2.length() <= 0) {
                        hashSet = null;
                    } else {
                        hashSet = new HashSet();
                        for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                            int optInt2 = optJSONArray2.optInt(i2);
                            if (optInt2 != 0) {
                                hashSet.add(Integer.valueOf(optInt2));
                            }
                        }
                    }
                    hashMap2.put(Integer.valueOf(optInt), hashSet);
                }
            }
            hashMap = hashMap2;
        }
        return hashMap;
    }

    /* renamed from: b */
    private static C2032g m15630b() {
        return new C2032g(null, new HashMap<Integer, Set<Integer>>() { // from class: com.facebook.internal.g.1
            {
                put(2, null);
                put(4, null);
                put(9, null);
                put(17, null);
                put(341, null);
            }
        }, new HashMap<Integer, Set<Integer>>() { // from class: com.facebook.internal.g.2
            {
                put(102, null);
                put(190, null);
                put(412, null);
            }
        }, null, null, null);
    }

    /* renamed from: a */
    public C1990i.EnumC1992a m15634a(int i, int i2, boolean z) {
        Set<Integer> set;
        Set<Integer> set2;
        Set<Integer> set3;
        return z ? C1990i.EnumC1992a.TRANSIENT : (this.f5993a == null || !this.f5993a.containsKey(Integer.valueOf(i)) || ((set3 = this.f5993a.get(Integer.valueOf(i))) != null && !set3.contains(Integer.valueOf(i2)))) ? (this.f5995c == null || !this.f5995c.containsKey(Integer.valueOf(i)) || ((set2 = this.f5995c.get(Integer.valueOf(i))) != null && !set2.contains(Integer.valueOf(i2)))) ? (this.f5994b == null || !this.f5994b.containsKey(Integer.valueOf(i)) || ((set = this.f5994b.get(Integer.valueOf(i))) != null && !set.contains(Integer.valueOf(i2)))) ? C1990i.EnumC1992a.OTHER : C1990i.EnumC1992a.TRANSIENT : C1990i.EnumC1992a.LOGIN_RECOVERABLE : C1990i.EnumC1992a.OTHER;
    }

    /* renamed from: a */
    public String m15633a(C1990i.EnumC1992a enumC1992a) {
        String str;
        switch (C20353.f5999a[enumC1992a.ordinal()]) {
            case 1:
                str = this.f5996d;
                break;
            case 2:
                str = this.f5998f;
                break;
            case 3:
                str = this.f5997e;
                break;
            default:
                str = null;
                break;
        }
        return str;
    }
}
