package com.callapp.contacts.api.helper.twitter;

import com.callapp.framework.util.StringUtils;
import okhttp3.Headers;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit.class */
class CallAppTwitterRateLimit {

    /* renamed from: a  reason: collision with root package name */
    private final long f14214a;

    /* renamed from: b  reason: collision with root package name */
    private int f14215b;

    /* renamed from: c  reason: collision with root package name */
    private int f14216c;

    /* renamed from: d  reason: collision with root package name */
    private long f14217d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallAppTwitterRateLimit(Headers headers) {
        if (headers != null) {
            this.f14214a = System.currentTimeMillis() / 1000;
            String str = headers.get("x-rate-limit-limit");
            if (StringUtils.b((CharSequence) str)) {
                this.f14215b = Integer.valueOf(str).intValue();
            }
            String str2 = headers.get("x-rate-limit-remaining");
            if (StringUtils.b((CharSequence) str2)) {
                this.f14216c = Integer.valueOf(str2).intValue();
            }
            String str3 = headers.get("x-rate-limit-reset");
            if (StringUtils.b((CharSequence) str3)) {
                this.f14217d = Integer.valueOf(str3).intValue();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("headers must not be null");
    }

    public int getRemaining() {
        return this.f14216c;
    }
}
