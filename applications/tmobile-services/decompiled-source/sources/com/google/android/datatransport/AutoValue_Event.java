package com.google.android.datatransport;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/AutoValue_Event.class */
public final class AutoValue_Event<T> extends Event<T> {

    /* renamed from: a */
    private final Integer f6510a;

    /* renamed from: b */
    private final T f6511b;

    /* renamed from: c */
    private final Priority f6512c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_Event(@Nullable Integer num, T t, Priority priority) {
        this.f6510a = num;
        if (t != null) {
            this.f6511b = t;
            if (priority != null) {
                this.f6512c = priority;
                return;
            }
            throw new NullPointerException("Null priority");
        }
        throw new NullPointerException("Null payload");
    }

    @Override // com.google.android.datatransport.Event
    @Nullable
    /* renamed from: a */
    public Integer mo15559a() {
        return this.f6510a;
    }

    @Override // com.google.android.datatransport.Event
    /* renamed from: b */
    public T mo15558b() {
        return this.f6511b;
    }

    @Override // com.google.android.datatransport.Event
    /* renamed from: c */
    public Priority mo15557c() {
        return this.f6512c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
        if (r3.f6512c.equals(r0.mo15557c()) != false) goto L_0x0054;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof com.google.android.datatransport.Event
            if (r0 == 0) goto L_0x0056
            r0 = r4
            com.google.android.datatransport.Event r0 = (com.google.android.datatransport.Event) r0
            r4 = r0
            r0 = r3
            java.lang.Integer r0 = r0.f6510a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0028
            r0 = r4
            java.lang.Integer r0 = r0.mo15559a()
            if (r0 != 0) goto L_0x0052
            goto L_0x0033
        L_0x0028:
            r0 = r6
            r1 = r4
            java.lang.Integer r1 = r1.mo15559a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0052
        L_0x0033:
            r0 = r3
            T r0 = r0.f6511b
            r1 = r4
            java.lang.Object r1 = r1.mo15558b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0052
            r0 = r3
            com.google.android.datatransport.Priority r0 = r0.f6512c
            r1 = r4
            com.google.android.datatransport.Priority r1 = r1.mo15557c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0052
            goto L_0x0054
        L_0x0052:
            r0 = 0
            r5 = r0
        L_0x0054:
            r0 = r5
            return r0
        L_0x0056:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.AutoValue_Event.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        Integer num = this.f6510a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f6511b.hashCode()) * 1000003) ^ this.f6512c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.f6510a + ", payload=" + this.f6511b + ", priority=" + this.f6512c + "}";
    }
}
