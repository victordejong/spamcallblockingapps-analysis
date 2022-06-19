package com.callapp.contacts.api.helper.twitter;

import com.callapp.framework.util.StringUtils;
import okhttp3.Headers;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/CallAppTwitterRateLimit.class */
class CallAppTwitterRateLimit {

    /* renamed from: a */
    private final long f24880a;

    /* renamed from: b */
    private int f24881b;

    /* renamed from: c */
    private int f24882c;

    /* renamed from: d */
    private long f24883d;

    public CallAppTwitterRateLimit(Headers headers) {
        if (headers != null) {
            this.f24880a = System.currentTimeMillis() / 1000;
            String str = headers.get("x-rate-limit-limit");
            if (StringUtils.m26045b((CharSequence) str)) {
                this.f24881b = Integer.valueOf(str).intValue();
            }
            String str2 = headers.get("x-rate-limit-remaining");
            if (StringUtils.m26045b((CharSequence) str2)) {
                this.f24882c = Integer.valueOf(str2).intValue();
            }
            String str3 = headers.get("x-rate-limit-reset");
            if (!StringUtils.m26045b((CharSequence) str3)) {
                return;
            }
            this.f24883d = Integer.valueOf(str3).intValue();
            return;
        }
        throw new IllegalArgumentException("headers must not be null");
    }

    public int getRemaining() {
        return this.f24882c;
    }
}
