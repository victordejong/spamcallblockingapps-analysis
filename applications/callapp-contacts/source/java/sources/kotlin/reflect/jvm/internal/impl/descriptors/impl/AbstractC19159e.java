package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.appsflyer.internal.referrer.Payload;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.p545c.C18966e;
import kotlin.reflect.jvm.internal.impl.p554f.AbstractC19302n;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.e */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/e.class */
public abstract class AbstractC19159e extends AbstractC19137a {
    private final AbstractC19193k containingDeclaration;
    private final boolean isExternal;
    private final AbstractC19026at source;

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
        if (i != 4 && i != 5) {
            objArr[2] = "<init>";
        }
        String format = String.format(str, objArr);
        throw ((i == 4 || i == 5) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19159e(AbstractC19302n abstractC19302n, AbstractC19193k abstractC19193k, C18966e c18966e, AbstractC19026at abstractC19026at, boolean z) {
        super(abstractC19302n, c18966e);
        if (abstractC19302n == null) {
            $$$reportNull$$$0(0);
        }
        if (abstractC19193k == null) {
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
        this.isExternal = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19070d, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19194l, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public AbstractC19193k getContainingDeclaration() {
        AbstractC19193k abstractC19193k = this.containingDeclaration;
        if (abstractC19193k == null) {
            $$$reportNull$$$0(4);
        }
        return abstractC19193k;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n
    public AbstractC19026at getSource() {
        AbstractC19026at abstractC19026at = this.source;
        if (abstractC19026at == null) {
            $$$reportNull$$$0(5);
        }
        return abstractC19026at;
    }

    public boolean isExternal() {
        return this.isExternal;
    }
}
