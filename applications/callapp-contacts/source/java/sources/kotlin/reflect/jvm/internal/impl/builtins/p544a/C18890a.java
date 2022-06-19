package kotlin.reflect.jvm.internal.impl.builtins.p544a;

import java.util.List;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19020aq;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19219w;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.C19142aa;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19828e;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/a.class */
public final class C18890a extends AbstractC19828e {

    /* renamed from: a */
    public static final C18891a f64446a = new C18891a(null);

    /* renamed from: d */
    private static final C18966e f64447d;

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.a.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/a/a$a.class */
    public static final class C18891a {
        private C18891a() {
        }

        public /* synthetic */ C18891a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        C18966e m2719a = C18966e.m2719a("clone");
        C18524p.m3843b(m2719a, "identifier(\"clone\")");
        f64447d = m2719a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18890a(AbstractC19302n storageManager, AbstractC19070d containingClass) {
        super(storageManager, containingClass);
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(containingClass, "containingClass");
    }

    /* renamed from: b */
    public static final /* synthetic */ C18966e m2912b() {
        return f64447d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19828e
    /* renamed from: a */
    public final List<AbstractC19219w> mo1417a() {
        AbstractC19070d abstractC19070d = this.f66024c;
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        C19142aa create = C19142aa.create(abstractC19070d, AbstractC18983g.C18984a.m2705a(), f64447d, AbstractC19039b.EnumC19040a.DECLARATION, AbstractC19026at.f64759a);
        create.initialize((AbstractC19020aq) null, this.f66024c.getThisAsReceiverParameter(), (List<? extends TypeParameterDescriptor>) C18297z.f63400a, (List<AbstractC19050ba>) C18297z.f63400a, (KotlinType) C19756a.m1526d(this.f66024c).m2798g(), EnumC19222y.OPEN, C19200r.f65004c);
        return C18282n.m4176a(create);
    }
}
