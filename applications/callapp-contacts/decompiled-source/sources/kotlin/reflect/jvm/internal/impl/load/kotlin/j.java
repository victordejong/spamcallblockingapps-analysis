package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/j.class */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    public static final b f38078a = new b(null);

    /* renamed from: b  reason: collision with root package name */
    private static final d f38079b = new d(kotlin.reflect.jvm.internal.impl.resolve.c.d.BOOLEAN);

    /* renamed from: c  reason: collision with root package name */
    private static final d f38080c = new d(kotlin.reflect.jvm.internal.impl.resolve.c.d.CHAR);

    /* renamed from: d  reason: collision with root package name */
    private static final d f38081d = new d(kotlin.reflect.jvm.internal.impl.resolve.c.d.BYTE);
    private static final d e = new d(kotlin.reflect.jvm.internal.impl.resolve.c.d.SHORT);
    private static final d f = new d(kotlin.reflect.jvm.internal.impl.resolve.c.d.INT);
    private static final d g = new d(kotlin.reflect.jvm.internal.impl.resolve.c.d.FLOAT);
    private static final d h = new d(kotlin.reflect.jvm.internal.impl.resolve.c.d.LONG);
    private static final d i = new d(kotlin.reflect.jvm.internal.impl.resolve.c.d.DOUBLE);

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/j$a.class */
    public static final class a extends j {

        /* renamed from: b  reason: collision with root package name */
        final j f38082b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(j elementType) {
            super(null);
            p.d(elementType, "elementType");
            this.f38082b = elementType;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/j$b.class */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/j$c.class */
    public static final class c extends j {

        /* renamed from: b  reason: collision with root package name */
        final String f38083b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String internalName) {
            super(null);
            p.d(internalName, "internalName");
            this.f38083b = internalName;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/j$d.class */
    public static final class d extends j {

        /* renamed from: b  reason: collision with root package name */
        final kotlin.reflect.jvm.internal.impl.resolve.c.d f38084b;

        public d(kotlin.reflect.jvm.internal.impl.resolve.c.d dVar) {
            super(null);
            this.f38084b = dVar;
        }
    }

    private j() {
    }

    public /* synthetic */ j(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public String toString() {
        return l.f38085a.a2(this);
    }
}
