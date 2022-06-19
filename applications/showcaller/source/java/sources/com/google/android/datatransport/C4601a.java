package com.google.android.datatransport;

import java.util.Objects;
/* renamed from: com.google.android.datatransport.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/a.class */
public final class C4601a<T> extends AbstractC4603c<T> {

    /* renamed from: a */
    private final Integer f14008a;

    /* renamed from: b */
    private final T f14009b;

    /* renamed from: c */
    private final Priority f14010c;

    public C4601a(Integer num, T t, Priority priority) {
        this.f14008a = num;
        Objects.requireNonNull(t, "Null payload");
        this.f14009b = t;
        Objects.requireNonNull(priority, "Null priority");
        this.f14010c = priority;
    }

    @Override // com.google.android.datatransport.AbstractC4603c
    /* renamed from: a */
    public Integer mo22182a() {
        return this.f14008a;
    }

    @Override // com.google.android.datatransport.AbstractC4603c
    /* renamed from: b */
    public T mo22181b() {
        return this.f14009b;
    }

    @Override // com.google.android.datatransport.AbstractC4603c
    /* renamed from: c */
    public Priority mo22180c() {
        return this.f14010c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
        if (r3.f14010c.equals(r0.mo22180c()) != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.datatransport.AbstractC4603c
            if (r0 == 0) goto L56
            r0 = r4
            com.google.android.datatransport.c r0 = (com.google.android.datatransport.AbstractC4603c) r0
            r4 = r0
            r0 = r3
            java.lang.Integer r0 = r0.f14008a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L28
            r0 = r4
            java.lang.Integer r0 = r0.mo22182a()
            if (r0 != 0) goto L52
            goto L33
        L28:
            r0 = r6
            r1 = r4
            java.lang.Integer r1 = r1.mo22182a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L52
        L33:
            r0 = r3
            T r0 = r0.f14009b
            r1 = r4
            java.lang.Object r1 = r1.mo22181b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L52
            r0 = r3
            com.google.android.datatransport.Priority r0 = r0.f14010c
            r1 = r4
            com.google.android.datatransport.Priority r1 = r1.mo22180c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L52
            goto L54
        L52:
            r0 = 0
            r5 = r0
        L54:
            r0 = r5
            return r0
        L56:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.C4601a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        Integer num = this.f14008a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f14009b.hashCode()) * 1000003) ^ this.f14010c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.f14008a + ", payload=" + this.f14009b + ", priority=" + this.f14010c + "}";
    }
}
