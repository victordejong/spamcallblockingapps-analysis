package com.google.android.gms.internal.measurement;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.r7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/r7.class */
public final class C7533r7 implements Map.Entry, Comparable<C7533r7> {

    /* renamed from: d */
    private final Comparable f34669d;

    /* renamed from: e */
    private Object f34670e;

    /* renamed from: f */
    final /* synthetic */ C7572u7 f34671f;

    public C7533r7(C7572u7 c7572u7, Comparable comparable, Object obj) {
        this.f34671f = c7572u7;
        this.f34669d = comparable;
        this.f34670e = obj;
    }

    /* renamed from: d */
    private static final boolean m6960d(Object obj, Object obj2) {
        boolean z;
        if (obj != null) {
            z = obj.equals(obj2);
        } else if (obj2 == null) {
            return true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final Comparable m6961a() {
        return this.f34669d;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C7533r7 c7533r7) {
        return this.f34669d.compareTo(c7533r7.f34669d);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return m6960d(this.f34669d, entry.getKey()) && m6960d(this.f34670e, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f34669d;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f34670e;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f34669d;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f34670e;
        if (obj != null) {
            i = obj.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f34671f.m6866m();
        Object obj2 = this.f34670e;
        this.f34670e = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f34669d);
        String valueOf2 = String.valueOf(this.f34670e);
        StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
