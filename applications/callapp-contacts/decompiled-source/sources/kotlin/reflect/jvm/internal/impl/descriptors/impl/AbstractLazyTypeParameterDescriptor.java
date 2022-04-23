package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.aw;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.f.n;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor.class */
public abstract class AbstractLazyTypeParameterDescriptor extends AbstractTypeParameterDescriptor {
    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        Object[] objArr = new Object[3];
        if (i == 1) {
            objArr[0] = "containingDeclaration";
        } else if (i == 2) {
            objArr[0] = "name";
        } else if (i == 3) {
            objArr[0] = "variance";
        } else if (i == 4) {
            objArr[0] = Payload.SOURCE;
        } else if (i != 5) {
            objArr[0] = "storageManager";
        } else {
            objArr[0] = "supertypeLoopChecker";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor";
        objArr[2] = "<init>";
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractLazyTypeParameterDescriptor(n nVar, k kVar, e eVar, Variance variance, boolean z, int i, at atVar, aw awVar) {
        super(nVar, kVar, g.a.a(), eVar, variance, z, i, atVar, awVar);
        if (nVar == null) {
            $$$reportNull$$$0(0);
        }
        if (kVar == null) {
            $$$reportNull$$$0(1);
        }
        if (eVar == null) {
            $$$reportNull$$$0(2);
        }
        if (variance == null) {
            $$$reportNull$$$0(3);
        }
        if (atVar == null) {
            $$$reportNull$$$0(4);
        }
        if (awVar == null) {
            $$$reportNull$$$0(5);
        }
        g.a aVar = g.f37361a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.h
    public String toString() {
        String str = "";
        String str2 = isReified() ? "reified " : "";
        if (getVariance() != Variance.INVARIANT) {
            str = getVariance() + StringUtils.SPACE;
        }
        return String.format("%s%s%s", str2, str, getName());
    }
}
