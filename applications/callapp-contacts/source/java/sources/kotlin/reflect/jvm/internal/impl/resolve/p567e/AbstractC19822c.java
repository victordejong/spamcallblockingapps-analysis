package kotlin.reflect.jvm.internal.impl.resolve.p567e;

import kotlin.reflect.jvm.internal.impl.resolve.p567e.C19825d;
/* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.c */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/c.class */
public abstract class AbstractC19822c {

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/c$a.class */
    public static final class C19823a extends AbstractC19822c {

        /* renamed from: a */
        public static final C19823a f65991a = new C19823a();

        /* renamed from: b */
        private static final int f65992b;

        static {
            int i;
            int i2;
            int i3;
            C19825d.C19826a c19826a = C19825d.f65994a;
            i = C19825d.f66012u;
            C19825d.C19826a c19826a2 = C19825d.f65994a;
            i2 = C19825d.f66010s;
            C19825d.C19826a c19826a3 = C19825d.f65994a;
            i3 = C19825d.f66011t;
            f65992b = i & ((i2 | i3) ^ (-1));
        }

        private C19823a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19822c
        /* renamed from: a */
        public final int mo1430a() {
            return f65992b;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.e.c$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/c$b.class */
    public static final class C19824b extends AbstractC19822c {

        /* renamed from: a */
        public static final C19824b f65993a = new C19824b();

        private C19824b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19822c
        /* renamed from: a */
        public final int mo1430a() {
            return 0;
        }
    }

    /* renamed from: a */
    public abstract int mo1430a();

    public String toString() {
        return getClass().getSimpleName();
    }
}
