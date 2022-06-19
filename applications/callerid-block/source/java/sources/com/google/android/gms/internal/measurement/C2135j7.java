package com.google.android.gms.internal.measurement;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.j7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/j7.class */
public final class C2135j7 implements Map.Entry, Comparable<C2135j7> {

    /* renamed from: b */
    private final Comparable f9775b;

    /* renamed from: c */
    private Object f9776c;

    /* renamed from: d */
    final /* synthetic */ C2150m7 f9777d;

    public C2135j7(C2150m7 c2150m7, Comparable comparable, Object obj) {
        this.f9777d = c2150m7;
        this.f9775b = comparable;
        this.f9776c = obj;
    }

    /* renamed from: e */
    private static final boolean m4274e(Object obj, Object obj2) {
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
    public final Comparable m4275a() {
        return this.f9775b;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C2135j7 c2135j7) {
        return this.f9775b.compareTo(c2135j7.f9775b);
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
        return m4274e(this.f9775b, entry.getKey()) && m4274e(this.f9776c, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f9775b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f9776c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f9775b;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f9776c;
        if (obj != null) {
            i = obj.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f9777d.m4247m();
        Object obj2 = this.f9776c;
        this.f9776c = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9775b);
        String valueOf2 = String.valueOf(this.f9776c);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
