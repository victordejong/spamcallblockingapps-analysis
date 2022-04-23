package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Map;
import kotlin.reflect.jvm.internal.impl.c.b;
import kotlin.reflect.jvm.internal.impl.c.e;
import kotlin.reflect.jvm.internal.impl.descriptors.a.c;
import kotlin.reflect.jvm.internal.impl.descriptors.at;
import kotlin.reflect.jvm.internal.impl.resolve.constants.g;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/a.class */
final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f37911a = new a();

    private a() {
    }

    private static Void e() {
        throw new IllegalStateException("No methods should be called on this descriptor. Only its presence matters".toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final KotlinType a() {
        e();
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final b b() {
        return c.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final Map<e, g<?>> c() {
        e();
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a.c
    public final at d() {
        e();
        throw null;
    }

    public final String toString() {
        return "[EnhancedType]";
    }
}
