package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.l;
import kotlin.reflect.jvm.internal.impl.descriptors.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/i.class */
public abstract class i extends h implements l {
    private final k containingDeclaration;
    private final at source;

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
        if (!(i == 4 || i == 5 || i == 6)) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw ((i == 4 || i == 5 || i == 6) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(k kVar, g gVar, e eVar, at atVar) {
        super(gVar, eVar);
        if (kVar == null) {
            $$$reportNull$$$0(0);
        }
        if (gVar == null) {
            $$$reportNull$$$0(1);
        }
        if (eVar == null) {
            $$$reportNull$$$0(2);
        }
        if (atVar == null) {
            $$$reportNull$$$0(3);
        }
        this.containingDeclaration = kVar;
        this.source = atVar;
    }

    public k getContainingDeclaration() {
        k kVar = this.containingDeclaration;
        if (kVar == null) {
            $$$reportNull$$$0(5);
        }
        return kVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.h, kotlin.reflect.jvm.internal.impl.descriptors.k
    public n getOriginal() {
        n nVar = (n) super.getOriginal();
        if (nVar == null) {
            $$$reportNull$$$0(4);
        }
        return nVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public at getSource() {
        at atVar = this.source;
        if (atVar == null) {
            $$$reportNull$$$0(6);
        }
        return atVar;
    }
}
