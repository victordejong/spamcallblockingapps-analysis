package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.b;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.e.c;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/h.class */
public abstract class h extends b implements k {
    private final e name;

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
        if (!(i == 2 || i == 3)) {
            if (i == 4) {
                objArr[2] = "toString";
            } else if (!(i == 5 || i == 6)) {
                objArr[2] = "<init>";
            }
        }
        String format = String.format(str, objArr);
        throw ((i == 2 || i == 3 || i == 5 || i == 6) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(g gVar, e eVar) {
        super(gVar);
        if (gVar == null) {
            $$$reportNull$$$0(0);
        }
        if (eVar == null) {
            $$$reportNull$$$0(1);
        }
        this.name = eVar;
    }

    public static String toString(k kVar) {
        if (kVar == null) {
            $$$reportNull$$$0(4);
        }
        try {
            String str = c.j.a(kVar) + "[" + kVar.getClass().getSimpleName() + "@" + Integer.toHexString(System.identityHashCode(kVar)) + "]";
            if (str == null) {
                $$$reportNull$$$0(5);
            }
            return str;
        } catch (Throwable th) {
            String str2 = kVar.getClass().getSimpleName() + StringUtils.SPACE + kVar.getName();
            if (str2 == null) {
                $$$reportNull$$$0(6);
            }
            return str2;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ac
    public e getName() {
        e eVar = this.name;
        if (eVar == null) {
            $$$reportNull$$$0(2);
        }
        return eVar;
    }

    public k getOriginal() {
        return this;
    }

    public String toString() {
        return toString(this);
    }
}
