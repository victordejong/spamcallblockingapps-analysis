package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.descriptors.a.g;
import kotlin.reflect.jvm.internal.impl.descriptors.ab;
import kotlin.reflect.jvm.internal.impl.descriptors.ae;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/v.class */
public abstract class v extends i implements ae {

    /* renamed from: a  reason: collision with root package name */
    public final b f37582a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(ab module, b fqName) {
        super(module, g.a.a(), fqName.f(), at.f37401a);
        p.d(module, "module");
        p.d(fqName, "fqName");
        g.a aVar = g.f37361a;
        this.f37582a = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R accept(m<R, D> visitor, D d2) {
        p.d(visitor, "visitor");
        return visitor.a((ae) this, (v) d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ae
    public final ab b() {
        return (ab) super.getContainingDeclaration();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ae
    public final b c() {
        return this.f37582a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.k
    public /* bridge */ /* synthetic */ k getContainingDeclaration() {
        return (ab) super.getContainingDeclaration();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i, kotlin.reflect.jvm.internal.impl.descriptors.n
    public at getSource() {
        at NO_SOURCE = at.f37401a;
        p.b(NO_SOURCE, "NO_SOURCE");
        return NO_SOURCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.h
    public String toString() {
        return p.a("package ", (Object) this.f37582a);
    }
}
