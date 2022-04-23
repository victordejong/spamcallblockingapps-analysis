package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.Lazy;
import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver;
import kotlin.reflect.jvm.internal.impl.load.java.s;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final b f37882a;

    /* renamed from: b  reason: collision with root package name */
    public final k f37883b;

    /* renamed from: c  reason: collision with root package name */
    public final Lazy<s> f37884c;

    /* renamed from: d  reason: collision with root package name */
    public final JavaTypeResolver f37885d;
    private final Lazy e;

    public g(b components, k typeParameterResolver, Lazy<s> delegateForDefaultTypeQualifiers) {
        p.d(components, "components");
        p.d(typeParameterResolver, "typeParameterResolver");
        p.d(delegateForDefaultTypeQualifiers, "delegateForDefaultTypeQualifiers");
        this.f37882a = components;
        this.f37883b = typeParameterResolver;
        this.f37884c = delegateForDefaultTypeQualifiers;
        this.e = delegateForDefaultTypeQualifiers;
        this.f37885d = new JavaTypeResolver(this, typeParameterResolver);
    }

    public final s a() {
        return (s) this.e.a();
    }
}
