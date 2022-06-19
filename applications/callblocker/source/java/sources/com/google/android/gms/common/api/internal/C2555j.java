package com.google.android.gms.common.api.internal;
/* renamed from: com.google.android.gms.common.api.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/j.class */
public final class C2555j<L> {

    /* renamed from: a */
    private volatile L f7214a;

    /* renamed from: com.google.android.gms.common.api.internal.j$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/j$a.class */
    public static final class C2556a<L> {

        /* renamed from: a */
        private final L f7215a;

        /* renamed from: b */
        private final String f7216b;

        public final boolean equals(Object obj) {
            boolean z = true;
            if (this != obj) {
                if (!(obj instanceof C2556a)) {
                    z = false;
                } else {
                    C2556a c2556a = (C2556a) obj;
                    if (this.f7215a != c2556a.f7215a || !this.f7216b.equals(c2556a.f7216b)) {
                        z = false;
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.f7215a) * 31) + this.f7216b.hashCode();
        }
    }

    /* renamed from: a */
    public final void m14239a() {
        this.f7214a = null;
    }
}
