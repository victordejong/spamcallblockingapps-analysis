package com.verizon.ads;

import com.verizon.ads.events.Events;
import com.verizon.ads.utils.TextUtils;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/Configuration.class */
public final class Configuration {
    public static final String CONFIGURATION_CHANGE_EVENT_ID = "com.verizon.ads.configuration.change";
    private static final String DOMAIN_AND_KEY_REQUIRED_MESSAGE = "Domain and key cannot be null or empty";
    private static final String DOMAIN_REQUIRED_MESSAGE = "Domain cannot be null";
    private static final String SECURITY_KEY_REQUIRED_MESSAGE = "Security key cannot be null";
    private static final Logger logger = Logger.getInstance(Configuration.class);
    private static final DataStore domainDataStore = new DataStore();
    private static final Map<String, String> protectedDomains = new ConcurrentHashMap();

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/Configuration$ConfigurationChangeEvent.class */
    public static final class ConfigurationChangeEvent {
        public final String domain;
        public final String key;
        public final Object value;

        ConfigurationChangeEvent(String str, String str2, Object obj) {
            this.domain = str;
            this.key = str2;
            this.value = obj;
        }

        public final String toString() {
            return "ConfigurationChangeEvent{domain: " + this.domain + ", key: " + this.key + ", value: " + this.value + '}';
        }
    }

    private Configuration() {
    }

    public static String asString() {
        return String.format("Configuration:\n%s", domainDataStore.toString());
    }

    public static boolean exists(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            logger.m5565e(DOMAIN_AND_KEY_REQUIRED_MESSAGE);
            return false;
        }
        return domainDataStore.containsKey(makeDataStoreKey(str, str2));
    }

    public static <T> T get(String str, String str2, Class<T> cls, T t) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            logger.m5565e(DOMAIN_AND_KEY_REQUIRED_MESSAGE);
            return (T) getImmutableValue(t);
        }
        T t2 = (T) domainDataStore.get(makeDataStoreKey(str, str2), cls, t);
        return t2 != null ? t2 : (T) getImmutableValue(t);
    }

    public static boolean getBoolean(String str, String str2, boolean z) {
        return ((Boolean) get(str, str2, Boolean.class, Boolean.valueOf(z))).booleanValue();
    }

    public static double getDouble(String str, String str2, double d) {
        return ((Double) get(str, str2, Double.class, Double.valueOf(d))).doubleValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.List] */
    private static <T> T getImmutableValue(T t) {
        if (t instanceof Map) {
            return (T) Collections.unmodifiableMap((Map) t);
        }
        T t2 = t;
        if (t instanceof List) {
            t2 = Collections.unmodifiableList((List) t);
        }
        return t2;
    }

    public static int getInt(String str, String str2, int i) {
        return ((Integer) get(str, str2, Integer.class, Integer.valueOf(i))).intValue();
    }

    public static List getList(String str, String str2, List list) {
        return (List) get(str, str2, List.class, list);
    }

    public static Map getMap(String str, String str2, Map map) {
        return (Map) get(str, str2, Map.class, map);
    }

    public static Object getObject(String str, String str2, Object obj) {
        return get(str, str2, Object.class, obj);
    }

    public static String getString(String str, String str2, String str3) {
        return (String) get(str, str2, String.class, str3);
    }

    private static boolean isAllowedToUpdateDomain(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String str3 = protectedDomains.get(str);
        if (str3 == null || str3.equals(str2)) {
            return true;
        }
        logger.m5565e("Not authorized to set value for a protected domain: ".concat(String.valueOf(str)));
        return false;
    }

    public static boolean isDomainProtected(String str) {
        if (TextUtils.isEmpty(str)) {
            logger.m5565e(DOMAIN_REQUIRED_MESSAGE);
            return false;
        }
        return protectedDomains.containsKey(str);
    }

    private static String makeDataStoreKey(String str, String str2) {
        return str + '.' + str2;
    }

    public static boolean protectDomain(String str, String str2) throws Exception {
        if (TextUtils.isEmpty(str)) {
            logger.m5565e(DOMAIN_REQUIRED_MESSAGE);
            return false;
        } else if (TextUtils.isEmpty(str2)) {
            logger.m5565e(SECURITY_KEY_REQUIRED_MESSAGE);
            return false;
        } else {
            Map<String, String> map = protectedDomains;
            if (map.containsKey(str) && !str2.equals(map.get(str))) {
                throw new Exception("Domain has already been protected");
            }
            map.put(str, str2);
            return true;
        }
    }

    private static void removeDomainValue(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            logger.m5565e(DOMAIN_AND_KEY_REQUIRED_MESSAGE);
        } else if (!isAllowedToUpdateDomain(str, str3) || domainDataStore.remove(makeDataStoreKey(str, str2)) == null) {
        } else {
            Events.sendEvent(CONFIGURATION_CHANGE_EVENT_ID, new ConfigurationChangeEvent(str, str2, null));
        }
    }

    public static void set(Object obj, String str, String str2, String str3) {
        if (obj == null) {
            removeDomainValue(str, str2, str3);
        } else {
            setDomainValue(obj, str, str2, str3);
        }
    }

    public static void setBoolean(boolean z, String str, String str2, String str3) {
        set(Boolean.valueOf(z), str, str2, str3);
    }

    private static void setDomainValue(Object obj, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            logger.m5565e(DOMAIN_AND_KEY_REQUIRED_MESSAGE);
        } else if (!isAllowedToUpdateDomain(str, str3)) {
        } else {
            Object immutableValue = getImmutableValue(obj);
            if (obj.equals(domainDataStore.put(makeDataStoreKey(str, str2), immutableValue))) {
                return;
            }
            Events.sendEvent(CONFIGURATION_CHANGE_EVENT_ID, new ConfigurationChangeEvent(str, str2, immutableValue));
        }
    }

    public static void setDouble(double d, String str, String str2, String str3) {
        set(Double.valueOf(d), str, str2, str3);
    }

    public static void setInt(int i, String str, String str2, String str3) {
        set(Integer.valueOf(i), str, str2, str3);
    }

    public static void setList(List list, String str, String str2, String str3) {
        set(list, str, str2, str3);
    }

    public static void setMap(Map map, String str, String str2, String str3) {
        set(map, str, str2, str3);
    }

    public static void setObject(Object obj, String str, String str2, String str3) {
        set(obj, str, str2, str3);
    }

    public static void setString(String str, String str2, String str3, String str4) {
        set(str, str2, str3, str4);
    }
}
