package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfn.class */
public final class dfn implements Comparable<dfn>, Map.Entry<K, V> {

    /* renamed from: a */
    private final Comparable f14216a;

    /* renamed from: b */
    private V f14217b;

    /* renamed from: c */
    private final /* synthetic */ dfe f14218c;

    /* JADX WARN: Multi-variable type inference failed */
    public dfn(dfe dfeVar, K k, V v) {
        this.f14218c = dfeVar;
        this.f14216a = k;
        this.f14217b = v;
    }

    public dfn(dfe dfeVar, Map.Entry<K, V> entry) {
        this(dfeVar, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    private static boolean m9759a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(dfn dfnVar) {
        return ((Comparable) getKey()).compareTo((Comparable) dfnVar.getKey());
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (!(obj instanceof Map.Entry)) {
                z = false;
            } else {
                Map.Entry entry = (Map.Entry) obj;
                if (!m9759a(this.f14216a, entry.getKey()) || !m9759a(this.f14217b, entry.getValue())) {
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f14216a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f14217b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int i = 0;
        int hashCode = this.f14216a == null ? 0 : this.f14216a.hashCode();
        if (this.f14217b != 0) {
            i = this.f14217b.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f14218c.m9822f();
        V v2 = this.f14217b;
        this.f14217b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f14216a);
        String valueOf2 = String.valueOf(this.f14217b);
        return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("=").append(valueOf2).toString();
    }
}
