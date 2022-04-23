package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.a.n;
import kotlin.a.z;
import kotlin.h;
import kotlin.jvm.internal.p;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.aw;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor.class */
public abstract class AbstractTypeConstructor implements TypeConstructor {
    private final boolean shouldReportCyclicScopeWithCompanionWarning;
    private final i<Supertypes> supertypes;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$ModuleViewTypeConstructor.class */
    public final class ModuleViewTypeConstructor implements TypeConstructor {
        private final KotlinTypeRefiner kotlinTypeRefiner;
        private final Lazy refinedSupertypes$delegate;
        final /* synthetic */ AbstractTypeConstructor this$0;

        public ModuleViewTypeConstructor(AbstractTypeConstructor this$0, KotlinTypeRefiner kotlinTypeRefiner) {
            p.d(this$0, "this$0");
            p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
            this.this$0 = this$0;
            this.kotlinTypeRefiner = kotlinTypeRefiner;
            this.refinedSupertypes$delegate = h.a(l.PUBLICATION, new AbstractTypeConstructor$ModuleViewTypeConstructor$refinedSupertypes$2(this, this$0));
        }

        private final List<KotlinType> getRefinedSupertypes() {
            return (List) this.refinedSupertypes$delegate.a();
        }

        public final boolean equals(Object obj) {
            return this.this$0.equals(obj);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final g getBuiltIns() {
            g builtIns = this.this$0.getBuiltIns();
            p.b(builtIns, "this@AbstractTypeConstructor.builtIns");
            return builtIns;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final kotlin.reflect.jvm.internal.impl.descriptors.g getDeclarationDescriptor() {
            return this.this$0.getDeclarationDescriptor();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List<TypeParameterDescriptor> getParameters() {
            List<TypeParameterDescriptor> parameters = this.this$0.getParameters();
            p.b(parameters, "this@AbstractTypeConstructor.parameters");
            return parameters;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        /* renamed from: getSupertypes */
        public final List<KotlinType> mo7371getSupertypes() {
            return getRefinedSupertypes();
        }

        public final int hashCode() {
            return this.this$0.hashCode();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final boolean isDenotable() {
            return this.this$0.isDenotable();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final TypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
            p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
            return this.this$0.refine(kotlinTypeRefiner);
        }

        public final String toString() {
            return this.this$0.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes.class */
    public static final class Supertypes {
        private final Collection<KotlinType> allSupertypes;
        private List<? extends KotlinType> supertypesWithoutCycles = n.a(ErrorUtils.ERROR_TYPE_FOR_LOOP_IN_SUPERTYPES);

        /* JADX WARN: Multi-variable type inference failed */
        public Supertypes(Collection<? extends KotlinType> allSupertypes) {
            p.d(allSupertypes, "allSupertypes");
            this.allSupertypes = allSupertypes;
        }

        public final Collection<KotlinType> getAllSupertypes() {
            return this.allSupertypes;
        }

        public final List<KotlinType> getSupertypesWithoutCycles() {
            return this.supertypesWithoutCycles;
        }

        public final void setSupertypesWithoutCycles(List<? extends KotlinType> list) {
            p.d(list, "<set-?>");
            this.supertypesWithoutCycles = list;
        }
    }

    public AbstractTypeConstructor(kotlin.reflect.jvm.internal.impl.f.n storageManager) {
        p.d(storageManager, "storageManager");
        this.supertypes = storageManager.a(new AbstractTypeConstructor$supertypes$1(this), AbstractTypeConstructor$supertypes$2.INSTANCE, new AbstractTypeConstructor$supertypes$3(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<KotlinType> computeNeighbours(TypeConstructor typeConstructor, boolean z) {
        List list = null;
        AbstractTypeConstructor abstractTypeConstructor = typeConstructor instanceof AbstractTypeConstructor ? (AbstractTypeConstructor) typeConstructor : null;
        if (abstractTypeConstructor != null) {
            list = n.b((Collection) abstractTypeConstructor.supertypes.invoke().getAllSupertypes(), (Iterable) abstractTypeConstructor.getAdditionalNeighboursInSupertypeGraph(z));
        }
        if (list != null) {
            return list;
        }
        Collection<KotlinType> supertypes = typeConstructor.mo7371getSupertypes();
        p.b(supertypes, "supertypes");
        return supertypes;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Collection<KotlinType> computeSupertypes();

    /* JADX INFO: Access modifiers changed from: protected */
    public KotlinType defaultSupertypeIfEmpty() {
        return null;
    }

    protected Collection<KotlinType> getAdditionalNeighboursInSupertypeGraph(boolean z) {
        return z.f36608a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public abstract kotlin.reflect.jvm.internal.impl.descriptors.g getDeclarationDescriptor();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getShouldReportCyclicScopeWithCompanionWarning() {
        return this.shouldReportCyclicScopeWithCompanionWarning;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract aw getSupertypeLoopChecker();

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    /* renamed from: getSupertypes */
    public List<KotlinType> mo7371getSupertypes() {
        return this.supertypes.invoke().getSupertypesWithoutCycles();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<KotlinType> processSupertypesWithoutCycles(List<KotlinType> supertypes) {
        p.d(supertypes, "supertypes");
        return supertypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public TypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
        p.d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new ModuleViewTypeConstructor(this, kotlinTypeRefiner);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportScopesLoopError(KotlinType type) {
        p.d(type, "type");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reportSupertypeLoopError(KotlinType type) {
        p.d(type, "type");
    }
}
