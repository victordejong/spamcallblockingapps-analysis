package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.p;
import kotlin.reflect.jvm.internal.impl.descriptors.au;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.e;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/q.class */
public final class q implements f {

    /* renamed from: b  reason: collision with root package name */
    public final o f38091b;

    /* renamed from: c  reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.q<kotlin.reflect.jvm.internal.impl.b.c.a.f> f38092c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f38093d;
    private final e e;

    public q(o binaryClass, kotlin.reflect.jvm.internal.impl.serialization.deserialization.q<kotlin.reflect.jvm.internal.impl.b.c.a.f> qVar, boolean z, e abiStability) {
        p.d(binaryClass, "binaryClass");
        p.d(abiStability, "abiStability");
        this.f38091b = binaryClass;
        this.f38092c = qVar;
        this.f38093d = z;
        this.e = abiStability;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.at
    public final au a() {
        au NO_SOURCE_FILE = au.f37402a;
        p.b(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.f
    public final String b() {
        return "Class '" + this.f38091b.c().f().a() + '\'';
    }

    public final String toString() {
        return ((Object) getClass().getSimpleName()) + ": " + this.f38091b;
    }
}
