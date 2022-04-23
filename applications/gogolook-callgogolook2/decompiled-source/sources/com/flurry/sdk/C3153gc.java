package com.flurry.sdk;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.gc */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gc.class */
public final class C3153gc implements AbstractC3161gk {

    /* renamed from: b */
    public static final Map<String, AbstractC3161gk> f5154b;

    /* renamed from: com.flurry.sdk.gc$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gc$a.class */
    public static final class C3154a implements AbstractC3161gk {
        public C3154a() {
        }

        public /* synthetic */ C3154a(byte b) {
            this();
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("FLURRY", new C3154a((byte) 0));
        f5154b = Collections.unmodifiableMap(hashMap);
    }
}
