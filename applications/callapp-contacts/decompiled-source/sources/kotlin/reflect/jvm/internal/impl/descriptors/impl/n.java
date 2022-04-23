package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.resolve.e.a.c;
import kotlin.reflect.jvm.internal.impl.resolve.e.a.e;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/n.class */
public final class n extends b {

    /* renamed from: a  reason: collision with root package name */
    private final d f37555a;

    /* renamed from: b  reason: collision with root package name */
    private final c f37556b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(d dVar) {
        super(g.a.a());
        if (dVar == null) {
            a(0);
        }
        g.a aVar = g.f37361a;
        this.f37555a = dVar;
        this.f37556b = new c(dVar, null);
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 1 || i == 2) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2) ? 2 : 3];
        if (i == 1 || i == 2) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else if (i != 3) {
            objArr[0] = "descriptor";
        } else {
            objArr[0] = "newOwner";
        }
        if (i == 1) {
            objArr[1] = "getValue";
        } else if (i != 2) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazyClassReceiverParameterDescriptor";
        } else {
            objArr[1] = "getContainingDeclaration";
        }
        if (!(i == 1 || i == 2)) {
            if (i != 3) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "copy";
            }
        }
        String format = String.format(str, objArr);
        throw ((i == 1 || i == 2) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.aq
    public final e a() {
        c cVar = this.f37556b;
        if (cVar == null) {
            a(1);
        }
        return cVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public final k getContainingDeclaration() {
        d dVar = this.f37555a;
        if (dVar == null) {
            a(2);
        }
        return dVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.h
    public final String toString() {
        return "class " + this.f37555a.getName() + "::this";
    }
}
