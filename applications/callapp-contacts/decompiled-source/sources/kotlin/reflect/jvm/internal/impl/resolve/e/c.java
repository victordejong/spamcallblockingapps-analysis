package kotlin.reflect.jvm.internal.impl.resolve.e;

import kotlin.reflect.jvm.internal.impl.resolve.e.d;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/c.class */
public abstract class c {

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/c$a.class */
    public static final class a extends c {

        /* renamed from: a  reason: collision with root package name */
        public static final a f38276a = new a();

        /* renamed from: b  reason: collision with root package name */
        private static final int f38277b;

        static {
            int i;
            int i2;
            int i3;
            d.a aVar = d.f38279a;
            i = d.u;
            d.a aVar2 = d.f38279a;
            i2 = d.s;
            d.a aVar3 = d.f38279a;
            i3 = d.t;
            f38277b = i & ((i2 | i3) ^ (-1));
        }

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.c
        public final int a() {
            return f38277b;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/resolve/e/c$b.class */
    public static final class b extends c {

        /* renamed from: a  reason: collision with root package name */
        public static final b f38278a = new b();

        private b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.e.c
        public final int a() {
            return 0;
        }
    }

    public abstract int a();

    public String toString() {
        return getClass().getSimpleName();
    }
}
