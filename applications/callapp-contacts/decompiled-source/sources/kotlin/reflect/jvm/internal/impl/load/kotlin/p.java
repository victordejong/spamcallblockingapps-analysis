package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.descriptors.au;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.g;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/p.class */
public final class p implements at {

    /* renamed from: b  reason: collision with root package name */
    private final g f38090b;

    public p(g packageFragment) {
        kotlin.jvm.internal.p.d(packageFragment, "packageFragment");
        this.f38090b = packageFragment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.at
    public final au a() {
        au NO_SOURCE_FILE = au.f37402a;
        kotlin.jvm.internal.p.b(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    public final String toString() {
        return this.f38090b + ": " + this.f38090b.d().keySet();
    }
}
