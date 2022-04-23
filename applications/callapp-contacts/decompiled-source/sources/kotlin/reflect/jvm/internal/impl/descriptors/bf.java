package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/descriptors/bf.class */
public abstract class bf {

    /* renamed from: a  reason: collision with root package name */
    private final String f37424a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f37425b;

    public bf(String name, boolean z) {
        p.d(name, "name");
        this.f37424a = name;
        this.f37425b = z;
    }

    public Integer a(bf visibility) {
        p.d(visibility, "visibility");
        be beVar = be.f37412a;
        return be.a(this, visibility);
    }

    public String a() {
        return this.f37424a;
    }

    public bf b() {
        return this;
    }

    public final String toString() {
        return a();
    }
}
