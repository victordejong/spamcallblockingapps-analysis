package com.verizon.ads;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdContent.class */
public final class AdContent {

    /* renamed from: a */
    private final String f61130a;

    /* renamed from: b */
    private final Map<String, Object> f61131b;

    public AdContent(String str) {
        this(str, null);
    }

    public AdContent(String str, Map<String, Object> map) {
        this.f61130a = str;
        if (map != null) {
            this.f61131b = Collections.unmodifiableMap(map);
        } else {
            this.f61131b = null;
        }
    }

    public final String getContent() {
        return this.f61130a;
    }

    public final Map<String, Object> getMetadata() {
        return this.f61131b;
    }

    public final String toString() {
        return "AdContent{content='" + this.f61130a + "', metadata=" + this.f61131b + '}';
    }
}
