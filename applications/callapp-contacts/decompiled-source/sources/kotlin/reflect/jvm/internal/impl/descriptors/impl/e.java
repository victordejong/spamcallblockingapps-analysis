package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.f.n;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/e.class */
public abstract class e extends a {
    private final k containingDeclaration;
    private final boolean isExternal;
    private final at source;

    private static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "containingDeclaration";
        } else if (i == 2) {
            objArr[0] = "name";
        } else if (i == 3) {
            objArr[0] = Payload.SOURCE;
        } else if (i == 4 || i == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[0] = "storageManager";
        }
        if (i == 4) {
            objArr[1] = "getContainingDeclaration";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[1] = "getSource";
        }
        if (!(i == 4 || i == 5)) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw ((i == 4 || i == 5) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(n nVar, k kVar, kotlin.reflect.jvm.internal.impl.c.e eVar, at atVar, boolean z) {
        super(nVar, eVar);
        if (nVar == null) {
            $$$reportNull$$$0(0);
        }
        if (kVar == null) {
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
        this.isExternal = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    public k getContainingDeclaration() {
        k kVar = this.containingDeclaration;
        if (kVar == null) {
            $$$reportNull$$$0(4);
        }
        return kVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public at getSource() {
        at atVar = this.source;
        if (atVar == null) {
            $$$reportNull$$$0(5);
        }
        return atVar;
    }

    public boolean isExternal() {
        return this.isExternal;
    }
}
