package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.C18399h;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18282n;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19039b;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AbstractC19781g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.ae */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ae.class */
public class C19148ae extends AbstractC19152af implements AbstractC19050ba {

    /* renamed from: a */
    public static final C19149a f64899a = new C19149a(null);

    /* renamed from: b */
    private final int f64900b;

    /* renamed from: e */
    private final boolean f64901e;

    /* renamed from: f */
    private final boolean f64902f;

    /* renamed from: g */
    private final boolean f64903g;

    /* renamed from: h */
    private final KotlinType f64904h;

    /* renamed from: i */
    private final AbstractC19050ba f64905i;

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.ae$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ae$a.class */
    public static final class C19149a {
        private C19149a() {
        }

        public /* synthetic */ C19149a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.ae$b */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ae$b.class */
    public static final class C19150b extends C19148ae {

        /* renamed from: b */
        private final Lazy f64906b;

        /* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.ae$b$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ae$b$a.class */
        static final class C19151a extends AbstractC18526r implements Function0<List<? extends AbstractC19052bc>> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C19151a() {
                super(0);
                C19150b.this = r4;
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends AbstractC19052bc> invoke() {
                return C19150b.this.m2602m();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19150b(AbstractC18973a containingDeclaration, AbstractC19050ba abstractC19050ba, int i, AbstractC18983g annotations, C18966e name, KotlinType outType, boolean z, boolean z2, boolean z3, KotlinType kotlinType, AbstractC19026at source, Function0<? extends List<? extends AbstractC19052bc>> destructuringVariables) {
            super(containingDeclaration, abstractC19050ba, i, annotations, name, outType, z, z2, z3, kotlinType, source);
            C18524p.m3840d(containingDeclaration, "containingDeclaration");
            C18524p.m3840d(annotations, "annotations");
            C18524p.m3840d(name, "name");
            C18524p.m3840d(outType, "outType");
            C18524p.m3840d(source, "source");
            C18524p.m3840d(destructuringVariables, "destructuringVariables");
            this.f64906b = C18399h.m3897a(destructuringVariables);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.C19148ae, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba
        /* renamed from: a */
        public final AbstractC19050ba mo2603a(AbstractC18973a newOwner, C18966e newName, int i) {
            C18524p.m3840d(newOwner, "newOwner");
            C18524p.m3840d(newName, "newName");
            AbstractC18983g annotations = getAnnotations();
            C18524p.m3843b(annotations, "annotations");
            KotlinType type = mo2593g();
            C18524p.m3843b(type, "type");
            boolean c = mo2609c();
            boolean f = mo2606f();
            boolean h = mo2605h();
            KotlinType d = mo2608d();
            AbstractC19026at NO_SOURCE = AbstractC19026at.f64759a;
            C18524p.m3843b(NO_SOURCE, "NO_SOURCE");
            return new C19150b(newOwner, null, i, annotations, newName, type, c, f, h, d, NO_SOURCE, new C19151a());
        }

        /* renamed from: m */
        public final List<AbstractC19052bc> m2602m() {
            return (List) this.f64906b.mo1102a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19148ae(AbstractC18973a containingDeclaration, AbstractC19050ba abstractC19050ba, int i, AbstractC18983g annotations, C18966e name, KotlinType outType, boolean z, boolean z2, boolean z3, KotlinType kotlinType, AbstractC19026at source) {
        super(containingDeclaration, annotations, name, outType, source);
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(outType, "outType");
        C18524p.m3840d(source, "source");
        this.f64900b = i;
        this.f64901e = z;
        this.f64902f = z2;
        this.f64903g = z3;
        this.f64904h = kotlinType;
        this.f64905i = abstractC19050ba == null ? this : abstractC19050ba;
    }

    /* renamed from: a */
    public static final C19148ae m2611a(AbstractC18973a containingDeclaration, AbstractC19050ba abstractC19050ba, int i, AbstractC18983g annotations, C18966e name, KotlinType outType, boolean z, boolean z2, boolean z3, KotlinType kotlinType, AbstractC19026at source, Function0<? extends List<? extends AbstractC19052bc>> function0) {
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        C18524p.m3840d(annotations, "annotations");
        C18524p.m3840d(name, "name");
        C18524p.m3840d(outType, "outType");
        C18524p.m3840d(source, "source");
        return function0 == null ? new C19148ae(containingDeclaration, abstractC19050ba, i, annotations, name, outType, z, z2, z3, kotlinType, source) : new C19150b(containingDeclaration, abstractC19050ba, i, annotations, name, outType, z, z2, z3, kotlinType, source, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba
    /* renamed from: a */
    public final AbstractC18973a mo2612a() {
        return (AbstractC18973a) super.getContainingDeclaration();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba
    /* renamed from: a */
    public AbstractC19050ba mo2603a(AbstractC18973a newOwner, C18966e newName, int i) {
        C18524p.m3840d(newOwner, "newOwner");
        C18524p.m3840d(newName, "newName");
        AbstractC18983g annotations = getAnnotations();
        C18524p.m3843b(annotations, "annotations");
        KotlinType type = mo2593g();
        C18524p.m3843b(type, "type");
        boolean mo2609c = mo2609c();
        boolean z = this.f64902f;
        boolean z2 = this.f64903g;
        KotlinType kotlinType = this.f64904h;
        AbstractC19026at NO_SOURCE = AbstractC19026at.f64759a;
        C18524p.m3843b(NO_SOURCE, "NO_SOURCE");
        return new C19148ae(newOwner, null, i, annotations, newName, type, mo2609c, z, z2, kotlinType, NO_SOURCE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public <R, D> R accept(AbstractC19195m<R, D> visitor, D d) {
        C18524p.m3840d(visitor, "visitor");
        return visitor.mo2379a((AbstractC19050ba) this, (C19148ae) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc
    public final boolean at_() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba
    /* renamed from: b */
    public final int mo2610b() {
        return this.f64900b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba
    /* renamed from: c */
    public final boolean mo2609c() {
        return this.f64901e && ((AbstractC19039b) ((AbstractC18973a) super.getContainingDeclaration())).getKind().isReal();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba
    /* renamed from: d */
    public final KotlinType mo2608d() {
        return this.f64904h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba
    /* renamed from: e */
    public final AbstractC19050ba mo2599n() {
        AbstractC19050ba abstractC19050ba = this.f64905i;
        return abstractC19050ba == this ? this : abstractC19050ba.mo2607e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba
    /* renamed from: f */
    public final boolean mo2606f() {
        return this.f64902f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19163i, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public /* bridge */ /* synthetic */ AbstractC19193k getContainingDeclaration() {
        return (AbstractC18973a) super.getContainingDeclaration();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19152af, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18973a
    public Collection<AbstractC19050ba> getOverriddenDescriptors() {
        Collection<? extends AbstractC18973a> overriddenDescriptors = ((AbstractC18973a) super.getContainingDeclaration()).getOverriddenDescriptors();
        C18524p.m3843b(overriddenDescriptors, "containingDeclaration.overriddenDescriptors");
        Collection<? extends AbstractC18973a> collection = overriddenDescriptors;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(collection, 10));
        for (AbstractC18973a abstractC18973a : collection) {
            arrayList.add(abstractC18973a.getValueParameters().get(this.f64900b));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public AbstractC19213s getVisibility() {
        AbstractC19213s LOCAL = C19200r.f65007f;
        C18524p.m3843b(LOCAL, "LOCAL");
        return LOCAL;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19050ba
    /* renamed from: h */
    public final boolean mo2605h() {
        return this.f64903g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ AbstractC19781g mo2596j() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19052bc
    /* renamed from: l */
    public final boolean mo2604l() {
        C18524p.m3840d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19030av
    public /* synthetic */ AbstractC18973a substitute(TypeSubstitutor substitutor) {
        C18524p.m3840d(substitutor, "substitutor");
        if (substitutor.isEmpty()) {
            return this;
        }
        throw new UnsupportedOperationException();
    }
}
