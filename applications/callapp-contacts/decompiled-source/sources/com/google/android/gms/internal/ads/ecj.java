package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecj.class */
public final class ecj {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f27624a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f27625b;

    public final Map<String, String> a() {
        Map<String, String> map;
        synchronized (this) {
            if (this.f27625b == null) {
                this.f27625b = Collections.unmodifiableMap(new HashMap(this.f27624a));
            }
            map = this.f27625b;
        }
        return map;
    }
}
