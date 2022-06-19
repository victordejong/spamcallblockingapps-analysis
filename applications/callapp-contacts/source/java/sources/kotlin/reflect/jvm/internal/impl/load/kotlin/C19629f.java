package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.jvm.internal.impl.p545c.C18960a;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19940g;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.C19939f;
/* renamed from: kotlin.reflect.jvm.internal.impl.load.kotlin.f */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/kotlin/f.class */
public final class C19629f implements AbstractC19940g {

    /* renamed from: a */
    private final AbstractC19641m f65729a;

    /* renamed from: b */
    private final C19626e f65730b;

    public C19629f(AbstractC19641m kotlinClassFinder, C19626e deserializedDescriptorResolver) {
        C18524p.m3840d(kotlinClassFinder, "kotlinClassFinder");
        C18524p.m3840d(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        this.f65729a = kotlinClassFinder;
        this.f65730b = deserializedDescriptorResolver;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.AbstractC19940g
    /* renamed from: a */
    public final C19939f mo1227a(C18960a classId) {
        C18524p.m3840d(classId, "classId");
        AbstractC19646o m1880a = C19645n.m1880a(this.f65729a, classId);
        if (m1880a == null) {
            return null;
        }
        boolean m3850a = C18524p.m3850a(m1880a.mo1875c(), classId);
        if (!C20130x.f66532a || m3850a) {
            return this.f65730b.m1913a(m1880a);
        }
        throw new AssertionError("Class with incorrect id found: expected " + classId + ", actual " + m1880a.mo1875c());
    }
}
