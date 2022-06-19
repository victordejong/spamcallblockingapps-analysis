package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpz.class */
public final class dpz implements Comparable<dpz>, Map.Entry<K, V> {

    /* renamed from: a */
    private final Comparable f47403a;

    /* renamed from: b */
    private V f47404b;

    /* renamed from: c */
    private final /* synthetic */ dpu f47405c;

    /* JADX WARN: Multi-variable type inference failed */
    public dpz(dpu dpuVar, K k, V v) {
        this.f47405c = dpuVar;
        this.f47403a = k;
        this.f47404b = v;
    }

    public dpz(dpu dpuVar, Map.Entry<K, V> entry) {
        this(dpuVar, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    private static boolean m16033a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(dpz dpzVar) {
        return ((Comparable) getKey()).compareTo((Comparable) dpzVar.getKey());
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
        return m16033a(this.f47403a, entry.getKey()) && m16033a(this.f47404b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f47403a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f47404b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f47403a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f47404b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f47405c.m16038f();
        V v2 = this.f47404b;
        this.f47404b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f47403a);
        String valueOf2 = String.valueOf(this.f47404b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
