package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.Lazy;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.load.java.C19520s;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.g */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/lazy/g.class */
public final class C19501g {

    /* renamed from: a */
    public final C19432b f65480a;

    /* renamed from: b */
    public final AbstractC19506k f65481b;

    /* renamed from: c */
    public final Lazy<C19520s> f65482c;

    /* renamed from: d */
    public final JavaTypeResolver f65483d;

    /* renamed from: e */
    private final Lazy f65484e;

    public C19501g(C19432b components, AbstractC19506k typeParameterResolver, Lazy<C19520s> delegateForDefaultTypeQualifiers) {
        C18524p.m3840d(components, "components");
        C18524p.m3840d(typeParameterResolver, "typeParameterResolver");
        C18524p.m3840d(delegateForDefaultTypeQualifiers, "delegateForDefaultTypeQualifiers");
        this.f65480a = components;
        this.f65481b = typeParameterResolver;
        this.f65482c = delegateForDefaultTypeQualifiers;
        this.f65484e = delegateForDefaultTypeQualifiers;
        this.f65483d = new JavaTypeResolver(this, typeParameterResolver);
    }

    /* renamed from: a */
    public final C19520s m2069a() {
        return (C19520s) this.f65484e.mo1102a();
    }
}
