package kotlin.reflect.jvm.internal.impl.descriptors;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/p.class */
public abstract class p extends s {

    /* renamed from: a  reason: collision with root package name */
    private final bf f37589a;

    public p(bf delegate) {
        kotlin.jvm.internal.p.d(delegate, "delegate");
        this.f37589a = delegate;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
    public final bf a() {
        return this.f37589a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
    public final String b() {
        return this.f37589a.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.s
    public final s c() {
        s a2 = r.a(this.f37589a.b());
        kotlin.jvm.internal.p.b(a2, "toDescriptorVisibility(delegate.normalize())");
        return a2;
    }
}
