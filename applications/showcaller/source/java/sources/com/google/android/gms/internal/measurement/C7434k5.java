package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.k5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/k5.class */
final class C7434k5 {

    /* renamed from: a */
    private final Object f34569a;

    /* renamed from: b */
    private final int f34570b;

    public C7434k5(Object obj, int i) {
        this.f34569a = obj;
        this.f34570b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C7434k5)) {
            return false;
        }
        C7434k5 c7434k5 = (C7434k5) obj;
        return this.f34569a == c7434k5.f34569a && this.f34570b == c7434k5.f34570b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f34569a) * 65535) + this.f34570b;
    }
}
