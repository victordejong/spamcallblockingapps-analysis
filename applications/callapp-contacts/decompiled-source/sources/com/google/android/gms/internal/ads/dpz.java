package com.google.android.gms.internal.ads;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Incorrect field signature: TK; */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpz.class */
public final class dpz implements Comparable<dpz>, Map.Entry<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final Comparable f27093a;

    /* renamed from: b  reason: collision with root package name */
    private V f27094b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ dpu f27095c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public dpz(dpu dpuVar, K k, V v) {
        this.f27095c = dpuVar;
        this.f27093a = k;
        this.f27094b = v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public dpz(dpu dpuVar, Map.Entry<K, V> entry) {
        this(dpuVar, (Comparable) entry.getKey(), entry.getValue());
    }

    private static boolean a(Object obj, Object obj2) {
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
        return a(this.f27093a, entry.getKey()) && a(this.f27094b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f27093a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f27094b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f27093a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f27094b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f27095c.f();
        V v2 = this.f27094b;
        this.f27094b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f27093a);
        String valueOf2 = String.valueOf(this.f27094b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
