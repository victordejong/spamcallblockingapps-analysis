package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.Set;
import kotlin.Lazy;
import kotlin.a.ap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.c.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/h.class */
public enum h {
    BOOLEAN("Boolean"),
    CHAR("Char"),
    BYTE("Byte"),
    SHORT("Short"),
    INT("Int"),
    FLOAT("Float"),
    LONG("Long"),
    DOUBLE("Double");
    
    public static final a Companion = new a(null);
    private final e arrayTypeName;
    private final e typeName;
    public static final Set<h> NUMBER_TYPES = ap.a((Object[]) new h[]{CHAR, BYTE, SHORT, INT, FLOAT, LONG, DOUBLE});
    private final Lazy typeFqName$delegate = kotlin.h.a(l.PUBLICATION, new c());
    private final Lazy arrayTypeFqName$delegate = kotlin.h.a(l.PUBLICATION, new b());

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/h$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/h$b.class */
    static final class b extends r implements Function0<kotlin.reflect.jvm.internal.impl.c.b> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.b invoke() {
            kotlin.reflect.jvm.internal.impl.c.b a2 = j.m.a(h.this.getArrayTypeName());
            p.b(a2, "BUILT_INS_PACKAGE_FQ_NAME.child(arrayTypeName)");
            return a2;
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/h$c.class */
    static final class c extends r implements Function0<kotlin.reflect.jvm.internal.impl.c.b> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.c.b invoke() {
            kotlin.reflect.jvm.internal.impl.c.b a2 = j.m.a(h.this.getTypeName());
            p.b(a2, "BUILT_INS_PACKAGE_FQ_NAME.child(this.typeName)");
            return a2;
        }
    }

    h(String str) {
        e a2 = e.a(str);
        p.b(a2, "identifier(typeName)");
        this.typeName = a2;
        e a3 = e.a(p.a(str, (Object) "Array"));
        p.b(a3, "identifier(\"${typeName}Array\")");
        this.arrayTypeName = a3;
    }

    public final kotlin.reflect.jvm.internal.impl.c.b getArrayTypeFqName() {
        return (kotlin.reflect.jvm.internal.impl.c.b) this.arrayTypeFqName$delegate.a();
    }

    public final e getArrayTypeName() {
        return this.arrayTypeName;
    }

    public final kotlin.reflect.jvm.internal.impl.c.b getTypeFqName() {
        return (kotlin.reflect.jvm.internal.impl.c.b) this.typeFqName$delegate.a();
    }

    public final e getTypeName() {
        return this.typeName;
    }
}
