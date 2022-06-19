package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19028au;
import kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a.C18854f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19959q;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19906f;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.EnumC19905e;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.q */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/q.class */
public final class C19653q implements AbstractC19906f {

    /* renamed from: b */
    public final AbstractC19646o f65760b;

    /* renamed from: c */
    private final C19959q<C18854f> f65761c;

    /* renamed from: d */
    private final boolean f65762d;

    /* renamed from: e */
    private final EnumC19905e f65763e;

    public C19653q(AbstractC19646o binaryClass, C19959q<C18854f> c19959q, boolean z, EnumC19905e abiStability) {
        C18524p.m3840d(binaryClass, "binaryClass");
        C18524p.m3840d(abiStability, "abiStability");
        this.f65760b = binaryClass;
        this.f65761c = c19959q;
        this.f65762d = z;
        this.f65763e = abiStability;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.AbstractC19026at
    /* renamed from: a */
    public final AbstractC19028au mo1859a() {
        AbstractC19028au NO_SOURCE_FILE = AbstractC19028au.f64760a;
        C18524p.m3843b(NO_SOURCE_FILE, "NO_SOURCE_FILE");
        return NO_SOURCE_FILE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.AbstractC19906f
    /* renamed from: b */
    public final String mo1334b() {
        return "Class '" + this.f65760b.mo1875c().m2748f().m2746a() + '\'';
    }

    public final String toString() {
        return ((Object) getClass().getSimpleName()) + ": " + this.f65760b;
    }
}
