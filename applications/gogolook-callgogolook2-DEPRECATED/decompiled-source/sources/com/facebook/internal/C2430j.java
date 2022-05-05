package com.facebook.internal;

import com.facebook.FacebookRequestError;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.internal.j */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/j.class */
public final class C2430j {

    /* renamed from: g */
    public static C2430j f3052g;

    /* renamed from: a */
    public final Map<Integer, Set<Integer>> f3053a;

    /* renamed from: b */
    public final Map<Integer, Set<Integer>> f3054b;

    /* renamed from: c */
    public final Map<Integer, Set<Integer>> f3055c;

    /* renamed from: d */
    public final String f3056d;

    /* renamed from: e */
    public final String f3057e;

    /* renamed from: f */
    public final String f3058f;

    /* renamed from: com.facebook.internal.j$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/j$a.class */
    public static final class C2431a extends HashMap<Integer, Set<Integer>> {
        public C2431a() {
            put(2, null);
            put(4, null);
            put(9, null);
            put(17, null);
            put(341, null);
        }
    }

    /* renamed from: com.facebook.internal.j$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/j$b.class */
    public static final class C2432b extends HashMap<Integer, Set<Integer>> {
        public C2432b() {
            put(102, null);
            put(190, null);
            put(412, null);
        }
    }

    /* renamed from: com.facebook.internal.j$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/j$c.class */
    public static /* synthetic */ class C2433c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3059a = new int[FacebookRequestError.EnumC2222b.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f3059a[FacebookRequestError.EnumC2222b.OTHER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3059a[FacebookRequestError.EnumC2222b.LOGIN_RECOVERABLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3059a[FacebookRequestError.EnumC2222b.TRANSIENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public C2430j(Map<Integer, Set<Integer>> map, Map<Integer, Set<Integer>> map2, Map<Integer, Set<Integer>> map3, String str, String str2, String str3) {
        this.f3053a = map;
        this.f3054b = map2;
        this.f3055c = map3;
        this.f3056d = str;
        this.f3057e = str2;
        this.f3058f = str3;
    }

    /* renamed from: a */
    public static C2430j m34741a() {
        C2430j jVar;
        synchronized (C2430j.class) {
            try {
                if (f3052g == null) {
                    f3052g = m34736b();
                }
                jVar = f3052g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return jVar;
    }

    /* renamed from: a */
    public static C2430j m34738a(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        Map<Integer, Set<Integer>> map = null;
        Map<Integer, Set<Integer>> map2 = null;
        Map<Integer, Set<Integer>> map3 = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject == null) {
                map = map;
                map2 = map2;
                str = str;
                str2 = str2;
            } else {
                String optString = optJSONObject.optString("name");
                if (optString == null) {
                    map = map;
                    map2 = map2;
                    str = str;
                    str2 = str2;
                } else if (optString.equalsIgnoreCase("other")) {
                    str = optJSONObject.optString("recovery_message", null);
                    map = m34737a(optJSONObject);
                    map2 = map2;
                    str2 = str2;
                } else if (optString.equalsIgnoreCase("transient")) {
                    str2 = optJSONObject.optString("recovery_message", null);
                    map2 = m34737a(optJSONObject);
                    map = map;
                    str = str;
                } else {
                    map = map;
                    map2 = map2;
                    str = str;
                    str2 = str2;
                    if (optString.equalsIgnoreCase("login_recoverable")) {
                        str3 = optJSONObject.optString("recovery_message", null);
                        map3 = m34737a(optJSONObject);
                        str2 = str2;
                        str = str;
                        map2 = map2;
                        map = map;
                    }
                }
            }
        }
        return new C2430j(map, map2, map3, str, str2, str3);
    }

    /* renamed from: a */
    public static Map<Integer, Set<Integer>> m34737a(JSONObject jSONObject) {
        int optInt;
        HashSet hashSet;
        JSONArray optJSONArray = jSONObject.optJSONArray("items");
        if (optJSONArray.length() == 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (!(optJSONObject == null || (optInt = optJSONObject.optInt("code")) == 0)) {
                JSONArray optJSONArray2 = optJSONObject.optJSONArray("subcodes");
                if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                    HashSet hashSet2 = new HashSet();
                    int i2 = 0;
                    while (true) {
                        hashSet = hashSet2;
                        if (i2 >= optJSONArray2.length()) {
                            break;
                        }
                        int optInt2 = optJSONArray2.optInt(i2);
                        if (optInt2 != 0) {
                            hashSet2.add(Integer.valueOf(optInt2));
                        }
                        i2++;
                    }
                } else {
                    hashSet = null;
                }
                hashMap.put(Integer.valueOf(optInt), hashSet);
            }
        }
        return hashMap;
    }

    /* renamed from: b */
    public static C2430j m34736b() {
        return new C2430j(null, new C2431a(), new C2432b(), null, null, null);
    }

    /* renamed from: a */
    public FacebookRequestError.EnumC2222b m34740a(int i, int i2, boolean z) {
        Set<Integer> set;
        Set<Integer> set2;
        Set<Integer> set3;
        if (z) {
            return FacebookRequestError.EnumC2222b.TRANSIENT;
        }
        Map<Integer, Set<Integer>> map = this.f3053a;
        if (map != null && map.containsKey(Integer.valueOf(i)) && ((set3 = this.f3053a.get(Integer.valueOf(i))) == null || set3.contains(Integer.valueOf(i2)))) {
            return FacebookRequestError.EnumC2222b.OTHER;
        }
        Map<Integer, Set<Integer>> map2 = this.f3055c;
        if (map2 != null && map2.containsKey(Integer.valueOf(i)) && ((set2 = this.f3055c.get(Integer.valueOf(i))) == null || set2.contains(Integer.valueOf(i2)))) {
            return FacebookRequestError.EnumC2222b.LOGIN_RECOVERABLE;
        }
        Map<Integer, Set<Integer>> map3 = this.f3054b;
        return (map3 == null || !map3.containsKey(Integer.valueOf(i)) || ((set = this.f3054b.get(Integer.valueOf(i))) != null && !set.contains(Integer.valueOf(i2)))) ? FacebookRequestError.EnumC2222b.OTHER : FacebookRequestError.EnumC2222b.TRANSIENT;
    }

    /* renamed from: a */
    public String m34739a(FacebookRequestError.EnumC2222b bVar) {
        int i = C2433c.f3059a[bVar.ordinal()];
        if (i == 1) {
            return this.f3056d;
        }
        if (i == 2) {
            return this.f3058f;
        }
        if (i != 3) {
            return null;
        }
        return this.f3057e;
    }
}
