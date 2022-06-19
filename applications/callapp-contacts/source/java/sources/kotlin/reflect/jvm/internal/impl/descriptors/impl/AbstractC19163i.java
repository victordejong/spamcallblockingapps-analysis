package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19194l;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.i */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/i.class */
public abstract class AbstractC19163i extends AbstractC19162h implements AbstractC19194l {
    private final AbstractC19193k containingDeclaration;
    private final AbstractC19026at source;

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 4 || i == 5 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5 || i == 6) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "name";
                break;
            case 3:
                objArr[0] = Payload.SOURCE;
                break;
            case 4:
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        if (i == 4) {
            objArr[1] = "getOriginal";
        } else if (i == 5) {
            objArr[1] = "getContainingDeclaration";
        } else if (i != 6) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorNonRootImpl";
        } else {
            objArr[1] = "getSource";
        }
        if (i != 4 && i != 5 && i != 6) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw ((i == 4 || i == 5 || i == 6) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19163i(AbstractC19193k abstractC19193k, AbstractC18983g abstractC18983g, C18966e c18966e, AbstractC19026at abstractC19026at) {
        super(abstractC18983g, c18966e);
        if (abstractC19193k == null) {
            $$$reportNull$$$0(0);
        }
        if (abstractC18983g == null) {
            $$$reportNull$$$0(1);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(2);
        }
        if (abstractC19026at == null) {
            $$$reportNull$$$0(3);
        }
        this.containingDeclaration = abstractC19193k;
        this.source = abstractC19026at;
    }

    public AbstractC19193k getContainingDeclaration() {
        AbstractC19193k abstractC19193k = this.containingDeclaration;
        if (abstractC19193k == null) {
            $$$reportNull$$$0(5);
        }
        return abstractC19193k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19162h, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public AbstractC19196n getOriginal() {
        AbstractC19196n abstractC19196n = (AbstractC19196n) super.getOriginal();
        if (abstractC19196n == null) {
            $$$reportNull$$$0(4);
        }
        return abstractC19196n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n
    public AbstractC19026at getSource() {
        AbstractC19026at abstractC19026at = this.source;
        if (abstractC19026at == null) {
            $$$reportNull$$$0(6);
        }
        return abstractC19026at;
    }
}
