package io.fabric.sdk.android.services.p068b;

import io.fabric.sdk.android.AbstractC1459h;
import io.fabric.sdk.android.services.network.AbstractC1588d;
import io.fabric.sdk.android.services.network.EnumC1587c;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;
/* renamed from: io.fabric.sdk.android.services.b.a */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/b/a.class */
public abstract class AbstractC1468a {
    public static final String ACCEPT_JSON_VALUE = "application/json";
    public static final String ANDROID_CLIENT_TYPE = "android";
    public static final String CLS_ANDROID_SDK_DEVELOPER_TOKEN = "470fa2b4ae81cd56ecbcda9735803434cec591fa";
    public static final String CRASHLYTICS_USER_AGENT = "Crashlytics Android SDK/";
    public static final int DEFAULT_TIMEOUT = 10000;
    public static final String HEADER_ACCEPT = "Accept";
    public static final String HEADER_API_KEY = "X-CRASHLYTICS-API-KEY";
    public static final String HEADER_CLIENT_TYPE = "X-CRASHLYTICS-API-CLIENT-TYPE";
    public static final String HEADER_CLIENT_VERSION = "X-CRASHLYTICS-API-CLIENT-VERSION";
    public static final String HEADER_DEVELOPER_TOKEN = "X-CRASHLYTICS-DEVELOPER-TOKEN";
    public static final String HEADER_REQUEST_ID = "X-REQUEST-ID";
    public static final String HEADER_USER_AGENT = "User-Agent";
    private static final Pattern PROTOCOL_AND_HOST_PATTERN = Pattern.compile("http(s?)://[^\\/]+", 2);
    protected final AbstractC1459h kit;
    private final EnumC1587c method;
    private final String protocolAndHostOverride;
    private final AbstractC1588d requestFactory;
    private final String url;

    public AbstractC1468a(AbstractC1459h abstractC1459h, String str, String str2, AbstractC1588d abstractC1588d, EnumC1587c enumC1587c) {
        if (str2 != null) {
            if (abstractC1588d == null) {
                throw new IllegalArgumentException("requestFactory must not be null.");
            }
            this.kit = abstractC1459h;
            this.protocolAndHostOverride = str;
            this.url = overrideProtocolAndHost(str2);
            this.requestFactory = abstractC1588d;
            this.method = enumC1587c;
            return;
        }
        throw new IllegalArgumentException("url must not be null.");
    }

    private String overrideProtocolAndHost(String str) {
        String str2 = str;
        if (!C1480i.m3473d(this.protocolAndHostOverride)) {
            str2 = PROTOCOL_AND_HOST_PATTERN.matcher(str).replaceFirst(this.protocolAndHostOverride);
        }
        return str2;
    }

    public HttpRequest getHttpRequest() {
        return getHttpRequest(Collections.emptyMap());
    }

    public HttpRequest getHttpRequest(Map<String, String> map) {
        HttpRequest m3293a = this.requestFactory.mo3227a(this.method, getUrl(), map).m3276a(false).m3293a(DEFAULT_TIMEOUT);
        return m3293a.m3284a(HEADER_USER_AGENT, CRASHLYTICS_USER_AGENT + this.kit.getVersion()).m3284a(HEADER_DEVELOPER_TOKEN, CLS_ANDROID_SDK_DEVELOPER_TOKEN);
    }

    public String getUrl() {
        return this.url;
    }
}
