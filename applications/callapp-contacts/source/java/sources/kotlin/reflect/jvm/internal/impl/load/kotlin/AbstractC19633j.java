package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.p565c.EnumC19767d;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.j */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/j.class */
public abstract class AbstractC19633j {

    /* renamed from: a */
    public static final C19635b f65742a = new C19635b(null);

    /* renamed from: b */
    private static final C19637d f65743b = new C19637d(EnumC19767d.BOOLEAN);

    /* renamed from: c */
    private static final C19637d f65744c = new C19637d(EnumC19767d.CHAR);

    /* renamed from: d */
    private static final C19637d f65745d = new C19637d(EnumC19767d.BYTE);

    /* renamed from: e */
    private static final C19637d f65746e = new C19637d(EnumC19767d.SHORT);

    /* renamed from: f */
    private static final C19637d f65747f = new C19637d(EnumC19767d.INT);

    /* renamed from: g */
    private static final C19637d f65748g = new C19637d(EnumC19767d.FLOAT);

    /* renamed from: h */
    private static final C19637d f65749h = new C19637d(EnumC19767d.LONG);

    /* renamed from: i */
    private static final C19637d f65750i = new C19637d(EnumC19767d.DOUBLE);

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.j$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/j$a.class */
    public static final class C19634a extends AbstractC19633j {

        /* renamed from: b */
        final AbstractC19633j f65751b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19634a(AbstractC19633j elementType) {
            super(null);
            C18524p.m3840d(elementType, "elementType");
            this.f65751b = elementType;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.j$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/j$b.class */
    public static final class C19635b {
        private C19635b() {
        }

        public /* synthetic */ C19635b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.j$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/j$c.class */
    public static final class C19636c extends AbstractC19633j {

        /* renamed from: b */
        final String f65752b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19636c(String internalName) {
            super(null);
            C18524p.m3840d(internalName, "internalName");
            this.f65752b = internalName;
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.j$d */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/j$d.class */
    public static final class C19637d extends AbstractC19633j {

        /* renamed from: b */
        final EnumC19767d f65753b;

        public C19637d(EnumC19767d enumC19767d) {
            super(null);
            this.f65753b = enumC19767d;
        }
    }

    private AbstractC19633j() {
    }

    public /* synthetic */ AbstractC19633j(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public String toString() {
        return C19639l.f65754a.m1888a(this);
    }
}
