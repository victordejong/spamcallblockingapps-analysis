package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/s.class */
public final class s implements r {

    /* renamed from: a  reason: collision with root package name */
    private final List<t> f37568a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<t> f37569b;

    /* renamed from: c  reason: collision with root package name */
    private final List<t> f37570c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<t> f37571d;

    public s(List<t> allDependencies, Set<t> modulesWhoseInternalsAreVisible, List<t> directExpectedByDependencies, Set<t> allExpectedByDependencies) {
        p.d(allDependencies, "allDependencies");
        p.d(modulesWhoseInternalsAreVisible, "modulesWhoseInternalsAreVisible");
        p.d(directExpectedByDependencies, "directExpectedByDependencies");
        p.d(allExpectedByDependencies, "allExpectedByDependencies");
        this.f37568a = allDependencies;
        this.f37569b = modulesWhoseInternalsAreVisible;
        this.f37570c = directExpectedByDependencies;
        this.f37571d = allExpectedByDependencies;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    public final List<t> a() {
        return this.f37568a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    public final Set<t> b() {
        return this.f37569b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    public final List<t> c() {
        return this.f37570c;
    }
}
