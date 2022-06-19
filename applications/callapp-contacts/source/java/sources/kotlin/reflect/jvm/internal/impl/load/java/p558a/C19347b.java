package kotlin.reflect.jvm.internal.impl.load.java.p558a;

import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18247ai;
import kotlin.p518a.C18282n;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.C19501g;
import kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19377i;
import kotlin.reflect.jvm.internal.impl.load.java.p560c.AbstractC19385a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19389a;
import kotlin.reflect.jvm.internal.impl.load.java.p561d.AbstractC19393b;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.C19301m;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.b */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/b.class */
public class C19347b implements AbstractC18977c, AbstractC19377i {

    /* renamed from: a */
    static final /* synthetic */ KProperty<Object>[] f65237a = {C18496ac.m3883a(new C18489aa(C18496ac.m3882b(C19347b.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;"))};

    /* renamed from: b */
    final C18961b f65238b;

    /* renamed from: c */
    final AbstractC19393b f65239c;

    /* renamed from: d */
    private final AbstractC19026at f65240d;

    /* renamed from: e */
    private final AbstractC19296i f65241e;

    /* renamed from: f */
    private final boolean f65242f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.load.java.a.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/a/b$a.class */
    public static final class C19348a extends AbstractC18526r implements Function0<SimpleType> {

        /* renamed from: a */
        final /* synthetic */ C19501g f65243a;

        /* renamed from: b */
        final /* synthetic */ C19347b f65244b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C19348a(C19501g c19501g, C19347b c19347b) {
            super(0);
            this.f65243a = c19501g;
            this.f65244b = c19347b;
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ SimpleType invoke() {
            SimpleType defaultType = this.f65243a.f65480a.f65332o.getBuiltIns().m2830a(this.f65244b.f65238b).getDefaultType();
            C18524p.m3843b(defaultType, "c.module.builtIns.getBuiltInClassByFqName(fqName).defaultType");
            return defaultType;
        }
    }

    public C19347b(C19501g c, AbstractC19389a abstractC19389a, C18961b fqName) {
        AbstractC19026at NO_SOURCE;
        C18524p.m3840d(c, "c");
        C18524p.m3840d(fqName, "fqName");
        this.f65238b = fqName;
        AbstractC19385a mo2236a = abstractC19389a == null ? null : c.f65480a.f65327j.mo2236a(abstractC19389a);
        if (mo2236a == null) {
            NO_SOURCE = AbstractC19026at.f64759a;
            C18524p.m3843b(NO_SOURCE, "NO_SOURCE");
        } else {
            NO_SOURCE = mo2236a;
        }
        this.f65240d = NO_SOURCE;
        this.f65241e = c.f65480a.f65318a.mo2313a(new C19348a(c, this));
        this.f65239c = abstractC19389a == null ? null : (AbstractC19393b) C18282n.m4142b((Iterable<? extends Object>) abstractC19389a.mo2230a());
        this.f65242f = C18524p.m3850a(abstractC19389a == null ? null : Boolean.valueOf(abstractC19389a.mo2227d()), Boolean.TRUE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ KotlinType mo2043a() {
        return (SimpleType) C19301m.m2316a(this.f65241e, f65237a[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: b */
    public final C18961b mo2042b() {
        return this.f65238b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: c */
    public Map<C18966e, AbstractC19781g<?>> mo2041c() {
        return C18247ai.m4257a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18977c
    /* renamed from: d */
    public final AbstractC19026at mo2040d() {
        return this.f65240d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.p559b.AbstractC19377i
    /* renamed from: e */
    public final boolean mo2133e() {
        return this.f65242f;
    }
}
