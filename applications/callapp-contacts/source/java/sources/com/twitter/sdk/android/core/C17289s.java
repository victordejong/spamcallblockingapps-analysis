package com.twitter.sdk.android.core;

import okhttp3.Headers;
/* renamed from: com.twitter.sdk.android.core.s */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/s.class */
public final class C17289s {

    /* renamed from: a */
    private int f61080a;

    /* renamed from: b */
    private int f61081b;

    /* renamed from: c */
    private long f61082c;

    public C17289s(Headers headers) {
        if (headers != null) {
            for (int i = 0; i < headers.size(); i++) {
                if ("x-rate-limit-limit".equals(headers.name(i))) {
                    this.f61080a = Integer.valueOf(headers.value(i)).intValue();
                } else if ("x-rate-limit-remaining".equals(headers.name(i))) {
                    this.f61081b = Integer.valueOf(headers.value(i)).intValue();
                } else if ("x-rate-limit-reset".equals(headers.name(i))) {
                    this.f61082c = Long.valueOf(headers.value(i)).longValue();
                }
            }
            return;
        }
        throw new IllegalArgumentException("headers must not be null");
    }
}
