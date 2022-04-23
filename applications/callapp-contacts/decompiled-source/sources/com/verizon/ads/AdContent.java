package com.verizon.ads;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdContent.class */
public final class AdContent {

    /* renamed from: a  reason: collision with root package name */
    private final String f35248a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f35249b;

    public AdContent(String str) {
        this(str, null);
    }

    public AdContent(String str, Map<String, Object> map) {
        this.f35248a = str;
        if (map != null) {
            this.f35249b = Collections.unmodifiableMap(map);
        } else {
            this.f35249b = null;
        }
    }

    public final String getContent() {
        return this.f35248a;
    }

    public final Map<String, Object> getMetadata() {
        return this.f35249b;
    }

    public final String toString() {
        return "AdContent{content='" + this.f35248a + "', metadata=" + this.f35249b + '}';
    }
}
