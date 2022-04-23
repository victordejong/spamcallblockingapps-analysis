package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.a.n;
import kotlin.h;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.ba;
import kotlin.reflect.jvm.internal.impl.descriptors.bc;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ae.class */
public class ae extends af implements ba {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37521a = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final int f37522b;
    private final boolean e;
    private final boolean f;
    private final boolean g;
    private final KotlinType h;
    private final ba i;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ae$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ae$b.class */
    public static final class b extends ae {

        /* renamed from: b  reason: collision with root package name */
        private final Lazy f37523b;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/ae$b$a.class */
        static final class a extends r implements Function0<List<? extends bc>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ List<? extends bc> invoke() {
                return b.this.m();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(kotlin.reflect.jvm.internal.impl.descriptors.a containingDeclaration, ba baVar, int i, g annotations, e name, KotlinType outType, boolean z, boolean z2, boolean z3, KotlinType kotlinType, at source, Function0<? extends List<? extends bc>> destructuringVariables) {
            super(containingDeclaration, baVar, i, annotations, name, outType, z, z2, z3, kotlinType, source);
            p.d(containingDeclaration, "containingDeclaration");
            p.d(annotations, "annotations");
            p.d(name, "name");
            p.d(outType, "outType");
            p.d(source, "source");
            p.d(destructuringVariables, "destructuringVariables");
            this.f37523b = h.a(destructuringVariables);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ae, kotlin.reflect.jvm.internal.impl.descriptors.ba
        public final ba a(kotlin.reflect.jvm.internal.impl.descriptors.a newOwner, e newName, int i) {
            p.d(newOwner, "newOwner");
            p.d(newName, "newName");
            g annotations = getAnnotations();
            p.b(annotations, "annotations");
            KotlinType type = g();
            p.b(type, "type");
            boolean c2 = c();
            boolean f = f();
            boolean h = h();
            KotlinType d2 = d();
            at NO_SOURCE = at.f37401a;
            p.b(NO_SOURCE, "NO_SOURCE");
            return new b(newOwner, null, i, annotations, newName, type, c2, f, h, d2, NO_SOURCE, new a());
        }

        public final List<bc> m() {
            return (List) this.f37523b.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ae(kotlin.reflect.jvm.internal.impl.descriptors.a containingDeclaration, ae aeVar, int i, g annotations, e name, KotlinType outType, boolean z, boolean z2, boolean z3, KotlinType kotlinType, at source) {
        super(containingDeclaration, annotations, name, outType, source);
        p.d(containingDeclaration, "containingDeclaration");
        p.d(annotations, "annotations");
        p.d(name, "name");
        p.d(outType, "outType");
        p.d(source, "source");
        this.f37522b = i;
        this.e = z;
        this.f = z2;
        this.g = z3;
        this.h = kotlinType;
        this.i = aeVar == null ? this : aeVar;
    }

    public static final ae a(kotlin.reflect.jvm.internal.impl.descriptors.a containingDeclaration, ba baVar, int i, g annotations, e name, KotlinType outType, boolean z, boolean z2, boolean z3, KotlinType kotlinType, at source, Function0<? extends List<? extends bc>> function0) {
        p.d(containingDeclaration, "containingDeclaration");
        p.d(annotations, "annotations");
        p.d(name, "name");
        p.d(outType, "outType");
        p.d(source, "source");
        return function0 == null ? new ae(containingDeclaration, baVar, i, annotations, name, outType, z, z2, z3, kotlinType, source) : new b(containingDeclaration, baVar, i, annotations, name, outType, z, z2, z3, kotlinType, source, function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ba
    public final kotlin.reflect.jvm.internal.impl.descriptors.a a() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.a) super.getContainingDeclaration();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ba
    public ba a(kotlin.reflect.jvm.internal.impl.descriptors.a newOwner, e newName, int i) {
        p.d(newOwner, "newOwner");
        p.d(newName, "newName");
        g annotations = getAnnotations();
        p.b(annotations, "annotations");
        KotlinType type = g();
        p.b(type, "type");
        boolean c2 = c();
        boolean z = this.f;
        boolean z2 = this.g;
        KotlinType kotlinType = this.h;
        at NO_SOURCE = at.f37401a;
        p.b(NO_SOURCE, "NO_SOURCE");
        return new ae(newOwner, null, i, annotations, newName, type, c2, z, z2, kotlinType, NO_SOURCE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> visitor, D d2) {
        p.d(visitor, "visitor");
        return visitor.a((ba) this, (ae) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.bc
    public final boolean at_() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ba
    public final int b() {
        return this.f37522b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ba
    public final boolean c() {
        return this.e && ((kotlin.reflect.jvm.internal.impl.descriptors.b) ((kotlin.reflect.jvm.internal.impl.descriptors.a) super.getContainingDeclaration())).getKind().isReal();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ba
    public final KotlinType d() {
        return this.h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ba
    /* renamed from: e */
    public final ba n() {
        ba baVar = this.i;
        return baVar == this ? this : baVar.e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ba
    public final boolean f() {
        return this.f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.k
    public /* bridge */ /* synthetic */ k getContainingDeclaration() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.a) super.getContainingDeclaration();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.af, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<ba> getOverriddenDescriptors() {
        Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.a> overriddenDescriptors = ((kotlin.reflect.jvm.internal.impl.descriptors.a) super.getContainingDeclaration()).getOverriddenDescriptors();
        p.b(overriddenDescriptors, "containingDeclaration.overriddenDescriptors");
        Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.a> collection = overriddenDescriptors;
        ArrayList arrayList = new ArrayList(n.a(collection, 10));
        for (kotlin.reflect.jvm.internal.impl.descriptors.a aVar : collection) {
            arrayList.add(aVar.getValueParameters().get(this.f37522b));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public s getVisibility() {
        s LOCAL = kotlin.reflect.jvm.internal.impl.descriptors.r.f;
        p.b(LOCAL, "LOCAL");
        return LOCAL;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ba
    public final boolean h() {
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.bc
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.resolve.constants.g j() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.bc
    public final boolean l() {
        p.d(this, "this");
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.av
    public /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.a substitute(TypeSubstitutor substitutor) {
        p.d(substitutor, "substitutor");
        if (substitutor.isEmpty()) {
            return this;
        }
        throw new UnsupportedOperationException();
    }
}
