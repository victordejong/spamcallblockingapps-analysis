package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.EnumMap;
import kotlin.jvm.internal.p;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/s.class */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public final EnumMap<a, p> f37907a;

    public s(EnumMap<a, p> defaultQualifiers) {
        p.d(defaultQualifiers, "defaultQualifiers");
        this.f37907a = defaultQualifiers;
    }

    public final p a(a aVar) {
        return this.f37907a.get(aVar);
    }
}
