package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.C18976b;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p553e.AbstractC19230c;
import org.apache.commons.lang3.StringUtils;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.h */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/h.class */
public abstract class AbstractC19162h extends C18976b implements AbstractC19193k {
    private final C18966e name;

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 2 || i == 3 || i == 5 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 5 || i == 6) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "name";
                break;
            case 2:
            case 3:
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl";
                break;
            case 4:
                objArr[0] = "descriptor";
                break;
            default:
                objArr[0] = "annotations";
                break;
        }
        if (i == 2) {
            objArr[1] = "getName";
        } else if (i == 3) {
            objArr[1] = "getOriginal";
        } else if (i == 5 || i == 6) {
            objArr[1] = "toString";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/DeclarationDescriptorImpl";
        }
        if (i != 2 && i != 3) {
            if (i == 4) {
                objArr[2] = "toString";
            } else if (i != 5 && i != 6) {
                objArr[2] = "<init>";
            }
        }
        String format = String.format(str, objArr);
        throw ((i == 2 || i == 3 || i == 5 || i == 6) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19162h(AbstractC18983g abstractC18983g, C18966e c18966e) {
        super(abstractC18983g);
        if (abstractC18983g == null) {
            $$$reportNull$$$0(0);
        }
        if (c18966e == null) {
            $$$reportNull$$$0(1);
        }
        this.name = c18966e;
    }

    public static String toString(AbstractC19193k abstractC19193k) {
        if (abstractC19193k == null) {
            $$$reportNull$$$0(4);
        }
        try {
            String str = AbstractC19230c.f65033j.mo2447a(abstractC19193k) + "[" + abstractC19193k.getClass().getSimpleName() + "@" + Integer.toHexString(System.identityHashCode(abstractC19193k)) + "]";
            if (str == null) {
                $$$reportNull$$$0(5);
            }
            return str;
        } catch (Throwable th) {
            String str2 = abstractC19193k.getClass().getSimpleName() + StringUtils.SPACE + abstractC19193k.getName();
            if (str2 == null) {
                $$$reportNull$$$0(6);
            }
            return str2;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19000ac
    public C18966e getName() {
        C18966e c18966e = this.name;
        if (c18966e == null) {
            $$$reportNull$$$0(2);
        }
        return c18966e;
    }

    public AbstractC19193k getOriginal() {
        return this;
    }

    public String toString() {
        return toString(this);
    }
}
