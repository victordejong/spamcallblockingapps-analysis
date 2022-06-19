package com.google.android.gms.common.api.internal;
/* renamed from: com.google.android.gms.common.api.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/i.class */
public final class C6034i<L> {

    /* renamed from: a */
    private final L f19293a;

    /* renamed from: b */
    private final String f19294b;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6034i)) {
            return false;
        }
        C6034i c6034i = (C6034i) obj;
        return this.f19293a == c6034i.f19293a && this.f19294b.equals(c6034i.f19294b);
    }

    public int hashCode() {
        return (System.identityHashCode(this.f19293a) * 31) + this.f19294b.hashCode();
    }
}
