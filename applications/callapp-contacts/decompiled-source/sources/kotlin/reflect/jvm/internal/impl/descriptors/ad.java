package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.a.ab;
import kotlin.a.ag;
import kotlin.a.ap;
import kotlin.a.z;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.e;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.k;
import kotlin.reflect.jvm.internal.impl.f.g;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ad.class */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    final n f37377a;

    /* renamed from: b  reason: collision with root package name */
    final ab f37378b;

    /* renamed from: c  reason: collision with root package name */
    final g<kotlin.reflect.jvm.internal.impl.c.b, ae> f37379c;

    /* renamed from: d  reason: collision with root package name */
    private final g<a, kotlin.reflect.jvm.internal.impl.descriptors.d> f37380d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ad$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final kotlin.reflect.jvm.internal.impl.c.a f37381a;

        /* renamed from: b  reason: collision with root package name */
        final List<Integer> f37382b;

        public a(kotlin.reflect.jvm.internal.impl.c.a classId, List<Integer> typeParametersCount) {
            p.d(classId, "classId");
            p.d(typeParametersCount, "typeParametersCount");
            this.f37381a = classId;
            this.f37382b = typeParametersCount;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return p.a(this.f37381a, aVar.f37381a) && p.a(this.f37382b, aVar.f37382b);
        }

        public final int hashCode() {
            return (this.f37381a.hashCode() * 31) + this.f37382b.hashCode();
        }

        public final String toString() {
            return "ClassRequest(classId=" + this.f37381a + ", typeParametersCount=" + this.f37382b + ')';
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ad$b.class */
    public static final class b extends e {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f37383a;

        /* renamed from: b  reason: collision with root package name */
        private final List<TypeParameterDescriptor> f37384b;

        /* renamed from: c  reason: collision with root package name */
        private final ClassTypeConstructorImpl f37385c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(n storageManager, k container, kotlin.reflect.jvm.internal.impl.c.e name, boolean z, int i) {
            super(storageManager, container, name, at.f37401a, false);
            p.d(storageManager, "storageManager");
            p.d(container, "container");
            p.d(name, "name");
            this.f37383a = z;
            kotlin.f.c b2 = kotlin.f.d.b(0, i);
            ArrayList arrayList = new ArrayList(kotlin.a.n.a(b2, 10));
            Iterator<Integer> it2 = b2.iterator();
            while (it2.hasNext()) {
                int a2 = ((ag) it2).a();
                g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
                arrayList.add(TypeParameterDescriptorImpl.createWithDefaultBound(this, g.a.a(), false, Variance.INVARIANT, kotlin.reflect.jvm.internal.impl.c.e.a(p.a("T", (Object) Integer.valueOf(a2))), a2, storageManager));
            }
            this.f37384b = arrayList;
            this.f37385c = new ClassTypeConstructorImpl(this, ay.a(this), ap.a(kotlin.reflect.jvm.internal.impl.resolve.b.a.c(this).getBuiltIns().g()), storageManager);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.a
        public final kotlin.reflect.jvm.internal.impl.descriptors.a.g getAnnotations() {
            g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
            return g.a.a();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public final kotlin.reflect.jvm.internal.impl.descriptors.d getCompanionObjectDescriptor() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> getConstructors() {
            return ab.f36567a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.h
        public final List<TypeParameterDescriptor> getDeclaredTypeParameters() {
            return this.f37384b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public final e getKind() {
            return e.CLASS;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.x
        public final y getModality() {
            return y.FINAL;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> getSealedSubclasses() {
            return z.f36608a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public final /* bridge */ /* synthetic */ h getStaticScope() {
            return h.c.f38297a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
        public final /* bridge */ /* synthetic */ TypeConstructor getTypeConstructor() {
            return this.f37385c;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.q
        public final /* synthetic */ h getUnsubstitutedMemberScope(KotlinTypeRefiner kotlinTypeRefiner) {
            p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
            return h.c.f38297a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public final kotlin.reflect.jvm.internal.impl.descriptors.c getUnsubstitutedPrimaryConstructor() {
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

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.e, kotlin.reflect.jvm.internal.impl.descriptors.x
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
            return this.f37383a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
        public final boolean isValue() {
            return false;
        }

        public final String toString() {
            return "class " + getName() + " (not found)";
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ad$c.class */
    static final class c extends r implements Function1<a, kotlin.reflect.jvm.internal.impl.descriptors.d> {
        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d invoke(a aVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar;
            a dstr$classId$typeParametersCount = aVar;
            p.d(dstr$classId$typeParametersCount, "$dstr$classId$typeParametersCount");
            kotlin.reflect.jvm.internal.impl.c.a aVar2 = dstr$classId$typeParametersCount.f37381a;
            List<Integer> list = dstr$classId$typeParametersCount.f37382b;
            if (!aVar2.f37331a) {
                kotlin.reflect.jvm.internal.impl.c.a d2 = aVar2.d();
                kotlin.reflect.jvm.internal.impl.descriptors.d a2 = d2 == null ? null : ad.this.a(d2, kotlin.a.n.f((Iterable) list));
                if (a2 == null) {
                    kotlin.reflect.jvm.internal.impl.f.g<kotlin.reflect.jvm.internal.impl.c.b, ae> gVar = ad.this.f37379c;
                    kotlin.reflect.jvm.internal.impl.c.b a3 = aVar2.a();
                    p.b(a3, "classId.packageFqName");
                    dVar = gVar.invoke(a3);
                } else {
                    dVar = a2;
                }
                boolean e = aVar2.e();
                n nVar = ad.this.f37377a;
                f fVar = dVar;
                kotlin.reflect.jvm.internal.impl.c.e c2 = aVar2.c();
                p.b(c2, "classId.shortClassName");
                Integer num = (Integer) kotlin.a.n.f((List<? extends Object>) list);
                return new b(nVar, fVar, c2, e, num == null ? 0 : num.intValue());
            }
            throw new UnsupportedOperationException(p.a("Unresolved local class: ", (Object) aVar2));
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/ad$d.class */
    static final class d extends r implements Function1<kotlin.reflect.jvm.internal.impl.c.b, ae> {
        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ ae invoke(kotlin.reflect.jvm.internal.impl.c.b bVar) {
            kotlin.reflect.jvm.internal.impl.c.b fqName = bVar;
            p.d(fqName, "fqName");
            return new k(ad.this.f37378b, fqName);
        }
    }

    public ad(n storageManager, ab module) {
        p.d(storageManager, "storageManager");
        p.d(module, "module");
        this.f37377a = storageManager;
        this.f37378b = module;
        this.f37379c = storageManager.a(new d());
        this.f37380d = storageManager.a(new c());
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.c.a classId, List<Integer> typeParametersCount) {
        p.d(classId, "classId");
        p.d(typeParametersCount, "typeParametersCount");
        return this.f37380d.invoke(new a(classId, typeParametersCount));
    }
}
