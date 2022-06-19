package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.C20128v;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.AbstractC18245ag;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.p530f.C18361c;
import kotlin.reflect.jvm.internal.impl.builtins.C18954j;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19065c;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19213s;
import kotlin.reflect.jvm.internal.impl.descriptors.C19200r;
import kotlin.reflect.jvm.internal.impl.descriptors.C19216v;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19127e;
import kotlin.reflect.jvm.internal.impl.descriptors.EnumC19222y;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19137a;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.p567e.AbstractC19834h;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor.class */
public final class FunctionClassDescriptor extends AbstractC19137a {

    /* renamed from: a */
    public static final C18931a f64523a = new C18931a(null);

    /* renamed from: i */
    private static final C18960a f64524i = new C18960a(C18954j.f64583m, C18966e.m2719a("Function"));

    /* renamed from: j */
    private static final C18960a f64525j = new C18960a(C18954j.f64580j, C18966e.m2719a("KFunction"));

    /* renamed from: b */
    final EnumC18933b f64526b;

    /* renamed from: c */
    final int f64527c;

    /* renamed from: d */
    private final AbstractC19302n f64528d;

    /* renamed from: e */
    private final AbstractC19006ae f64529e;

    /* renamed from: f */
    private final FunctionTypeConstructor f64530f = new FunctionTypeConstructor(this);

    /* renamed from: g */
    private final C18936c f64531g;

    /* renamed from: h */
    private final List<TypeParameterDescriptor> f64532h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor.class */
    public final class FunctionTypeConstructor extends AbstractClassTypeConstructor {
        final /* synthetic */ FunctionClassDescriptor this$0;

        /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassDescriptor$FunctionTypeConstructor$a */
        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor$a.class */
        public final /* synthetic */ class C18930a {

            /* renamed from: a */
            public static final /* synthetic */ int[] f64533a;

            static {
                int[] iArr = new int[EnumC18933b.values().length];
                iArr[EnumC18933b.Function.ordinal()] = 1;
                iArr[EnumC18933b.KFunction.ordinal()] = 2;
                iArr[EnumC18933b.SuspendFunction.ordinal()] = 3;
                iArr[EnumC18933b.KSuspendFunction.ordinal()] = 4;
                f64533a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FunctionTypeConstructor(FunctionClassDescriptor this$0) {
            super(this$0.f64528d);
            C18524p.m3840d(this$0, "this$0");
            this.this$0 = this$0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final Collection<KotlinType> computeSupertypes() {
            List list;
            int i = C18930a.f64533a[this.this$0.f64526b.ordinal()];
            if (i == 1) {
                list = C18282n.m4176a(FunctionClassDescriptor.f64524i);
            } else if (i == 2) {
                list = C18282n.m4167b((Object[]) new C18960a[]{FunctionClassDescriptor.f64525j, new C18960a(C18954j.f64583m, EnumC18933b.Function.numberedClassName(this.this$0.f64527c))});
            } else if (i == 3) {
                list = C18282n.m4176a(FunctionClassDescriptor.f64524i);
            } else if (i != 4) {
                throw new NoWhenBranchMatchedException();
            } else {
                list = C18282n.m4167b((Object[]) new C18960a[]{FunctionClassDescriptor.f64525j, new C18960a(C18954j.f64574d, EnumC18933b.SuspendFunction.numberedClassName(this.this$0.f64527c))});
            }
            AbstractC18999ab mo2543b = this.this$0.f64529e.mo2543b();
            List<C18960a> list2 = list;
            ArrayList arrayList = new ArrayList(C18282n.m4163a((Iterable) list2, 10));
            for (C18960a c18960a : list2) {
                AbstractC19070d m2497b = C19216v.m2497b(mo2543b, c18960a);
                if (m2497b == null) {
                    throw new IllegalStateException(("Built-in class " + c18960a + " not found").toString());
                }
                List<TypeParameterDescriptor> c = C18282n.m4129c(getParameters(), m2497b.getTypeConstructor().getParameters().size());
                ArrayList arrayList2 = new ArrayList(C18282n.m4163a((Iterable) c, 10));
                for (TypeParameterDescriptor typeParameterDescriptor : c) {
                    arrayList2.add(new TypeProjectionImpl(typeParameterDescriptor.getDefaultType()));
                }
                ArrayList arrayList3 = arrayList2;
                KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
                arrayList.add(KotlinTypeFactory.simpleNotNullType(AbstractC18983g.C18984a.m2705a(), m2497b, arrayList3));
            }
            return C18282n.m4118h((Iterable) arrayList);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final FunctionClassDescriptor getDeclarationDescriptor() {
            return this.this$0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List<TypeParameterDescriptor> getParameters() {
            return this.this$0.f64532h;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final AbstractC19031aw getSupertypeLoopChecker() {
            return AbstractC19031aw.C19032a.f64761a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean isDenotable() {
            return true;
        }

        public final String toString() {
            return getDeclarationDescriptor().toString();
        }
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassDescriptor$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$a.class */
    public static final class C18931a {
        private C18931a() {
        }

        public /* synthetic */ C18931a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionClassDescriptor(AbstractC19302n storageManager, AbstractC19006ae containingDeclaration, EnumC18933b functionKind, int i) {
        super(storageManager, functionKind.numberedClassName(i));
        C18524p.m3840d(storageManager, "storageManager");
        C18524p.m3840d(containingDeclaration, "containingDeclaration");
        C18524p.m3840d(functionKind, "functionKind");
        this.f64528d = storageManager;
        this.f64529e = containingDeclaration;
        this.f64526b = functionKind;
        this.f64527c = i;
        this.f64531g = new C18936c(storageManager, this);
        ArrayList arrayList = new ArrayList();
        C18361c c18361c = new C18361c(1, i);
        ArrayList arrayList2 = new ArrayList(C18282n.m4163a(c18361c, 10));
        Iterator<Integer> it2 = c18361c.iterator();
        while (it2.hasNext()) {
            m2848a(arrayList, this, Variance.IN_VARIANCE, C18524p.m3847a("P", (Object) Integer.valueOf(((AbstractC18245ag) it2).mo4059a())));
            arrayList2.add(C20128v.f66529a);
        }
        m2848a(arrayList, this, Variance.OUT_VARIANCE, "R");
        this.f64532h = C18282n.m4118h((Iterable) arrayList);
    }

    /* renamed from: a */
    private static final void m2848a(ArrayList<TypeParameterDescriptor> arrayList, FunctionClassDescriptor functionClassDescriptor, Variance variance, String str) {
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        arrayList.add(TypeParameterDescriptorImpl.createWithDefaultBound(functionClassDescriptor, AbstractC18983g.C18984a.m2705a(), false, variance, C18966e.m2719a(str), arrayList.size(), functionClassDescriptor.f64528d));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18975a
    public final AbstractC18983g getAnnotations() {
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        return AbstractC18983g.C18984a.m2705a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final /* bridge */ /* synthetic */ AbstractC19070d getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final /* bridge */ /* synthetic */ Collection getConstructors() {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19194l, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public final /* bridge */ /* synthetic */ AbstractC19193k getContainingDeclaration() {
        return this.f64529e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public final List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        return this.f64532h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final EnumC19127e getKind() {
        return EnumC19127e.INTERFACE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final EnumC19222y getModality() {
        return EnumC19222y.ABSTRACT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final /* bridge */ /* synthetic */ Collection getSealedSubclasses() {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n
    public final AbstractC19026at getSource() {
        AbstractC19026at NO_SOURCE = AbstractC19026at.f64759a;
        C18524p.m3843b(NO_SOURCE, "NO_SOURCE");
        return NO_SOURCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final /* bridge */ /* synthetic */ AbstractC19834h getStaticScope() {
        return AbstractC19834h.C19838c.f66035a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g
    public final TypeConstructor getTypeConstructor() {
        return this.f64530f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19179q
    public final /* synthetic */ AbstractC19834h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.f64531g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final /* bridge */ /* synthetic */ AbstractC19065c getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19197o, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final AbstractC19213s getVisibility() {
        AbstractC19213s PUBLIC = C19200r.f65006e;
        C18524p.m3843b(PUBLIC, "PUBLIC");
        return PUBLIC;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19221x
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19130h
    public final boolean isInner() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d
    public final boolean isValue() {
        return false;
    }

    public final String toString() {
        String m2721a = getName().m2721a();
        C18524p.m3843b(m2721a, "name.asString()");
        return m2721a;
    }
}
