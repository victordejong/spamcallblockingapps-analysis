package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
import kotlin.reflect.jvm.internal.impl.resolve.C19807d;
import kotlin.reflect.jvm.internal.impl.resolve.p564b.C19756a;
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
    private TypeParameterDescriptorImpl(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, boolean z, Variance variance, C18966e c18966e, int i, AbstractC19026at abstractC19026at, Function1<KotlinType, Void> function1, AbstractC19031aw abstractC19031aw, AbstractC19302n abstractC19302n) {
        super(abstractC19302n, abstractC19193k, abstractC18983g, c18966e, variance, z, i, abstractC19026at, abstractC19031aw);
        if (abstractC19193k == null) {
            $$$reportNull$$$0(19);
        }
        if (abstractC18983g == null) {
            $$$reportNull$$$0(20);
        }
        if (variance == null) {
            $$$reportNull$$$0(21);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(22);
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(23);
        }
        if (abstractC19031aw == null) {
            $$$reportNull$$$0(24);
        }
        if (abstractC19302n == null) {
            $$$reportNull$$$0(25);
        }
        this.upperBounds = new ArrayList(1);
        this.initialized = false;
        this.reportCycleError = function1;
    }

    private void checkInitialized() {
        if (this.initialized) {
            return;
        }
        throw new IllegalStateException("Type parameter descriptor is not initialized: " + nameForAssertions());
    }

    private void checkUninitialized() {
        if (!this.initialized) {
            return;
        }
        throw new IllegalStateException("Type parameter descriptor is already initialized: " + nameForAssertions());
    }

    public static TypeParameterDescriptorImpl createForFurtherModification(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, boolean z, Variance variance, C18966e c18966e, int i, AbstractC19026at abstractC19026at, Function1<KotlinType, Void> function1, AbstractC19031aw abstractC19031aw, AbstractC19302n abstractC19302n) {
        if (abstractC19193k == null) {
            $$$reportNull$$$0(12);
        }
        if (abstractC18983g == null) {
            $$$reportNull$$$0(13);
        }
        if (variance == null) {
            $$$reportNull$$$0(14);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(15);
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(16);
        }
        if (abstractC19031aw == null) {
            $$$reportNull$$$0(17);
        }
        if (abstractC19302n == null) {
            $$$reportNull$$$0(18);
        }
        return new TypeParameterDescriptorImpl(abstractC19193k, abstractC18983g, z, variance, c18966e, i, abstractC19026at, function1, abstractC19031aw, abstractC19302n);
    }

    public static TypeParameterDescriptorImpl createForFurtherModification(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, boolean z, Variance variance, C18966e c18966e, int i, AbstractC19026at abstractC19026at, AbstractC19302n abstractC19302n) {
        if (abstractC19193k == null) {
            $$$reportNull$$$0(6);
        }
        if (abstractC18983g == null) {
            $$$reportNull$$$0(7);
        }
        if (variance == null) {
            $$$reportNull$$$0(8);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(9);
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(10);
        }
        if (abstractC19302n == null) {
            $$$reportNull$$$0(11);
        }
        return createForFurtherModification(abstractC19193k, abstractC18983g, z, variance, c18966e, i, abstractC19026at, null, AbstractC19031aw.C19032a.f64761a, abstractC19302n);
    }

    public static TypeParameterDescriptor createWithDefaultBound(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, boolean z, Variance variance, C18966e c18966e, int i, AbstractC19302n abstractC19302n) {
        if (abstractC19193k == null) {
            $$$reportNull$$$0(0);
        }
        if (abstractC18983g == null) {
            $$$reportNull$$$0(1);
        }
        if (variance == null) {
            $$$reportNull$$$0(2);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(3);
        }
        if (abstractC19302n == null) {
            $$$reportNull$$$0(4);
        }
        TypeParameterDescriptorImpl createForFurtherModification = createForFurtherModification(abstractC19193k, abstractC18983g, z, variance, c18966e, i, AbstractC19026at.f64759a, abstractC19302n);
        createForFurtherModification.addUpperBound(C19756a.m1526d(abstractC19193k).m2794i());
        createForFurtherModification.setInitialized();
        if (createForFurtherModification == null) {
            $$$reportNull$$$0(5);
        }
        return createForFurtherModification;
    }

    private void doAddUpperBound(KotlinType kotlinType) {
        if (KotlinTypeKt.isError(kotlinType)) {
            return;
        }
        this.upperBounds.add(kotlinType);
    }

    private String nameForAssertions() {
        return getName() + " declared in " + C19807d.m1463c(getContainingDeclaration());
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
        if (function1 == null) {
            return;
        }
        function1.invoke(kotlinType);
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
