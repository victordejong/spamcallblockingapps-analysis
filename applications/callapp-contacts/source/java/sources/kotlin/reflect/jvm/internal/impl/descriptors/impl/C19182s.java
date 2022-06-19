package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.s */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/impl/s.class */
public final class C19182s implements AbstractC19181r {

    /* renamed from: a */
    private final List<C19183t> f64959a;

    /* renamed from: b */
    private final Set<C19183t> f64960b;

    /* renamed from: c */
    private final List<C19183t> f64961c;

    /* renamed from: d */
    private final Set<C19183t> f64962d;

    public C19182s(List<C19183t> allDependencies, Set<C19183t> modulesWhoseInternalsAreVisible, List<C19183t> directExpectedByDependencies, Set<C19183t> allExpectedByDependencies) {
        C18524p.m3840d(allDependencies, "allDependencies");
        C18524p.m3840d(modulesWhoseInternalsAreVisible, "modulesWhoseInternalsAreVisible");
        C18524p.m3840d(directExpectedByDependencies, "directExpectedByDependencies");
        C18524p.m3840d(allExpectedByDependencies, "allExpectedByDependencies");
        this.f64959a = allDependencies;
        this.f64960b = modulesWhoseInternalsAreVisible;
        this.f64961c = directExpectedByDependencies;
        this.f64962d = allExpectedByDependencies;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19181r
    /* renamed from: a */
    public final List<C19183t> mo2562a() {
        return this.f64959a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19181r
    /* renamed from: b */
    public final Set<C19183t> mo2561b() {
        return this.f64960b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.AbstractC19181r
    /* renamed from: c */
    public final List<C19183t> mo2560c() {
        return this.f64961c;
    }
}
