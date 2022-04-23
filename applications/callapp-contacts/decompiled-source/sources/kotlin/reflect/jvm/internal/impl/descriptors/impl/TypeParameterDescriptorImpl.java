package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.aw;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.resolve.b.a;
import kotlin.reflect.jvm.internal.impl.resolve.d;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl.class */
public class TypeParameterDescriptorImpl extends AbstractTypeParameterDescriptor {
    private boolean initialized;
    private final Function1<KotlinType, Void> reportCycleError;
    private final List<KotlinType> upperBounds;

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 5 || i == 28) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 28) ? 2 : 3];
        switch (i) {
            case 1:
            case 7:
            case 13:
            case 20:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 14:
            case 21:
                objArr[0] = "variance";
                break;
            case 3:
            case 9:
            case 15:
            case 22:
                objArr[0] = "name";
                break;
            case 4:
            case 11:
            case 18:
            case 25:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 28:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 16:
            case 23:
                objArr[0] = Payload.SOURCE;
                break;
            case 17:
                objArr[0] = "supertypeLoopsResolver";
                break;
            case 24:
                objArr[0] = "supertypeLoopsChecker";
                break;
            case 26:
                objArr[0] = "bound";
                break;
            case 27:
                objArr[0] = "type";
                break;
        }
        if (i == 5) {
            objArr[1] = "createWithDefaultBound";
        } else if (i != 28) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
        } else {
            objArr[1] = "resolveUpperBounds";
        }
        switch (i) {
            case 5:
            case 28:
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createForFurtherModification";
                break;
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "<init>";
                break;
            case 26:
                objArr[2] = "addUpperBound";
                break;
            case 27:
                objArr[2] = "reportSupertypeLoopError";
                break;
            default:
                objArr[2] = "createWithDefaultBound";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 5 || i == 28) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private TypeParameterDescriptorImpl(k kVar, g gVar, boolean z, Variance variance, e eVar, int i, at atVar, Function1<KotlinType, Void> function1, aw awVar, n nVar) {
        super(nVar, kVar, gVar, eVar, variance, z, i, atVar, awVar);
        if (kVar == null) {
            $$$reportNull$$$0(19);
        }
        if (gVar == null) {
            $$$reportNull$$$0(20);
        }
        if (variance == null) {
            $$$reportNull$$$0(21);
        }
        if (eVar == null) {
            $$$reportNull$$$0(22);
        }
        if (atVar == null) {
            $$$reportNull$$$0(23);
        }
        if (awVar == null) {
            $$$reportNull$$$0(24);
        }
        if (nVar == null) {
            $$$reportNull$$$0(25);
        }
        this.upperBounds = new ArrayList(1);
        this.initialized = false;
        this.reportCycleError = function1;
    }

    private void checkInitialized() {
        if (!this.initialized) {
            throw new IllegalStateException("Type parameter descriptor is not initialized: " + nameForAssertions());
        }
    }

    private void checkUninitialized() {
        if (this.initialized) {
            throw new IllegalStateException("Type parameter descriptor is already initialized: " + nameForAssertions());
        }
    }

    public static TypeParameterDescriptorImpl createForFurtherModification(k kVar, g gVar, boolean z, Variance variance, e eVar, int i, at atVar, Function1<KotlinType, Void> function1, aw awVar, n nVar) {
        if (kVar == null) {
            $$$reportNull$$$0(12);
        }
        if (gVar == null) {
            $$$reportNull$$$0(13);
        }
        if (variance == null) {
            $$$reportNull$$$0(14);
        }
        if (eVar == null) {
            $$$reportNull$$$0(15);
        }
        if (atVar == null) {
            $$$reportNull$$$0(16);
        }
        if (awVar == null) {
            $$$reportNull$$$0(17);
        }
        if (nVar == null) {
            $$$reportNull$$$0(18);
        }
        return new TypeParameterDescriptorImpl(kVar, gVar, z, variance, eVar, i, atVar, function1, awVar, nVar);
    }

    public static TypeParameterDescriptorImpl createForFurtherModification(k kVar, g gVar, boolean z, Variance variance, e eVar, int i, at atVar, n nVar) {
        if (kVar == null) {
            $$$reportNull$$$0(6);
        }
        if (gVar == null) {
            $$$reportNull$$$0(7);
        }
        if (variance == null) {
            $$$reportNull$$$0(8);
        }
        if (eVar == null) {
            $$$reportNull$$$0(9);
        }
        if (atVar == null) {
            $$$reportNull$$$0(10);
        }
        if (nVar == null) {
            $$$reportNull$$$0(11);
        }
        return createForFurtherModification(kVar, gVar, z, variance, eVar, i, atVar, null, aw.a.f37403a, nVar);
    }

    public static TypeParameterDescriptor createWithDefaultBound(k kVar, g gVar, boolean z, Variance variance, e eVar, int i, n nVar) {
        if (kVar == null) {
            $$$reportNull$$$0(0);
        }
        if (gVar == null) {
            $$$reportNull$$$0(1);
        }
        if (variance == null) {
            $$$reportNull$$$0(2);
        }
        if (eVar == null) {
            $$$reportNull$$$0(3);
        }
        if (nVar == null) {
            $$$reportNull$$$0(4);
        }
        TypeParameterDescriptorImpl createForFurtherModification = createForFurtherModification(kVar, gVar, z, variance, eVar, i, at.f37401a, nVar);
        createForFurtherModification.addUpperBound(a.d(kVar).i());
        createForFurtherModification.setInitialized();
        if (createForFurtherModification == null) {
            $$$reportNull$$$0(5);
        }
        return createForFurtherModification;
    }

    private void doAddUpperBound(KotlinType kotlinType) {
        if (!KotlinTypeKt.isError(kotlinType)) {
            this.upperBounds.add(kotlinType);
        }
    }

    private String nameForAssertions() {
        return getName() + " declared in " + d.c(getContainingDeclaration());
    }

    public void addUpperBound(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(26);
        }
        checkUninitialized();
        doAddUpperBound(kotlinType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    protected void reportSupertypeLoopError(KotlinType kotlinType) {
        if (kotlinType == null) {
            $$$reportNull$$$0(27);
        }
        Function1<KotlinType, Void> function1 = this.reportCycleError;
        if (function1 != null) {
            function1.invoke(kotlinType);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractTypeParameterDescriptor
    protected List<KotlinType> resolveUpperBounds() {
        checkInitialized();
        List<KotlinType> list = this.upperBounds;
        if (list == null) {
            $$$reportNull$$$0(28);
        }
        return list;
    }

    public void setInitialized() {
        checkUninitialized();
        this.initialized = true;
    }
}
