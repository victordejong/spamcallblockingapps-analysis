package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.Set;
import kotlin.C18399h;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18255ap;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/h.class */
public enum EnumC18946h {
    BOOLEAN("Boolean"),
    CHAR("Char"),
    BYTE("Byte"),
    SHORT("Short"),
    INT("Int"),
    FLOAT("Float"),
    LONG("Long"),
    DOUBLE("Double");
    
    public static final C18947a Companion = new C18947a(null);
    private final C18966e arrayTypeName;
    private final C18966e typeName;
    public static final Set<EnumC18946h> NUMBER_TYPES = C18255ap.m4239a((Object[]) new EnumC18946h[]{CHAR, BYTE, SHORT, INT, FLOAT, LONG, DOUBLE});
    private final Lazy typeFqName$delegate = C18399h.m3896a(EnumC18536l.PUBLICATION, new C18949c());
    private final Lazy arrayTypeFqName$delegate = C18399h.m3896a(EnumC18536l.PUBLICATION, new C18948b());

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.h$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/h$a.class */
    public static final class C18947a {
        private C18947a() {
        }

        public /* synthetic */ C18947a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.h$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/h$b.class */
    public static final class C18948b extends AbstractC18526r implements Function0<C18961b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18948b() {
            super(0);
            EnumC18946h.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C18961b invoke() {
            C18961b m2744a = C18954j.f64583m.m2744a(EnumC18946h.this.getArrayTypeName());
            C18524p.m3843b(m2744a, "BUILT_INS_PACKAGE_FQ_NAME.child(arrayTypeName)");
            return m2744a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.h$c */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/h$c.class */
    public static final class C18949c extends AbstractC18526r implements Function0<C18961b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C18949c() {
            super(0);
            EnumC18946h.this = r4;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ C18961b invoke() {
            C18961b m2744a = C18954j.f64583m.m2744a(EnumC18946h.this.getTypeName());
            C18524p.m3843b(m2744a, "BUILT_INS_PACKAGE_FQ_NAME.child(this.typeName)");
            return m2744a;
        }
    }

    EnumC18946h(String str) {
        C18966e m2719a = C18966e.m2719a(str);
        C18524p.m3843b(m2719a, "identifier(typeName)");
        this.typeName = m2719a;
        C18966e m2719a2 = C18966e.m2719a(C18524p.m3847a(str, (Object) "Array"));
        C18524p.m3843b(m2719a2, "identifier(\"${typeName}Array\")");
        this.arrayTypeName = m2719a2;
    }

    public final C18961b getArrayTypeFqName() {
        return (C18961b) this.arrayTypeFqName$delegate.mo1102a();
    }

    public final C18966e getArrayTypeName() {
        return this.arrayTypeName;
    }

    public final C18961b getTypeFqName() {
        return (C18961b) this.typeFqName$delegate.mo1102a();
    }

    public final C18966e getTypeName() {
        return this.typeName;
    }
}
