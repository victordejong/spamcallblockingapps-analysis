package com.callapp.contacts.util;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CallLogEntry.class */
public final class CallLogEntry {

    /* renamed from: a */
    private final int f27698a;

    /* renamed from: b */
    private final String f27699b;

    /* renamed from: c */
    private final Date f27700c;

    /* renamed from: d */
    private final long f27701d;

    /* renamed from: e */
    private final long f27702e;

    public CallLogEntry(int i, String str, Date date, long j, long j2) {
        this.f27698a = i;
        this.f27699b = str;
        this.f27700c = date;
        this.f27701d = j;
        this.f27702e = j2;
    }

    public final long getDuration() {
        return this.f27701d;
    }

    public final Long getId() {
        return Long.valueOf(this.f27702e);
    }

    public final String getNumber() {
        return this.f27699b;
    }

    public final Date getTime() {
        return this.f27700c;
    }

    public final int getType() {
        return this.f27698a;
    }
}
