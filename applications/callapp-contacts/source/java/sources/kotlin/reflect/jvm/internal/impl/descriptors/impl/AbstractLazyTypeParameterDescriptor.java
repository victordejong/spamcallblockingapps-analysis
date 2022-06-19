package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19031aw;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
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
    public AbstractLazyTypeParameterDescriptor(AbstractC19302n abstractC19302n, AbstractC19193k abstractC19193k, C18966e c18966e, Variance variance, boolean z, int i, AbstractC19026at abstractC19026at, AbstractC19031aw abstractC19031aw) {
        super(abstractC19302n, abstractC19193k, AbstractC18983g.C18984a.m2705a(), c18966e, variance, z, i, abstractC19026at, abstractC19031aw);
        if (abstractC19302n == null) {
            $$$reportNull$$$0(0);
        }
        if (abstractC19193k == null) {
            $$$reportNull$$$0(1);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(2);
        }
        if (variance == null) {
            $$$reportNull$$$0(3);
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(4);
        }
        if (abstractC19031aw == null) {
            $$$reportNull$$$0(5);
        }
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19162h
    public String toString() {
        String str = "";
        String str2 = isReified() ? "reified " : "";
        if (getVariance() != Variance.INVARIANT) {
            str = getVariance() + StringUtils.SPACE;
        }
        return String.format("%s%s%s", str2, str, getName());
    }
}
