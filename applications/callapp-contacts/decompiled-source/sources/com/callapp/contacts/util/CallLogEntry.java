package com.callapp.contacts.util;

import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/CallLogEntry.class */
public final class CallLogEntry {

    /* renamed from: a  reason: collision with root package name */
    private final int f15861a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15862b;

    /* renamed from: c  reason: collision with root package name */
    private final Date f15863c;

    /* renamed from: d  reason: collision with root package name */
    private final long f15864d;
    private final long e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallLogEntry(int i, String str, Date date, long j, long j2) {
        this.f15861a = i;
        this.f15862b = str;
        this.f15863c = date;
        this.f15864d = j;
        this.e = j2;
    }

    public final long getDuration() {
        return this.f15864d;
    }

    public final Long getId() {
        return Long.valueOf(this.e);
    }

    public final String getNumber() {
        return this.f15862b;
    }

    public final Date getTime() {
        return this.f15863c;
    }

    public final int getType() {
        return this.f15861a;
    }
}
