package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/oe2.class */
public final class oe2 implements Map.Entry, Comparable<oe2> {

    /* renamed from: b */
    private final Comparable f7840b;

    /* renamed from: c */
    private Object f7841c;

    /* renamed from: d */
    final /* synthetic */ re2 f7842d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oe2(re2 re2Var, Comparable comparable, Object obj) {
        this.f7842d = re2Var;
        this.f7840b = comparable;
        this.f7841c = obj;
    }

    /* renamed from: e */
    private static final boolean m6335e(Object obj, Object obj2) {
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
    public final Comparable m6336a() {
        return this.f7840b;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(oe2 oe2Var) {
        return this.f7840b.compareTo(oe2Var.f7840b);
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
        return m6335e(this.f7840b, entry.getKey()) && m6335e(this.f7841c, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f7840b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f7841c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f7840b;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f7841c;
        if (obj != null) {
            i = obj.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f7842d.m5967m();
        Object obj2 = this.f7841c;
        this.f7841c = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f7840b);
        String valueOf2 = String.valueOf(this.f7841c);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
