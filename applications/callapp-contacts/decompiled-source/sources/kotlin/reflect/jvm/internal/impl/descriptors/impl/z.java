package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.e.a.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/z.class */
public final class z extends b {

    /* renamed from: a  reason: collision with root package name */
    private final k f37587a;

    /* renamed from: b  reason: collision with root package name */
    private final e f37588b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(k kVar, e eVar, g gVar) {
        super(gVar);
        if (kVar == null) {
            a(0);
        }
        if (eVar == null) {
            a(1);
        }
        if (gVar == null) {
            a(2);
        }
        this.f37587a = kVar;
        this.f37588b = eVar;
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 3 || i == 4) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "value";
        } else if (i == 2) {
            objArr[0] = "annotations";
        } else if (i == 3 || i == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else if (i != 5) {
            objArr[0] = "containingDeclaration";
        } else {
            objArr[0] = "newOwner";
        }
        if (i == 3) {
            objArr[1] = "getValue";
        } else if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (!(i == 3 || i == 4)) {
            if (i != 5) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "copy";
            }
        }
        String format = String.format(str, objArr);
        throw ((i == 3 || i == 4) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.aq
    public final e a() {
        e eVar = this.f37588b;
        if (eVar == null) {
            a(3);
        }
        return eVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public final k getContainingDeclaration() {
        k kVar = this.f37587a;
        if (kVar == null) {
            a(4);
        }
        return kVar;
    }
}
