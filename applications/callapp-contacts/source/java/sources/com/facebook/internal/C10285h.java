package com.facebook.internal;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.C20126t;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18247ai;
import kotlin.p532h.C18425p;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018�� \u00192\u00020\u0001:\u0001\u0019B\u007f\b��\u0012\u001c\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u0012\u001c\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u0012\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\fJ\u001e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0012R'\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��R'\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u000eR\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��R'\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u000eR\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001a"}, m4298d2 = {"Lcom/facebook/internal/FacebookRequestErrorClassification;", "", "otherErrors", "", "", "", "transientErrors", "loginRecoverableErrors", "otherRecoveryMessage", "", "transientRecoveryMessage", "loginRecoverableRecoveryMessage", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getLoginRecoverableErrors", "()Ljava/util/Map;", "getOtherErrors", "getTransientErrors", "classify", "Lcom/facebook/FacebookRequestError$Category;", "errorCode", "errorSubCode", "isTransient", "", "getRecoveryMessage", "category", "Companion", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.h */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/h.class */
public final class C10285h {

    /* renamed from: g */
    public static final C10286a f33812g = new C10286a(null);

    /* renamed from: h */
    private static C10285h f33813h;

    /* renamed from: a */
    public final Map<Integer, Set<Integer>> f33814a;

    /* renamed from: b */
    public final Map<Integer, Set<Integer>> f33815b;

    /* renamed from: c */
    public final Map<Integer, Set<Integer>> f33816c;

    /* renamed from: d */
    public final String f33817d;

    /* renamed from: e */
    public final String f33818e;

    /* renamed from: f */
    public final String f33819f;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0010\"\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00152\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007J&\u0010\u001f\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!\u0018\u00010 2\u0006\u0010\"\u001a\u00020#H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u000fX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u000fX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u000fX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u000fX\u0086T¢\u0006\u0002\n��R\u001a\u0010\u0014\u001a\u00020\u00158FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n��¨\u0006$"}, m4298d2 = {"Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;", "", "()V", "EC_APP_NOT_INSTALLED", "", "EC_APP_TOO_MANY_CALLS", "EC_INVALID_SESSION", "EC_INVALID_TOKEN", "EC_RATE", "EC_SERVICE_UNAVAILABLE", "EC_TOO_MANY_USER_ACTION_CALLS", "EC_USER_TOO_MANY_CALLS", "ESC_APP_INACTIVE", "ESC_APP_NOT_INSTALLED", "KEY_LOGIN_RECOVERABLE", "", "KEY_NAME", "KEY_OTHER", "KEY_RECOVERY_MESSAGE", "KEY_TRANSIENT", "defaultErrorClassification", "Lcom/facebook/internal/FacebookRequestErrorClassification;", "getDefaultErrorClassification$annotations", "getDefaultErrorClassification", "()Lcom/facebook/internal/FacebookRequestErrorClassification;", "defaultErrorClassificationImpl", "getDefaultErrorClassificationImpl", "defaultInstance", "createFromJSON", "jsonArray", "Lorg/json/JSONArray;", "parseJSONDefinition", "", "", "definition", "Lorg/json/JSONObject;", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: com.facebook.internal.h$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/h$a.class */
    public static final class C10286a {
        private C10286a() {
        }

        public /* synthetic */ C10286a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static C10285h m23058a(JSONArray jSONArray) {
            String str;
            String str2;
            Map<Integer, Set<Integer>> map;
            Map<Integer, Set<Integer>> map2;
            if (jSONArray == null) {
                return null;
            }
            int i = 0;
            int length = jSONArray.length();
            Map<Integer, Set<Integer>> map3 = null;
            Map<Integer, Set<Integer>> map4 = null;
            Map<Integer, Set<Integer>> map5 = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            while (i < length) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i);
                if (optJSONObject == null) {
                    map2 = map3;
                    map = map4;
                    str2 = str3;
                    str = str4;
                } else {
                    String optString = optJSONObject.optString("name");
                    if (optString == null) {
                        map2 = map3;
                        map = map4;
                        str2 = str3;
                        str = str4;
                    } else if (C18425p.m3961a(optString, "other")) {
                        str2 = optJSONObject.optString("recovery_message", null);
                        map2 = m23057a(optJSONObject);
                        map = map4;
                        str = str4;
                    } else if (C18425p.m3961a(optString, "transient")) {
                        str = optJSONObject.optString("recovery_message", null);
                        map = m23057a(optJSONObject);
                        map2 = map3;
                        str2 = str3;
                    } else {
                        map2 = map3;
                        map = map4;
                        str2 = str3;
                        str = str4;
                        if (C18425p.m3961a(optString, "login_recoverable")) {
                            str5 = optJSONObject.optString("recovery_message", null);
                            map5 = m23057a(optJSONObject);
                            str = str4;
                            str2 = str3;
                            map = map4;
                            map2 = map3;
                        }
                    }
                }
                i++;
                map3 = map2;
                map4 = map;
                str3 = str2;
                str4 = str;
            }
            return new C10285h(map3, map4, map5, str3, str4, str5);
        }

        /* renamed from: a */
        private static Map<Integer, Set<Integer>> m23057a(JSONObject jSONObject) {
            int optInt;
            HashSet hashSet;
            JSONArray optJSONArray = jSONObject.optJSONArray("items");
            if (optJSONArray.length() == 0) {
                return null;
            }
            HashMap hashMap = new HashMap();
            int length = optJSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (optJSONObject != null && (optInt = optJSONObject.optInt("code")) != 0) {
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray("subcodes");
                    if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                        HashSet hashSet2 = new HashSet();
                        int length2 = optJSONArray2.length();
                        int i2 = 0;
                        while (true) {
                            hashSet = hashSet2;
                            if (i2 >= length2) {
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

        /* renamed from: a */
        public final C10285h m23059a() {
            C10285h c10285h;
            synchronized (this) {
                if (C10285h.f33813h == null) {
                    C10286a c10286a = C10285h.f33812g;
                    C10285h.f33813h = new C10285h(null, C18247ai.m4248b(C20126t.m1103a(2, null), C20126t.m1103a(4, null), C20126t.m1103a(9, null), C20126t.m1103a(17, null), C20126t.m1103a(341, null)), C18247ai.m4248b(C20126t.m1103a(102, null), C20126t.m1103a(190, null), C20126t.m1103a(412, null)), null, null, null);
                }
                c10285h = C10285h.f33813h;
                if (c10285h == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.facebook.internal.FacebookRequestErrorClassification");
                }
            }
            return c10285h;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C10285h(Map<Integer, ? extends Set<Integer>> map, Map<Integer, ? extends Set<Integer>> map2, Map<Integer, ? extends Set<Integer>> map3, String str, String str2, String str3) {
        this.f33814a = map;
        this.f33815b = map2;
        this.f33816c = map3;
        this.f33817d = str;
        this.f33818e = str2;
        this.f33819f = str3;
    }

    /* renamed from: b */
    public static final C10285h m23060b() {
        C10285h m23059a;
        synchronized (C10285h.class) {
            try {
                m23059a = f33812g.m23059a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return m23059a;
    }
}
