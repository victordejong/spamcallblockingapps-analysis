package com.google.android.gms.internal.ads;

import androidx.webkit.ProxyConfig;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdrk.class */
public enum zzdrk {
    SIGNALS("signals"),
    REQUEST_PARCEL("request-parcel"),
    SERVER_TRANSACTION("server-transaction"),
    RENDERER("renderer"),
    GMS_SIGNALS("gms-signals"),
    AD_REQUEST("ad_request"),
    BUILD_URL("build-url"),
    HTTP(ProxyConfig.MATCH_HTTP),
    PRE_PROCESS("preprocess"),
    GET_SIGNALS("get-signals"),
    JS_SIGNALS("js-signals"),
    RENDER_CONFIG_INIT("render-config-init"),
    RENDER_CONFIG_WATERFALL("render-config-waterfall"),
    ADAPTER_LOAD_AD_SYN("adapter-load-ad-syn"),
    ADAPTER_LOAD_AD_ACK("adapter-load-ad-ack"),
    ADAPTER_WRAP_ADAPTER("wrap-adapter"),
    CUSTOM_RENDER_SYN("custom-render-syn"),
    CUSTOM_RENDER_ACK("custom-render-ack"),
    WEBVIEW_COOKIE("webview-cookie"),
    GENERATE_SIGNALS("generate-signals"),
    GET_CACHE_KEY("get-cache-key"),
    NOTIFY_CACHE_HIT("notify-cache-hit"),
    GET_URL_AND_CACHE_KEY("get-url-and-cache-key");
    
    private final String zzhpv;

    zzdrk(String str) {
        this.zzhpv = str;
    }

    public final String zzaxi() {
        return this.zzhpv;
    }
}
