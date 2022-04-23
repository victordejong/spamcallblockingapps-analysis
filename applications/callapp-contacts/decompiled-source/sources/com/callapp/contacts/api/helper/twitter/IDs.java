package com.callapp.contacts.api.helper.twitter;

import com.google.gson.annotations.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/api/helper/twitter/IDs.class */
public class IDs {
    @b(a = "ids")

    /* renamed from: a  reason: collision with root package name */
    public final long[] f14218a;
    @b(a = "previous_cursor")

    /* renamed from: b  reason: collision with root package name */
    public final Long f14219b;
    @b(a = "next_cursor")

    /* renamed from: c  reason: collision with root package name */
    public final Long f14220c;

    /* renamed from: d  reason: collision with root package name */
    private CallAppTwitterRateLimit f14221d;

    public IDs(Long l, long[] jArr, Long l2) {
        this.f14219b = l;
        this.f14218a = jArr;
        this.f14220c = l2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long[] getIDs() {
        return this.f14218a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNextCursor() {
        return this.f14220c.longValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallAppTwitterRateLimit getRateLimit() {
        return this.f14221d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRateLimit(CallAppTwitterRateLimit callAppTwitterRateLimit) {
        this.f14221d = callAppTwitterRateLimit;
    }
}
