package com.facebook.internal;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.a.ai;
import kotlin.h.p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.t;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018�� \u00192\u00020\u0001:\u0001\u0019B\u007f\b��\u0012\u001c\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u0012\u001c\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u0012\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\fJ\u001e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0012R'\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��R'\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u000eR\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��R'\u0010\u0006\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0005\u0018\u00010\u0003¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u000eR\u0010\u0010\n\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001a"}, d2 = {"Lcom/facebook/internal/FacebookRequestErrorClassification;", "", "otherErrors", "", "", "", "transientErrors", "loginRecoverableErrors", "otherRecoveryMessage", "", "transientRecoveryMessage", "loginRecoverableRecoveryMessage", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getLoginRecoverableErrors", "()Ljava/util/Map;", "getOtherErrors", "getTransientErrors", "classify", "Lcom/facebook/FacebookRequestError$Category;", "errorCode", "errorSubCode", "isTransient", "", "getRecoveryMessage", "category", "Companion", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/h.class */
public final class h {
    public static final a g = new a(null);
    private static h h;

    /* renamed from: a  reason: collision with root package name */
    public final Map<Integer, Set<Integer>> f19934a;

    /* renamed from: b  reason: collision with root package name */
    public final Map<Integer, Set<Integer>> f19935b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<Integer, Set<Integer>> f19936c;

    /* renamed from: d  reason: collision with root package name */
    public final String f19937d;
    public final String e;
    public final String f;

    @Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0010\"\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00152\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0007J&\u0010\u001f\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010!\u0018\u00010 2\u0006\u0010\"\u001a\u00020#H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u000fX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u000fX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u000fX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u000fX\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u000fX\u0086T¢\u0006\u0002\n��R\u001a\u0010\u0014\u001a\u00020\u00158FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u0018R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n��¨\u0006$"}, d2 = {"Lcom/facebook/internal/FacebookRequestErrorClassification$Companion;", "", "()V", "EC_APP_NOT_INSTALLED", "", "EC_APP_TOO_MANY_CALLS", "EC_INVALID_SESSION", "EC_INVALID_TOKEN", "EC_RATE", "EC_SERVICE_UNAVAILABLE", "EC_TOO_MANY_USER_ACTION_CALLS", "EC_USER_TOO_MANY_CALLS", "ESC_APP_INACTIVE", "ESC_APP_NOT_INSTALLED", "KEY_LOGIN_RECOVERABLE", "", "KEY_NAME", "KEY_OTHER", "KEY_RECOVERY_MESSAGE", "KEY_TRANSIENT", "defaultErrorClassification", "Lcom/facebook/internal/FacebookRequestErrorClassification;", "getDefaultErrorClassification$annotations", "getDefaultErrorClassification", "()Lcom/facebook/internal/FacebookRequestErrorClassification;", "defaultErrorClassificationImpl", "getDefaultErrorClassificationImpl", "defaultInstance", "createFromJSON", "jsonArray", "Lorg/json/JSONArray;", "parseJSONDefinition", "", "", "definition", "Lorg/json/JSONObject;", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/facebook/internal/h$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static h a(JSONArray jSONArray) {
            if (jSONArray == null) {
                return null;
            }
            int length = jSONArray.length();
            Map<Integer, Set<Integer>> map = null;
            Map<Integer, Set<Integer>> map2 = null;
            Map<Integer, Set<Integer>> map3 = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            for (int i = 0; i < length; i++) {
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
                    } else if (p.a(optString, "other")) {
                        str = optJSONObject.optString("recovery_message", null);
                        map = a(optJSONObject);
                        map2 = map2;
                        str2 = str2;
                    } else if (p.a(optString, "transient")) {
                        str2 = optJSONObject.optString("recovery_message", null);
                        map2 = a(optJSONObject);
                        map = map;
                        str = str;
                    } else {
                        map = map;
                        map2 = map2;
                        str = str;
                        str2 = str2;
                        if (p.a(optString, "login_recoverable")) {
                            str3 = optJSONObject.optString("recovery_message", null);
                            map3 = a(optJSONObject);
                            str2 = str2;
                            str = str;
                            map2 = map2;
                            map = map;
                        }
                    }
                }
            }
            return new h(map, map2, map3, str, str2, str3);
        }

        private static Map<Integer, Set<Integer>> a(JSONObject jSONObject) {
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
                if (!(optJSONObject == null || (optInt = optJSONObject.optInt("code")) == 0)) {
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

        public final h a() {
            h hVar;
            synchronized (this) {
                if (h.h == null) {
                    a aVar = h.g;
                    h.h = new h(null, ai.b(t.a(2, null), t.a(4, null), t.a(9, null), t.a(17, null), t.a(341, null)), ai.b(t.a(102, null), t.a(190, null), t.a(412, null)), null, null, null);
                }
                hVar = h.h;
                if (hVar == null) {
                    throw new NullPointerException("null cannot be cast to non-null type com.facebook.internal.FacebookRequestErrorClassification");
                }
            }
            return hVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(Map<Integer, ? extends Set<Integer>> map, Map<Integer, ? extends Set<Integer>> map2, Map<Integer, ? extends Set<Integer>> map3, String str, String str2, String str3) {
        this.f19934a = map;
        this.f19935b = map2;
        this.f19936c = map3;
        this.f19937d = str;
        this.e = str2;
        this.f = str3;
    }

    public static final h b() {
        h a2;
        synchronized (h.class) {
            try {
                a2 = g.a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return a2;
    }
}
