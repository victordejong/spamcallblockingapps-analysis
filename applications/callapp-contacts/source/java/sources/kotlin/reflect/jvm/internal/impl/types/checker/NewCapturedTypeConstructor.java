package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.List;
import java.util.Objects;
import kotlin.C18399h;
import kotlin.C20130x;
import kotlin.EnumC18536l;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18297z;
import kotlin.reflect.jvm.internal.impl.builtins.AbstractC18940g;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19129g;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjection;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor.class */
public final class NewCapturedTypeConstructor implements CapturedTypeConstructor {
    private final Lazy _supertypes$delegate;
    private final NewCapturedTypeConstructor original;
    private final TypeProjection projection;
    private Function0<? extends List<? extends UnwrappedType>> supertypesComputation;
    private final TypeParameterDescriptor typeParameter;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor$1 */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor$1.class */
    public static final class C199891 extends AbstractC18526r implements Function0<List<? extends UnwrappedType>> {
        final /* synthetic */ List<UnwrappedType> $supertypes;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C199891(List<? extends UnwrappedType> list) {
            super(0);
            this.$supertypes = list;
        }

        @Override // kotlin.jvm.functions.Function0
        public final List<? extends UnwrappedType> invoke() {
            return this.$supertypes;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewCapturedTypeConstructor(TypeProjection projection, List<? extends UnwrappedType> supertypes, NewCapturedTypeConstructor newCapturedTypeConstructor) {
        this(projection, new C199891(supertypes), newCapturedTypeConstructor, null, 8, null);
        C18524p.m3840d(projection, "projection");
        C18524p.m3840d(supertypes, "supertypes");
    }

    public /* synthetic */ NewCapturedTypeConstructor(TypeProjection typeProjection, List list, NewCapturedTypeConstructor newCapturedTypeConstructor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeProjection, list, (i & 4) != 0 ? null : newCapturedTypeConstructor);
    }

    public NewCapturedTypeConstructor(TypeProjection projection, Function0<? extends List<? extends UnwrappedType>> function0, NewCapturedTypeConstructor newCapturedTypeConstructor, TypeParameterDescriptor typeParameterDescriptor) {
        C18524p.m3840d(projection, "projection");
        this.projection = projection;
        this.supertypesComputation = function0;
        this.original = newCapturedTypeConstructor;
        this.typeParameter = typeParameterDescriptor;
        this._supertypes$delegate = C18399h.m3896a(EnumC18536l.PUBLICATION, new NewCapturedTypeConstructor$_supertypes$2(this));
    }

    public /* synthetic */ NewCapturedTypeConstructor(TypeProjection typeProjection, Function0 function0, NewCapturedTypeConstructor newCapturedTypeConstructor, TypeParameterDescriptor typeParameterDescriptor, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(typeProjection, (i & 2) != 0 ? null : function0, (i & 4) != 0 ? null : newCapturedTypeConstructor, (i & 8) != 0 ? null : typeParameterDescriptor);
    }

    private final List<UnwrappedType> get_supertypes() {
        return (List) this._supertypes$delegate.mo1102a();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!C18524p.m3850a(getClass(), obj == null ? null : obj.getClass())) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor");
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.original;
        NewCapturedTypeConstructor newCapturedTypeConstructor2 = newCapturedTypeConstructor;
        if (newCapturedTypeConstructor == null) {
            newCapturedTypeConstructor2 = this;
        }
        NewCapturedTypeConstructor newCapturedTypeConstructor3 = (NewCapturedTypeConstructor) obj;
        NewCapturedTypeConstructor newCapturedTypeConstructor4 = newCapturedTypeConstructor3.original;
        if (newCapturedTypeConstructor4 != null) {
            newCapturedTypeConstructor3 = newCapturedTypeConstructor4;
        }
        return newCapturedTypeConstructor2 == newCapturedTypeConstructor3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final AbstractC18940g getBuiltIns() {
        KotlinType type = getProjection().getType();
        C18524p.m3843b(type, "projection.type");
        return TypeUtilsKt.getBuiltIns(type);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final AbstractC19129g getDeclarationDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List<TypeParameterDescriptor> getParameters() {
        return C18297z.f63400a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor
    public final TypeProjection getProjection() {
        return this.projection;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    /* renamed from: getSupertypes */
    public final List<UnwrappedType> mo53752getSupertypes() {
        List<UnwrappedType> list = get_supertypes();
        C18297z c18297z = list;
        if (list == null) {
            c18297z = C18297z.f63400a;
        }
        return c18297z;
    }

    public final int hashCode() {
        NewCapturedTypeConstructor newCapturedTypeConstructor = this;
        while (true) {
            NewCapturedTypeConstructor newCapturedTypeConstructor2 = newCapturedTypeConstructor;
            NewCapturedTypeConstructor newCapturedTypeConstructor3 = newCapturedTypeConstructor2.original;
            if (newCapturedTypeConstructor3 == null) {
                return super.hashCode();
            }
            newCapturedTypeConstructor = newCapturedTypeConstructor3;
        }
    }

    public final void initializeSupertypes(List<? extends UnwrappedType> supertypes) {
        C18524p.m3840d(supertypes, "supertypes");
        boolean z = this.supertypesComputation == null;
        if (!C20130x.f66532a || z) {
            this.supertypesComputation = new NewCapturedTypeConstructor$initializeSupertypes$2(supertypes);
            return;
        }
        throw new AssertionError("Already initialized! oldValue = " + this.supertypesComputation + ", newValue = " + supertypes);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final boolean isDenotable() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final NewCapturedTypeConstructor refine(KotlinTypeRefiner kotlinTypeRefiner) {
        C18524p.m3840d(kotlinTypeRefiner, "kotlinTypeRefiner");
        TypeProjection refine = getProjection().refine(kotlinTypeRefiner);
        C18524p.m3843b(refine, "projection.refine(kotlinTypeRefiner)");
        NewCapturedTypeConstructor$refine$1$1 newCapturedTypeConstructor$refine$1$1 = this.supertypesComputation == null ? null : new NewCapturedTypeConstructor$refine$1$1(this, kotlinTypeRefiner);
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.original;
        NewCapturedTypeConstructor newCapturedTypeConstructor2 = newCapturedTypeConstructor;
        if (newCapturedTypeConstructor == null) {
            newCapturedTypeConstructor2 = this;
        }
        return new NewCapturedTypeConstructor(refine, newCapturedTypeConstructor$refine$1$1, newCapturedTypeConstructor2, this.typeParameter);
    }

    public final String toString() {
        return "CapturedType(" + getProjection() + ')';
    }
}
