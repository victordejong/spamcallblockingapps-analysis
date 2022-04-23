package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import kotlin.reflect.jvm.internal.impl.utils.i;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext.class */
public abstract class AbstractTypeCheckerContext implements TypeSystemContext {
    private int argumentsDepth;
    private ArrayDeque<SimpleTypeMarker> supertypesDeque;
    private boolean supertypesLocked;
    private Set<SimpleTypeMarker> supertypesSet;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$LowerCapturedTypePolicy.class */
    public enum LowerCapturedTypePolicy {
        CHECK_ONLY_LOWER,
        CHECK_SUBTYPE_AND_LOWER,
        SKIP_LOWER
    }

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$SupertypesPolicy.class */
    public static abstract class SupertypesPolicy {

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$SupertypesPolicy$DoCustomTransform.class */
        public static abstract class DoCustomTransform extends SupertypesPolicy {
            public DoCustomTransform() {
                super(null);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$SupertypesPolicy$LowerIfFlexible.class */
        public static final class LowerIfFlexible extends SupertypesPolicy {
            public static final LowerIfFlexible INSTANCE = new LowerIfFlexible();

            private LowerIfFlexible() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.SupertypesPolicy
            public final SimpleTypeMarker transformType(AbstractTypeCheckerContext context, KotlinTypeMarker type) {
                p.d(context, "context");
                p.d(type, "type");
                return context.lowerBoundIfFlexible(type);
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$SupertypesPolicy$None.class */
        public static final class None extends SupertypesPolicy {
            public static final None INSTANCE = new None();

            private None() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.SupertypesPolicy
            public final Void transformType(AbstractTypeCheckerContext context, KotlinTypeMarker type) {
                p.d(context, "context");
                p.d(type, "type");
                throw new UnsupportedOperationException("Should not be called");
            }
        }

        /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/types/AbstractTypeCheckerContext$SupertypesPolicy$UpperIfFlexible.class */
        public static final class UpperIfFlexible extends SupertypesPolicy {
            public static final UpperIfFlexible INSTANCE = new UpperIfFlexible();

            private UpperIfFlexible() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.SupertypesPolicy
            public final SimpleTypeMarker transformType(AbstractTypeCheckerContext context, KotlinTypeMarker type) {
                p.d(context, "context");
                p.d(type, "type");
                return context.upperBoundIfFlexible(type);
            }
        }

        private SupertypesPolicy() {
        }

        public /* synthetic */ SupertypesPolicy(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public abstract SimpleTypeMarker transformType(AbstractTypeCheckerContext abstractTypeCheckerContext, KotlinTypeMarker kotlinTypeMarker);
    }

    public static /* synthetic */ Boolean addSubtypeConstraint$default(AbstractTypeCheckerContext abstractTypeCheckerContext, KotlinTypeMarker kotlinTypeMarker, KotlinTypeMarker kotlinTypeMarker2, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 4) != 0) {
                z = false;
            }
            return abstractTypeCheckerContext.addSubtypeConstraint(kotlinTypeMarker, kotlinTypeMarker2, z);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addSubtypeConstraint");
    }

    public Boolean addSubtypeConstraint(KotlinTypeMarker subType, KotlinTypeMarker superType, boolean z) {
        p.d(subType, "subType");
        p.d(superType, "superType");
        return null;
    }

    public final void clear() {
        ArrayDeque<SimpleTypeMarker> arrayDeque = this.supertypesDeque;
        p.a(arrayDeque);
        arrayDeque.clear();
        Set<SimpleTypeMarker> set = this.supertypesSet;
        p.a(set);
        set.clear();
        this.supertypesLocked = false;
    }

    public boolean customIsSubtypeOf(KotlinTypeMarker subType, KotlinTypeMarker superType) {
        p.d(subType, "subType");
        p.d(superType, "superType");
        return true;
    }

    public List<SimpleTypeMarker> fastCorrespondingSupertypes(SimpleTypeMarker simpleTypeMarker, TypeConstructorMarker typeConstructorMarker) {
        return TypeSystemContext.DefaultImpls.fastCorrespondingSupertypes(this, simpleTypeMarker, typeConstructorMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public TypeArgumentMarker get(TypeArgumentListMarker typeArgumentListMarker, int i) {
        return TypeSystemContext.DefaultImpls.get(this, typeArgumentListMarker, i);
    }

    public TypeArgumentMarker getArgumentOrNull(SimpleTypeMarker simpleTypeMarker, int i) {
        return TypeSystemContext.DefaultImpls.getArgumentOrNull(this, simpleTypeMarker, i);
    }

    public LowerCapturedTypePolicy getLowerCapturedTypePolicy(SimpleTypeMarker subType, CapturedTypeMarker superType) {
        p.d(subType, "subType");
        p.d(superType, "superType");
        return LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER;
    }

    public final ArrayDeque<SimpleTypeMarker> getSupertypesDeque() {
        return this.supertypesDeque;
    }

    public final Set<SimpleTypeMarker> getSupertypesSet() {
        return this.supertypesSet;
    }

    public boolean hasFlexibleNullability(KotlinTypeMarker kotlinTypeMarker) {
        return TypeSystemContext.DefaultImpls.hasFlexibleNullability(this, kotlinTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemOptimizationContext
    public boolean identicalArguments(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        return TypeSystemContext.DefaultImpls.identicalArguments(this, simpleTypeMarker, simpleTypeMarker2);
    }

    public final void initialize() {
        boolean z = this.supertypesLocked;
        if (!x.f38657a || (!z)) {
            this.supertypesLocked = true;
            if (this.supertypesDeque == null) {
                this.supertypesDeque = new ArrayDeque<>(4);
            }
            if (this.supertypesSet == null) {
                i.b bVar = i.f38529a;
                this.supertypesSet = i.b.a();
                return;
            }
            return;
        }
        throw new AssertionError("Assertion failed");
    }

    public abstract boolean isAllowedTypeVariable(KotlinTypeMarker kotlinTypeMarker);

    public boolean isClassType(SimpleTypeMarker simpleTypeMarker) {
        return TypeSystemContext.DefaultImpls.isClassType(this, simpleTypeMarker);
    }

    public boolean isDefinitelyNotNullType(KotlinTypeMarker kotlinTypeMarker) {
        return TypeSystemContext.DefaultImpls.isDefinitelyNotNullType(this, kotlinTypeMarker);
    }

    public boolean isDynamic(KotlinTypeMarker kotlinTypeMarker) {
        return TypeSystemContext.DefaultImpls.isDynamic(this, kotlinTypeMarker);
    }

    public abstract boolean isErrorTypeEqualsToAnything();

    public boolean isIntegerLiteralType(SimpleTypeMarker simpleTypeMarker) {
        return TypeSystemContext.DefaultImpls.isIntegerLiteralType(this, simpleTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean isMarkedNullable(KotlinTypeMarker kotlinTypeMarker) {
        return TypeSystemContext.DefaultImpls.isMarkedNullable(this, kotlinTypeMarker);
    }

    public boolean isNothing(KotlinTypeMarker kotlinTypeMarker) {
        return TypeSystemContext.DefaultImpls.isNothing(this, kotlinTypeMarker);
    }

    public abstract boolean isStubTypeEqualsToAnything();

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public SimpleTypeMarker lowerBoundIfFlexible(KotlinTypeMarker kotlinTypeMarker) {
        return TypeSystemContext.DefaultImpls.lowerBoundIfFlexible(this, kotlinTypeMarker);
    }

    public KotlinTypeMarker prepareType(KotlinTypeMarker type) {
        p.d(type, "type");
        return type;
    }

    public KotlinTypeMarker refineType(KotlinTypeMarker type) {
        p.d(type, "type");
        return type;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public int size(TypeArgumentListMarker typeArgumentListMarker) {
        return TypeSystemContext.DefaultImpls.size(this, typeArgumentListMarker);
    }

    public abstract SupertypesPolicy substitutionSupertypePolicy(SimpleTypeMarker simpleTypeMarker);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public TypeConstructorMarker typeConstructor(KotlinTypeMarker kotlinTypeMarker) {
        return TypeSystemContext.DefaultImpls.typeConstructor(this, kotlinTypeMarker);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public SimpleTypeMarker upperBoundIfFlexible(KotlinTypeMarker kotlinTypeMarker) {
        return TypeSystemContext.DefaultImpls.upperBoundIfFlexible(this, kotlinTypeMarker);
    }
}
