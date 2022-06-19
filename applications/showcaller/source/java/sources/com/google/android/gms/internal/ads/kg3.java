package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kg3.class */
public final class kg3 implements Map.Entry, Comparable<kg3> {

    /* renamed from: d */
    private final Comparable f25212d;

    /* renamed from: e */
    private Object f25213e;

    /* renamed from: f */
    final /* synthetic */ og3 f25214f;

    public kg3(og3 og3Var, Comparable comparable, Object obj) {
        this.f25214f = og3Var;
        this.f25212d = comparable;
        this.f25213e = obj;
    }

    /* renamed from: d */
    private static final boolean m13911d(Object obj, Object obj2) {
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
    public final Comparable m13912a() {
        return this.f25212d;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(kg3 kg3Var) {
        return this.f25212d.compareTo(kg3Var.f25212d);
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
        return m13911d(this.f25212d, entry.getKey()) && m13911d(this.f25213e, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f25212d;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f25213e;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f25212d;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f25213e;
        if (obj != null) {
            i = obj.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f25214f.m12659m();
        Object obj2 = this.f25213e;
        this.f25213e = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f25212d);
        String valueOf2 = String.valueOf(this.f25213e);
        StringBuilder sb = new StringBuilder(valueOf.length() + 1 + valueOf2.length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
