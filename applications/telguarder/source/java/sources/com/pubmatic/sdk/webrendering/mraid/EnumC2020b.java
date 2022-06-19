package com.pubmatic.sdk.webrendering.mraid;

import com.facebook.internal.logging.monitor.MonitorLogServerProtocol;
/* renamed from: com.pubmatic.sdk.webrendering.mraid.b */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/mraid/b.class */
enum EnumC2020b {
    DEFAULT(MonitorLogServerProtocol.DEFAULT_SAMPLE_RATES_KEY),
    LOADING("loading"),
    EXPANDED("expanded"),
    RESIZED("resized");
    

    /* renamed from: a */
    private final String f1137a;

    EnumC2020b(String str) {
        this.f1137a = str;
    }

    /* renamed from: a */
    public String m561a() {
        return this.f1137a;
    }
}
