package com.facebook.internal;

import com.facebook.FacebookRequestError;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/internal/FacebookRequestErrorClassification.class */
public final class FacebookRequestErrorClassification {
    public static final int EC_APP_NOT_INSTALLED = 412;
    public static final int EC_APP_TOO_MANY_CALLS = 4;
    public static final int EC_INVALID_SESSION = 102;
    public static final int EC_INVALID_TOKEN = 190;
    public static final int EC_RATE = 9;
    public static final int EC_SERVICE_UNAVAILABLE = 2;
    public static final int EC_TOO_MANY_USER_ACTION_CALLS = 341;
    public static final int EC_USER_TOO_MANY_CALLS = 17;
    public static final int ESC_APP_INACTIVE = 493;
    public static final int ESC_APP_NOT_INSTALLED = 458;
    public static final String KEY_LOGIN_RECOVERABLE = "login_recoverable";
    public static final String KEY_NAME = "name";
    public static final String KEY_OTHER = "other";
    public static final String KEY_RECOVERY_MESSAGE = "recovery_message";
    public static final String KEY_TRANSIENT = "transient";
    private static FacebookRequestErrorClassification defaultInstance;
    private final Map<Integer, Set<Integer>> loginRecoverableErrors;
    private final String loginRecoverableRecoveryMessage;
    private final Map<Integer, Set<Integer>> otherErrors;
    private final String otherRecoveryMessage;
    private final Map<Integer, Set<Integer>> transientErrors;
    private final String transientRecoveryMessage;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.facebook.internal.FacebookRequestErrorClassification$3 */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/FacebookRequestErrorClassification$3.class */
    public static /* synthetic */ class C09883 {
        static final /* synthetic */ int[] $SwitchMap$com$facebook$FacebookRequestError$Category;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[FacebookRequestError.Category.values().length];
            $SwitchMap$com$facebook$FacebookRequestError$Category = iArr;
            try {
                iArr[FacebookRequestError.Category.OTHER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$facebook$FacebookRequestError$Category[FacebookRequestError.Category.LOGIN_RECOVERABLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$facebook$FacebookRequestError$Category[FacebookRequestError.Category.TRANSIENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    FacebookRequestErrorClassification(Map<Integer, Set<Integer>> map, Map<Integer, Set<Integer>> map2, Map<Integer, Set<Integer>> map3, String str, String str2, String str3) {
        this.otherErrors = map;
        this.transientErrors = map2;
        this.loginRecoverableErrors = map3;
        this.otherRecoveryMessage = str;
        this.transientRecoveryMessage = str2;
        this.loginRecoverableRecoveryMessage = str3;
    }

    public static FacebookRequestErrorClassification createFromJSON(JSONArray jSONArray) {
        String str;
        String str2;
        Map<Integer, Set<Integer>> map;
        Map<Integer, Set<Integer>> map2;
        if (jSONArray == null) {
            return null;
        }
        int i = 0;
        Map<Integer, Set<Integer>> map3 = null;
        Map<Integer, Set<Integer>> map4 = null;
        Map<Integer, Set<Integer>> map5 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        while (i < jSONArray.length()) {
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
                } else if (optString.equalsIgnoreCase("other")) {
                    str2 = optJSONObject.optString(KEY_RECOVERY_MESSAGE, null);
                    map2 = parseJSONDefinition(optJSONObject);
                    map = map4;
                    str = str4;
                } else if (optString.equalsIgnoreCase(KEY_TRANSIENT)) {
                    str = optJSONObject.optString(KEY_RECOVERY_MESSAGE, null);
                    map = parseJSONDefinition(optJSONObject);
                    map2 = map3;
                    str2 = str3;
                } else {
                    map2 = map3;
                    map = map4;
                    str2 = str3;
                    str = str4;
                    if (optString.equalsIgnoreCase(KEY_LOGIN_RECOVERABLE)) {
                        str5 = optJSONObject.optString(KEY_RECOVERY_MESSAGE, null);
                        map5 = parseJSONDefinition(optJSONObject);
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
        return new FacebookRequestErrorClassification(map3, map4, map5, str3, str4, str5);
    }

    public static FacebookRequestErrorClassification getDefaultErrorClassification() {
        FacebookRequestErrorClassification facebookRequestErrorClassification;
        synchronized (FacebookRequestErrorClassification.class) {
            try {
                if (defaultInstance == null) {
                    defaultInstance = getDefaultErrorClassificationImpl();
                }
                facebookRequestErrorClassification = defaultInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return facebookRequestErrorClassification;
    }

    private static FacebookRequestErrorClassification getDefaultErrorClassificationImpl() {
        return new FacebookRequestErrorClassification(null, new HashMap<Integer, Set<Integer>>() { // from class: com.facebook.internal.FacebookRequestErrorClassification.1
            {
                put(2, null);
                put(4, null);
                put(9, null);
                put(17, null);
                put(Integer.valueOf((int) FacebookRequestErrorClassification.EC_TOO_MANY_USER_ACTION_CALLS), null);
            }
        }, new HashMap<Integer, Set<Integer>>() { // from class: com.facebook.internal.FacebookRequestErrorClassification.2
            {
                put(102, null);
                put(Integer.valueOf((int) FacebookRequestErrorClassification.EC_INVALID_TOKEN), null);
                put(Integer.valueOf((int) FacebookRequestErrorClassification.EC_APP_NOT_INSTALLED), null);
            }
        }, null, null, null);
    }

    private static Map<Integer, Set<Integer>> parseJSONDefinition(JSONObject jSONObject) {
        int optInt;
        HashSet hashSet;
        JSONArray optJSONArray = jSONObject.optJSONArray(FirebaseAnalytics.Param.ITEMS);
        if (optJSONArray.length() == 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null && (optInt = optJSONObject.optInt("code")) != 0) {
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

    public FacebookRequestError.Category classify(int i, int i2, boolean z) {
        Set<Integer> set;
        Set<Integer> set2;
        Set<Integer> set3;
        if (z) {
            return FacebookRequestError.Category.TRANSIENT;
        }
        Map<Integer, Set<Integer>> map = this.otherErrors;
        if (map != null && map.containsKey(Integer.valueOf(i)) && ((set3 = this.otherErrors.get(Integer.valueOf(i))) == null || set3.contains(Integer.valueOf(i2)))) {
            return FacebookRequestError.Category.OTHER;
        }
        Map<Integer, Set<Integer>> map2 = this.loginRecoverableErrors;
        if (map2 != null && map2.containsKey(Integer.valueOf(i)) && ((set2 = this.loginRecoverableErrors.get(Integer.valueOf(i))) == null || set2.contains(Integer.valueOf(i2)))) {
            return FacebookRequestError.Category.LOGIN_RECOVERABLE;
        }
        Map<Integer, Set<Integer>> map3 = this.transientErrors;
        return (map3 == null || !map3.containsKey(Integer.valueOf(i)) || ((set = this.transientErrors.get(Integer.valueOf(i))) != null && !set.contains(Integer.valueOf(i2)))) ? FacebookRequestError.Category.OTHER : FacebookRequestError.Category.TRANSIENT;
    }

    public Map<Integer, Set<Integer>> getLoginRecoverableErrors() {
        return this.loginRecoverableErrors;
    }

    public Map<Integer, Set<Integer>> getOtherErrors() {
        return this.otherErrors;
    }

    public String getRecoveryMessage(FacebookRequestError.Category category) {
        int i = C09883.$SwitchMap$com$facebook$FacebookRequestError$Category[category.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return this.loginRecoverableRecoveryMessage;
            }
            if (i == 3) {
                return this.transientRecoveryMessage;
            }
            return null;
        }
        return this.otherRecoveryMessage;
    }

    public Map<Integer, Set<Integer>> getTransientErrors() {
        return this.transientErrors;
    }
}
