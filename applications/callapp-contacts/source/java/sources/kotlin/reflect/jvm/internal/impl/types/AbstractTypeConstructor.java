package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.C18399h;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18282n;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19296i;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor.class */
public abstract class AbstractTypeConstructor implements TypeConstructor {
    private final boolean shouldReportCyclicScopeWithCompanionWarning;
    private final AbstractC19296i<Supertypes> supertypes;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$ModuleViewTypeConstructor.class */
    public final class ModuleViewTypeConstructor implements TypeConstructor {
        private final KotlinTypeRefiner kotlinTypeRefiner;
        private final Lazy refinedSupertypes$delegate;
        final /* synthetic */ AbstractTypeConstructor this$0;

        public ModuleViewTypeConstructor(AbstractTypeConstructor this$0, KotlinTypeRefiner kotlinTypeRefiner) {
            C18524p.m3840d(this$0, "this$0");
            C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
            this.this$0 = this$0;
            this.kotlinTypeRefiner = kotlinTypeRefiner;
            this.refinedSupertypes$delegate = C18399h.m3896a(EnumC18536l.PUBLICATION, new C19980x16a0f668(this, this$0));
        }

        private final List<KotlinType> getRefinedSupertypes() {
            return (List) this.refinedSupertypes$delegate.mo1102a();
        }

        public final boolean equals(Object obj) {
            return this.this$0.equals(obj);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final AbstractC18940g getBuiltIns() {
            AbstractC18940g builtIns = this.this$0.getBuiltIns();
            C18524p.m3843b(builtIns, "this@AbstractTypeConstructor.builtIns");
            return builtIns;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final AbstractC19129g getDeclarationDescriptor() {
            return this.this$0.getDeclarationDescriptor();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public final List<TypeParameterDescriptor> getParameters() {
            List<TypeParameterDescriptor> parameters = this.this$0.getParameters();
            C18524p.m3843b(parameters, "this@AbstractTypeConstructor.parameters");
            return parameters;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        /* renamed from: getSupertypes */
        public final List<KotlinType> mo53752getSupertypes() {
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
            C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
            return this.this$0.refine(kotlinTypeRefiner);
        }

        public final String toString() {
            return this.this$0.toString();
        }
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeConstructor$Supertypes.class */
    public static final class Supertypes {
        private final Collection<KotlinType> allSupertypes;
        private List<? extends KotlinType> supertypesWithoutCycles = C18282n.m4176a(ErrorUtils.ERROR_TYPE_FOR_LOOP_IN_SUPERTYPES);

        /* JADX WARN: Multi-variable type inference failed */
        public Supertypes(Collection<? extends KotlinType> allSupertypes) {
            C18524p.m3840d(allSupertypes, "allSupertypes");
            this.allSupertypes = allSupertypes;
        }

        public final Collection<KotlinType> getAllSupertypes() {
            return this.allSupertypes;
        }

        public final List<KotlinType> getSupertypesWithoutCycles() {
            return this.supertypesWithoutCycles;
        }

        public final void setSupertypesWithoutCycles(List<? extends KotlinType> list) {
            C18524p.m3840d(list, "<set-?>");
            this.supertypesWithoutCycles = list;
        }
    }

    public AbstractTypeConstructor(AbstractC19302n storageManager) {
        C18524p.m3840d(storageManager, "storageManager");
        this.supertypes = storageManager.mo2311a(new AbstractTypeConstructor$supertypes$1(this), AbstractTypeConstructor$supertypes$2.INSTANCE, new AbstractTypeConstructor$supertypes$3(this));
    }

    public final Collection<KotlinType> computeNeighbours(TypeConstructor typeConstructor, boolean z) {
        AbstractTypeConstructor abstractTypeConstructor = typeConstructor instanceof AbstractTypeConstructor ? (AbstractTypeConstructor) typeConstructor : null;
        List b = abstractTypeConstructor == null ? null : C18282n.m4135b((Collection) abstractTypeConstructor.supertypes.invoke().getAllSupertypes(), (Iterable) abstractTypeConstructor.getAdditionalNeighboursInSupertypeGraph(z));
        if (b == null) {
            Collection<KotlinType> supertypes = typeConstructor.mo53752getSupertypes();
            C18524p.m3843b(supertypes, "supertypes");
            return supertypes;
        }
        return b;
    }

    public abstract Collection<KotlinType> computeSupertypes();

    public KotlinType defaultSupertypeIfEmpty() {
        return null;
    }

    protected Collection<KotlinType> getAdditionalNeighboursInSupertypeGraph(boolean z) {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public abstract AbstractC19129g getDeclarationDescriptor();

    public boolean getShouldReportCyclicScopeWithCompanionWarning() {
        return this.shouldReportCyclicScopeWithCompanionWarning;
    }

    public abstract AbstractC19031aw getSupertypeLoopChecker();

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    /* renamed from: getSupertypes */
    public List<KotlinType> mo53752getSupertypes() {
        return this.supertypes.invoke().getSupertypesWithoutCycles();
    }

    public List<KotlinType> processSupertypesWithoutCycles(List<KotlinType> supertypes) {
        C18524p.m3840d(supertypes, "supertypes");
        return supertypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public TypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new ModuleViewTypeConstructor(this, kotlinTypeRefiner);
    }

    public void reportScopesLoopError(KotlinType type) {
        C18524p.m3840d(type, "type");
    }

    public void reportSupertypeLoopError(KotlinType type) {
        C18524p.m3840d(type, "type");
    }
}
