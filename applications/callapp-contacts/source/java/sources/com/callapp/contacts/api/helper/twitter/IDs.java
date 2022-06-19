package com.callapp.contacts.api.helper.twitter;

import com.google.gson.annotations.AbstractC15952b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/IDs.class */
public class IDs {
    @AbstractC15952b(m7988a = "ids")

    /* renamed from: a */
    public final long[] f24884a;
    @AbstractC15952b(m7988a = "previous_cursor")

    /* renamed from: b */
    public final Long f24885b;
    @AbstractC15952b(m7988a = "next_cursor")

    /* renamed from: c */
    public final Long f24886c;

    /* renamed from: d */
    private CallAppTwitterRateLimit f24887d;

    public IDs(Long l, long[] jArr, Long l2) {
        this.f24885b = l;
        this.f24884a = jArr;
        this.f24886c = l2;
    }

    public long[] getIDs() {
        return this.f24884a;
    }

    public long getNextCursor() {
        return this.f24886c.longValue();
    }

    public CallAppTwitterRateLimit getRateLimit() {
        return this.f24887d;
    }

    public void setRateLimit(CallAppTwitterRateLimit callAppTwitterRateLimit) {
        this.f24887d = callAppTwitterRateLimit;
    }
}
