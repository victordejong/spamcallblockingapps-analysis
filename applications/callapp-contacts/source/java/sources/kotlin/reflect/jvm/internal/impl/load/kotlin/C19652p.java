package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19028au;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.C19467g;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.p */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/p.class */
public final class C19652p implements AbstractC19026at {

    /* renamed from: b */
    private final C19467g f65759b;

    public C19652p(C19467g packageFragment) {
        C18524p.m3840d(packageFragment, "packageFragment");
        this.f65759b = packageFragment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at
    /* renamed from: a */
    public final AbstractC19028au mo1859a() {
        AbstractC19028au NO_SOURCE_FILE = AbstractC19028au.f64760a;
        C18524p.m3843b(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    public final String toString() {
        return this.f65759b + ": " + this.f65759b.m2098d().keySet();
    }
}
