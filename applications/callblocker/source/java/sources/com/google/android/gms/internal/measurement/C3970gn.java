package com.google.android.gms.internal.measurement;

import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.gn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/gn.class */
public final class C3970gn implements Comparable<C3970gn>, Map.Entry<K, V> {

    /* renamed from: a */
    private final Comparable f18220a;

    /* renamed from: b */
    private V f18221b;

    /* renamed from: c */
    private final /* synthetic */ C3965gi f18222c;

    /* JADX WARN: Multi-variable type inference failed */
    public C3970gn(C3965gi c3965gi, K k, V v) {
        this.f18222c = c3965gi;
        this.f18220a = k;
        this.f18221b = v;
    }

    public C3970gn(C3965gi c3965gi, Map.Entry<K, V> entry) {
        this(c3965gi, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    private static boolean m5343a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C3970gn c3970gn) {
        return ((Comparable) getKey()).compareTo((Comparable) c3970gn.getKey());
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (!(obj instanceof Map.Entry)) {
                z = false;
            } else {
                Map.Entry entry = (Map.Entry) obj;
                if (!m5343a(this.f18220a, entry.getKey()) || !m5343a(this.f18221b, entry.getValue())) {
                    z = false;
                }
            }
        }
        return z;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f18220a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f18221b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int i = 0;
        int hashCode = this.f18220a == null ? 0 : this.f18220a.hashCode();
        if (this.f18221b != 0) {
            i = this.f18221b.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f18222c.m5348f();
        V v2 = this.f18221b;
        this.f18221b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f18220a);
        String valueOf2 = String.valueOf(this.f18221b);
        return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("=").append(valueOf2).toString();
    }
}
