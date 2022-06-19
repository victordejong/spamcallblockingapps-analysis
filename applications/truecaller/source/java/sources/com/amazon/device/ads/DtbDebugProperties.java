package com.amazon.device.ads;

import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbDebugProperties.class */
public class DtbDebugProperties {
    public static final String AAX_HOSTNAME = "aaxHostname";
    public static final String AAX_ROUTE53_ENABLED_CNAME = "route53EnabledAAXCname";
    public static final String CONFIG_HOSTNAME = "configHostname";
    public static final String INTERNAL_DEBUG_MODE = "internalDebugMode";
    public static final String SIS_URL = "sisUrl";
    private static final String TEST_OVERRIDE_FILE = "com.amazon.device.ads.dtb.debug.override";
    public static final String USE_SECURE = "useSecure";
    private static DtbDebugProperties debugProperties;
    public static boolean isInternalDebugMode = false;
    private static Set<String> preDefinedKeys;
    private static HashMap<String, String> propertyMap = new HashMap<>();
    private static boolean isInitialized = false;

    public static String getAaxHostName(String str) {
        return getDebugProperty(AAX_HOSTNAME, str);
    }

    public static String getConfigHostName(String str) {
        return getDebugProperty(CONFIG_HOSTNAME, str);
    }

    public static HashMap<String, String> getDebugParams() {
        return (!AdRegistration.isTestMode() || !isInternalDebugMode) ? new HashMap<>() : propertyMap;
    }

    private static String getDebugProperty(String str, String str2) {
        HashMap<String, String> hashMap;
        return (!AdRegistration.isTestMode() || !isInternalDebugMode || (hashMap = propertyMap) == null || hashMap.get(str) == null) ? str2 : propertyMap.get(str);
    }

    public static String getEncodedUrlParams() {
        if (!isInternalDebugMode) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : propertyMap.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            try {
                if (!preDefinedKeys.contains(key.toLowerCase())) {
                    sb.append('&');
                    sb.append(key);
                    sb.append('=');
                    sb.append(URLEncoder.encode(value, StringConstant.UTF8));
                }
            } catch (UnsupportedEncodingException e) {
                DtbLog.debugError(String.format("Cannot encode %d=%d due to exception %d", key, value, e.getMessage()));
            }
        }
        return sb.toString();
    }

    public static DtbDebugProperties getInstance() {
        if (!isInitialized) {
            DtbLog.debug("Running the debug initialization.");
            debugProperties = new DtbDebugProperties();
            HashSet hashSet = new HashSet();
            preDefinedKeys = hashSet;
            hashSet.add(AAX_HOSTNAME.toLowerCase());
            preDefinedKeys.add(SIS_URL.toLowerCase());
            preDefinedKeys.add(USE_SECURE.toLowerCase());
            preDefinedKeys.add(CONFIG_HOSTNAME.toLowerCase());
            preDefinedKeys.add(INTERNAL_DEBUG_MODE.toLowerCase());
            initializeDtbDebugProperties();
        }
        return debugProperties;
    }

    public static boolean getIsSecure(boolean z) {
        String debugProperty = getDebugProperty(USE_SECURE, "");
        if (debugProperty.equals("true")) {
            return true;
        }
        if (debugProperty.equals("false")) {
            z = false;
        }
        return z;
    }

    public static String getRoute53EnabledCNAME(String str) {
        return getDebugProperty(AAX_ROUTE53_ENABLED_CNAME, str);
    }

    public static String getSISUrl(String str) {
        return getDebugProperty(SIS_URL, str);
    }

    public static void initializeDtbDebugProperties() {
        try {
            if (AdRegistration.isTestMode() && AdRegistration.getContext() == null) {
                DtbLog.debugError("unable to initialize debug preferences without setting app context");
                throw new IllegalArgumentException("unable to initialize debug preferences without setting app context");
            }
            String string = DtbCommonUtils.getApplicationBundle().getString(TEST_OVERRIDE_FILE);
            if (!DtbCommonUtils.isNullOrEmpty(string)) {
                DtbLog.debug("Override file: " + string);
                InputStream resourceAsStream = DtbCommonUtils.getResourceAsStream(string);
                InputStream inputStream = resourceAsStream;
                if (resourceAsStream == null) {
                    DtbLog.debug("Failed to read override from classpath, trying to read override file from absolute location: " + string);
                    File file = new File(string);
                    if (!file.exists()) {
                        DtbLog.debug("Couldn't find the override file, skipping.");
                        return;
                    }
                    inputStream = new FileInputStream(file);
                }
                DtbLog.debug("Reading debug params..");
                Properties properties = new Properties();
                properties.load(inputStream);
                for (Map.Entry entry : properties.entrySet()) {
                    String str = (String) entry.getKey();
                    if (DtbCommonUtils.isNullOrWhiteSpace(str)) {
                        DtbLog.debug("Error: The debug property name must not be null or empty string");
                    } else {
                        String str2 = (String) entry.getValue();
                        String str3 = str2;
                        if (str2 != null) {
                            str3 = str2.trim();
                        }
                        DtbLog.debug("Overrides found: " + str + " --> " + str3);
                        if (str.equalsIgnoreCase(INTERNAL_DEBUG_MODE)) {
                            isInternalDebugMode = str3.equalsIgnoreCase("true");
                        }
                        propertyMap.put(str, str3);
                    }
                }
                inputStream.close();
            }
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("Error:: Failed to read the debug params. ignoring.");
            m8728C.append(e.getStackTrace());
            DtbLog.debug(m8728C.toString());
        }
        isInitialized = true;
    }

    public static void resetProperties() {
        isInitialized = false;
        propertyMap = new HashMap<>();
    }

    public boolean isDebugMode() {
        return isInternalDebugMode;
    }
}
