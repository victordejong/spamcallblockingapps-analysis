package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.aw;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
import kotlin.reflect.jvm.internal.impl.f.i;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.resolve.e.h;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor.class */
public abstract class AbstractTypeParameterDescriptor extends i implements TypeParameterDescriptor {
    private final i<SimpleType> defaultType;
    private final int index;
    private final boolean reified;
    private final n storageManager;
    private final i<TypeConstructor> typeConstructor;
    private final Variance variance;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor.class */
    public class TypeParameterTypeConstructor extends AbstractTypeConstructor {
        private final aw supertypeLoopChecker;
        final /* synthetic */ AbstractTypeParameterDescriptor this$0;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 4 || i == 5 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4 || i == 5 || i == 8) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
                    break;
                case 6:
                    objArr[0] = "type";
                    break;
                case 7:
                    objArr[0] = "supertypes";
                    break;
                default:
                    objArr[0] = "storageManager";
                    break;
            }
            if (i == 1) {
                objArr[1] = "computeSupertypes";
            } else if (i == 2) {
                objArr[1] = "getParameters";
            } else if (i == 3) {
                objArr[1] = "getDeclarationDescriptor";
            } else if (i == 4) {
                objArr[1] = "getBuiltIns";
            } else if (i == 5) {
                objArr[1] = "getSupertypeLoopChecker";
            } else if (i != 8) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
            } else {
                objArr[1] = "processSupertypesWithoutCycles";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                    break;
                case 6:
                    objArr[2] = "reportSupertypeLoopError";
                    break;
                case 7:
                    objArr[2] = "processSupertypesWithoutCycles";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String format = String.format(str, objArr);
            throw ((i == 1 || i == 2 || i == 3 || i == 4 || i == 5 || i == 8) ? new IllegalStateException(format) : new IllegalArgumentException(format));
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TypeParameterTypeConstructor(AbstractTypeParameterDescriptor abstractTypeParameterDescriptor, n nVar, aw awVar) {
            super(nVar);
            if (nVar == null) {
                $$$reportNull$$$0(0);
            }
            this.this$0 = abstractTypeParameterDescriptor;
            this.supertypeLoopChecker = awVar;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public Collection<KotlinType> computeSupertypes() {
            List<KotlinType> resolveUpperBounds = this.this$0.resolveUpperBounds();
            if (resolveUpperBounds == null) {
                $$$reportNull$$$0(1);
            }
            return resolveUpperBounds;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public KotlinType defaultSupertypeIfEmpty() {
            return ErrorUtils.createErrorType("Cyclic upper bounds");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public g getBuiltIns() {
            g d2 = a.d(this.this$0);
            if (d2 == null) {
                $$$reportNull$$$0(4);
            }
            return d2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public kotlin.reflect.jvm.internal.impl.descriptors.g getDeclarationDescriptor() {
            AbstractTypeParameterDescriptor abstractTypeParameterDescriptor = this.this$0;
            if (abstractTypeParameterDescriptor == null) {
                $$$reportNull$$$0(3);
            }
            return abstractTypeParameterDescriptor;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public List<TypeParameterDescriptor> getParameters() {
            List<TypeParameterDescriptor> emptyList = Collections.emptyList();
            if (emptyList == null) {
                $$$reportNull$$$0(2);
            }
            return emptyList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public aw getSupertypeLoopChecker() {
            aw awVar = this.supertypeLoopChecker;
            if (awVar == null) {
                $$$reportNull$$$0(5);
            }
            return awVar;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
        public boolean isDenotable() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public List<KotlinType> processSupertypesWithoutCycles(List<KotlinType> list) {
            if (list == null) {
                $$$reportNull$$$0(7);
            }
            List<KotlinType> processBoundsWithoutCycles = this.this$0.processBoundsWithoutCycles(list);
            if (processBoundsWithoutCycles == null) {
                $$$reportNull$$$0(8);
            }
            return processBoundsWithoutCycles;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        public void reportSupertypeLoopError(KotlinType kotlinType) {
            if (kotlinType == null) {
                $$$reportNull$$$0(6);
            }
            this.this$0.reportSupertypeLoopError(kotlinType);
        }

        public String toString() {
            return this.this$0.getName().toString();
        }
    }

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        Throwable th;
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                i2 = 2;
                break;
            case 12:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = "name";
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = Payload.SOURCE;
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 12:
                objArr[0] = "bounds";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i) {
            case 7:
                objArr[1] = "getVariance";
                break;
            case 8:
                objArr[1] = "getUpperBounds";
                break;
            case 9:
                objArr[1] = "getTypeConstructor";
                break;
            case 10:
                objArr[1] = "getDefaultType";
                break;
            case 11:
                objArr[1] = "getOriginal";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 13:
                objArr[1] = "processBoundsWithoutCycles";
                break;
            case 14:
                objArr[1] = "getStorageManager";
                break;
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                break;
            case 12:
                objArr[2] = "processBoundsWithoutCycles";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                th = new IllegalStateException(format);
                break;
            case 12:
            default:
                th = new IllegalArgumentException(format);
                break;
        }
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractTypeParameterDescriptor(final n nVar, k kVar, kotlin.reflect.jvm.internal.impl.descriptors.a.g gVar, final e eVar, Variance variance, boolean z, int i, at atVar, final aw awVar) {
        super(kVar, gVar, eVar, atVar);
        if (nVar == null) {
            $$$reportNull$$$0(0);
        }
        if (kVar == null) {
            $$$reportNull$$$0(1);
        }
        if (gVar == null) {
            $$$reportNull$$$0(2);
        }
        if (eVar == null) {
            $$$reportNull$$$0(3);
        }
        if (variance == null) {
            $$$reportNull$$$0(4);
        }
        if (atVar == null) {
            $$$reportNull$$$0(5);
        }
        if (awVar == null) {
            $$$reportNull$$$0(6);
        }
        this.variance = variance;
        this.reified = z;
        this.index = i;
        this.typeConstructor = nVar.a(new Function0<TypeConstructor>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor.1
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ TypeConstructor invoke() {
                return new TypeParameterTypeConstructor(AbstractTypeParameterDescriptor.this, nVar, awVar);
            }
        });
        this.defaultType = nVar.a(new Function0<SimpleType>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor.2
            @Override // kotlin.jvm.functions.Function0
            public final /* synthetic */ SimpleType invoke() {
                g.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.a.g.f37361a;
                return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(g.a.a(), AbstractTypeParameterDescriptor.this.getTypeConstructor(), Collections.emptyList(), false, new kotlin.reflect.jvm.internal.impl.resolve.e.g(new Function0<h>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor.2.1
                    @Override // kotlin.jvm.functions.Function0
                    public final /* synthetic */ h invoke() {
                        return kotlin.reflect.jvm.internal.impl.resolve.e.n.a("Scope for type parameter " + eVar.a(), AbstractTypeParameterDescriptor.this.getUpperBounds());
                    }
                }));
            }
        });
        this.storageManager = nVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> mVar, D d2) {
        return mVar.a((TypeParameterDescriptor) this, (AbstractTypeParameterDescriptor) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public SimpleType getDefaultType() {
        SimpleType invoke = this.defaultType.invoke();
        if (invoke == null) {
            $$$reportNull$$$0(10);
        }
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public int getIndex() {
        return this.index;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.impl.h, kotlin.reflect.jvm.internal.impl.descriptors.k
    public TypeParameterDescriptor getOriginal() {
        TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) super.getOriginal();
        if (typeParameterDescriptor == null) {
            $$$reportNull$$$0(11);
        }
        return typeParameterDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public n getStorageManager() {
        n nVar = this.storageManager;
        if (nVar == null) {
            $$$reportNull$$$0(14);
        }
        return nVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.g
    public final TypeConstructor getTypeConstructor() {
        TypeConstructor invoke = this.typeConstructor.invoke();
        if (invoke == null) {
            $$$reportNull$$$0(9);
        }
        return invoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public List<KotlinType> getUpperBounds() {
        List<KotlinType> supertypes = ((TypeParameterTypeConstructor) getTypeConstructor()).mo7371getSupertypes();
        if (supertypes == null) {
            $$$reportNull$$$0(8);
        }
        return supertypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public Variance getVariance() {
        Variance variance = this.variance;
        if (variance == null) {
            $$$reportNull$$$0(7);
        }
        return variance;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public boolean isCapturedFromOuterDeclaration() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor
    public boolean isReified() {
        return this.reified;
    }

    protected List<KotlinType> processBoundsWithoutCycles(List<KotlinType> list) {
        if (list == null) {
            $$$reportNull$$$0(12);
        }
        if (list == null) {
            $$$reportNull$$$0(13);
        }
        return list;
    }

    protected abstract void reportSupertypeLoopError(KotlinType kotlinType);

    protected abstract List<KotlinType> resolveUpperBounds();
}
