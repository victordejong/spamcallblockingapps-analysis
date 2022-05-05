package com.google.a.a;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/a/a/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final b f3673a = b.a(",");

    /* loaded from: classes-dex2jar.jar:com/google/a/a/f$a.class */
    private static final class a implements e<Object>, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f3674a;

        private a(Class<?> cls) {
            this.f3674a = (Class) d.a(cls);
        }

        /* synthetic */ a(Class cls, byte b2) {
            this(cls);
        }

        @Override // com.google.a.a.e
        public final boolean a(Object obj) {
            return this.f3674a.isInstance(obj);
        }

        public final boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof a) {
                z = false;
                if (this.f3674a == ((a) obj).f3674a) {
                    z = true;
                }
            }
            return z;
        }

        public final int hashCode() {
            return this.f3674a.hashCode();
        }

        public final String toString() {
            return "IsInstanceOf(" + this.f3674a.getName() + ")";
        }
    }

    public static e<Object> a(Class<?> cls) {
        return new a(cls, (byte) 0);
    }
}
