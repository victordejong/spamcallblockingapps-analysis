package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.descriptors.bf */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/bf.class */
public abstract class AbstractC19064bf {

    /* renamed from: a */
    private final String f64782a;

    /* renamed from: b */
    public final boolean f64783b;

    public AbstractC19064bf(String name, boolean z) {
        C18524p.m3840d(name, "name");
        this.f64782a = name;
        this.f64783b = z;
    }

    /* renamed from: a */
    public Integer mo2676a(AbstractC19064bf visibility) {
        C18524p.m3840d(visibility, "visibility");
        C19054be c19054be = C19054be.f64770a;
        return C19054be.m2677a(this, visibility);
    }

    /* renamed from: a */
    public String mo2675a() {
        return this.f64782a;
    }

    /* renamed from: b */
    public AbstractC19064bf mo2674b() {
        return this;
    }

    public final String toString() {
        return mo2675a();
    }
}
