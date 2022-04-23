package kotlinx.serialization.modules;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.reflect.c;
import kotlinx.serialization.KSerializer;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J(\u0010\u0007\u001a\n\u0012\u0004\u0012\u0002H\t\u0018\u00010\b\"\b\b��\u0010\t*\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\t0\fH\u0016J7\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\t\u0018\u00010\b\"\b\b��\u0010\t*\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\t0\f2\u0006\u0010\u000f\u001a\u0002H\tH\u0016¢\u0006\u0002\u0010\u0010J2\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\t\u0018\u00010\b\"\b\b��\u0010\t*\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\t0\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¨\u0006\u0013"}, d2 = {"Lkotlinx/serialization/modules/EmptyModule;", "Lkotlinx/serialization/modules/SerialModule;", "()V", "dumpTo", "", "collector", "Lkotlinx/serialization/modules/SerialModuleCollector;", "getContextual", "Lkotlinx/serialization/KSerializer;", "T", "", "kclass", "Lkotlin/reflect/KClass;", "getPolymorphic", "baseClass", "value", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "serializedClassName", "", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/a.class */
public final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    public static final a f39004a = new a();

    private a() {
    }

    @Override // kotlinx.serialization.modules.b
    public final <T> KSerializer<T> a(c<T> kclass) {
        p.c(kclass, "kclass");
        return null;
    }

    @Override // kotlinx.serialization.modules.b
    public final <T> KSerializer<? extends T> a(c<T> baseClass, T value) {
        p.c(baseClass, "baseClass");
        p.c(value, "value");
        return null;
    }

    @Override // kotlinx.serialization.modules.b
    public final <T> KSerializer<? extends T> a(c<T> baseClass, String serializedClassName) {
        p.c(baseClass, "baseClass");
        p.c(serializedClassName, "serializedClassName");
        return null;
    }

    @Override // kotlinx.serialization.modules.b
    public final void a(d collector) {
        p.c(collector, "collector");
    }
}
