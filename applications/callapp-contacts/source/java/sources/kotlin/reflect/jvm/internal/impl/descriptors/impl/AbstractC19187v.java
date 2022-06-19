package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC18999ab;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19195m;
import kotlin.reflect.jvm.internal.impl.descriptors.p547a.AbstractC18983g;
import kotlin.reflect.jvm.internal.impl.p545c.C18961b;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.v */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/v.class */
public abstract class AbstractC19187v extends AbstractC19163i implements AbstractC19006ae {

    /* renamed from: a */
    public final C18961b f64984a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC19187v(AbstractC18999ab module, C18961b fqName) {
        super(module, AbstractC18983g.C18984a.m2705a(), fqName.m2737f(), AbstractC19026at.f64759a);
        C18524p.m3840d(module, "module");
        C18524p.m3840d(fqName, "fqName");
        AbstractC18983g.C18984a c18984a = AbstractC18983g.f64717a;
        this.f64984a = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public <R, D> R accept(AbstractC19195m<R, D> visitor, D d) {
        C18524p.m3840d(visitor, "visitor");
        return visitor.mo2387a((AbstractC19006ae) this, (AbstractC19187v) d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae
    /* renamed from: b */
    public final AbstractC18999ab mo2543b() {
        return (AbstractC18999ab) super.getContainingDeclaration();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19006ae
    /* renamed from: c */
    public final C18961b mo2542c() {
        return this.f64984a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19163i, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19193k
    public /* bridge */ /* synthetic */ AbstractC19193k getContainingDeclaration() {
        return (AbstractC18999ab) super.getContainingDeclaration();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19163i, kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19196n
    public AbstractC19026at getSource() {
        AbstractC19026at NO_SOURCE = AbstractC19026at.f64759a;
        C18524p.m3843b(NO_SOURCE, "NO_SOURCE");
        return NO_SOURCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19162h
    public String toString() {
        return C18524p.m3847a("package ", (Object) this.f64984a);
    }
}
