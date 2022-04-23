package kotlin.reflect.jvm.internal.impl.builtins.functions;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.a.ag;
import kotlin.a.z;
import kotlin.f.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.builtins.j;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.aw;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.v;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor.class */
public final class FunctionClassDescriptor extends kotlin.reflect.jvm.internal.impl.descriptors.impl.a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37285a = new a(null);
    private static final kotlin.reflect.jvm.internal.impl.c.a i = new kotlin.reflect.jvm.internal.impl.c.a(j.m, e.a("Function"));
    private static final kotlin.reflect.jvm.internal.impl.c.a j = new kotlin.reflect.jvm.internal.impl.c.a(j.j, e.a("KFunction"));

    /* renamed from: b  reason: collision with root package name */
    final b f37286b;

    /* renamed from: c  reason: collision with root package name */
    final int f37287c;

    /* renamed from: d  reason: collision with root package name */
    private final n f37288d;
    private final ae e;
    private final FunctionTypeConstructor f = new FunctionTypeConstructor(this);
    private final c g;
    private final List<TypeParameterDescriptor> h;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor.class */
    final class FunctionTypeConstructor extends AbstractClassTypeConstructor {
        final /* synthetic */ FunctionClassDescriptor this$0;

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$FunctionTypeConstructor$a.class */
        public final /* synthetic */ class a {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f37289a;

            static {
                int[] iArr = new int[b.values().length];
                iArr[b.Function.ordinal()] = 1;
                iArr[b.KFunction.ordinal()] = 2;
                iArr[b.SuspendFunction.ordinal()] = 3;
                iArr[b.KSuspendFunction.ordinal()] = 4;
                f37289a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FunctionTypeConstructor(FunctionClassDescriptor this$0) {
            super(this$0.f37288d);
            p.d(this$0, "this$0");
            this.this$0 = this$0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final Collection<KotlinType> computeSupertypes() {
            List list;
            int i = a.f37289a[this.this$0.f37286b.ordinal()];
            if (i == 1) {
                list = kotlin.a.n.a(FunctionClassDescriptor.i);
            } else if (i == 2) {
                list = kotlin.a.n.b((Object[]) new kotlin.reflect.jvm.internal.impl.c.a[]{FunctionClassDescriptor.j, new kotlin.reflect.jvm.internal.impl.c.a(j.m, b.Function.numberedClassName(this.this$0.f37287c))});
            } else if (i == 3) {
                list = kotlin.a.n.a(FunctionClassDescriptor.i);
            } else if (i == 4) {
                list = kotlin.a.n.b((Object[]) new kotlin.reflect.jvm.internal.impl.c.a[]{FunctionClassDescriptor.j, new kotlin.reflect.jvm.internal.impl.c.a(j.f37319d, b.SuspendFunction.numberedClassName(this.this$0.f37287c))});
            } else {
                throw new NoWhenBranchMatchedException();
            }
            ab b2 = this.this$0.e.b();
            List<kotlin.reflect.jvm.internal.impl.c.a> list2 = list;
            ArrayList arrayList = new ArrayList(kotlin.a.n.a((Iterable) list2, 10));
            for (kotlin.reflect.jvm.internal.impl.c.a aVar : list2) {
                d b3 = v.b(b2, aVar);
                if (b3 != null) {
                    List<TypeParameterDescriptor> c2 = kotlin.a.n.c(getParameters(), b3.getTypeConstructor().getParameters().size());
                    ArrayList arrayList2 = new ArrayList(kotlin.a.n.a((Iterable) c2, 10));
                    for (TypeParameterDescriptor typeParameterDescriptor : c2) {
                        arrayList2.add(new TypeProjectionImpl(typeParameterDescriptor.getDefaultType()));
                    }
                    ArrayList arrayList3 = arrayList2;
                    KotlinTypeFactory kotlinTypeFactory = KotlinTypeFactory.INSTANCE;
                    g.a aVar2 = g.f37361a;
                    arrayList.add(KotlinTypeFactory.simpleNotNullType(g.a.a(), b3, arrayList3));
                } else {
                    throw new IllegalStateException(("Built-in class " + aVar + " not found").toString());
                }
            }
            return kotlin.a.n.h((Iterable) arrayList);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractClassTypeConstructor, kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final FunctionClassDescriptor getDeclarationDescriptor() {
            return this.this$0;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List<TypeParameterDescriptor> getParameters() {
            return this.this$0.h;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public final aw getSupertypeLoopChecker() {
            return aw.a.f37403a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean isDenotable() {
            return true;
        }

        public final String toString() {
            return getDeclarationDescriptor().toString();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FunctionClassDescriptor(n storageManager, ae containingDeclaration, b functionKind, int i2) {
        super(storageManager, functionKind.numberedClassName(i2));
        p.d(storageManager, "storageManager");
        p.d(containingDeclaration, "containingDeclaration");
        p.d(functionKind, "functionKind");
        this.f37288d = storageManager;
        this.e = containingDeclaration;
        this.f37286b = functionKind;
        this.f37287c = i2;
        this.g = new c(storageManager, this);
        ArrayList arrayList = new ArrayList();
        c cVar = new c(1, i2);
        ArrayList arrayList2 = new ArrayList(kotlin.a.n.a(cVar, 10));
        Iterator<Integer> it2 = cVar.iterator();
        while (it2.hasNext()) {
            a(arrayList, this, Variance.IN_VARIANCE, p.a("P", (Object) Integer.valueOf(((ag) it2).a())));
            arrayList2.add(kotlin.v.f38654a);
        }
        a(arrayList, this, Variance.OUT_VARIANCE, "R");
        this.h = kotlin.a.n.h((Iterable) arrayList);
    }

    private static final void a(ArrayList<TypeParameterDescriptor> arrayList, FunctionClassDescriptor functionClassDescriptor, Variance variance, String str) {
        g.a aVar = g.f37361a;
        arrayList.add(TypeParameterDescriptorImpl.createWithDefaultBound(functionClassDescriptor, g.a.a(), false, variance, e.a(str), arrayList.size(), functionClassDescriptor.f37288d));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
    public final g getAnnotations() {
        g.a aVar = g.f37361a;
        return g.a.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final /* bridge */ /* synthetic */ d getCompanionObjectDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final /* bridge */ /* synthetic */ Collection getConstructors() {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    public final /* bridge */ /* synthetic */ k getContainingDeclaration() {
        return this.e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.h
    public final List<TypeParameterDescriptor> getDeclaredTypeParameters() {
        return this.h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final kotlin.reflect.jvm.internal.impl.descriptors.e getKind() {
        return kotlin.reflect.jvm.internal.impl.descriptors.e.INTERFACE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.x
    public final y getModality() {
        return y.ABSTRACT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final /* bridge */ /* synthetic */ Collection getSealedSubclasses() {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public final at getSource() {
        at NO_SOURCE = at.f37401a;
        p.b(NO_SOURCE, "NO_SOURCE");
        return NO_SOURCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final /* bridge */ /* synthetic */ h getStaticScope() {
        return h.c.f38297a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public final TypeConstructor getTypeConstructor() {
        return this.f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
    public final /* synthetic */ h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.c getUnsubstitutedPrimaryConstructor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.x
    public final s getVisibility() {
        s PUBLIC = r.e;
        p.b(PUBLIC, "PUBLIC");
        return PUBLIC;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isActual() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isCompanionObject() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isData() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isExpect() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x
    public final boolean isExternal() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isFun() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.h
    public final boolean isInner() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public final boolean isValue() {
        return false;
    }

    public final String toString() {
        String a2 = getName().a();
        p.b(a2, "name.asString()");
        return a2;
    }
}
