package com.google.android.gms.internal.measurement;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.ih */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ih.class */
public final class C13576ih implements Comparable<C13576ih>, Map.Entry {

    /* renamed from: a */
    final Comparable f50835a;

    /* renamed from: b */
    final /* synthetic */ C13579ik f50836b;

    /* renamed from: c */
    private Object f50837c;

    public C13576ih(C13579ik c13579ik, Comparable comparable, Object obj) {
        this.f50836b = c13579ik;
        this.f50835a = comparable;
        this.f50837c = obj;
    }

    /* renamed from: a */
    private static final boolean m12590a(Object obj, Object obj2) {
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

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(C13576ih c13576ih) {
        return this.f50835a.compareTo(c13576ih.f50835a);
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
        return m12590a(this.f50835a, entry.getKey()) && m12590a(this.f50837c, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f50835a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f50837c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f50835a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f50837c;
        if (obj != null) {
            i = obj.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f50836b.m12576e();
        Object obj2 = this.f50837c;
        this.f50837c = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f50835a);
        String valueOf2 = String.valueOf(this.f50837c);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
