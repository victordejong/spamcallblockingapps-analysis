package com.twitter.sdk.android.core;

import okhttp3.Headers;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private int f35206a;

    /* renamed from: b  reason: collision with root package name */
    private int f35207b;

    /* renamed from: c  reason: collision with root package name */
    private long f35208c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(Headers headers) {
        if (headers != null) {
            for (int i = 0; i < headers.size(); i++) {
                if ("x-rate-limit-limit".equals(headers.name(i))) {
                    this.f35206a = Integer.valueOf(headers.value(i)).intValue();
                } else if ("x-rate-limit-remaining".equals(headers.name(i))) {
                    this.f35207b = Integer.valueOf(headers.value(i)).intValue();
                } else if ("x-rate-limit-reset".equals(headers.name(i))) {
                    this.f35208c = Long.valueOf(headers.value(i)).longValue();
                }
            }
            return;
        }
        throw new IllegalArgumentException("headers must not be null");
    }
}
