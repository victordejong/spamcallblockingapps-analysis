package kotlinx.serialization.modules;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J(\u0010\u0007\u001a\n\u0012\u0004\u0012\u0002H\t\u0018\u00010\b\"\b\b��\u0010\t*\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\t0\fH\u0016J7\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\t\u0018\u00010\b\"\b\b��\u0010\t*\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\t0\f2\u0006\u0010\u000f\u001a\u0002H\tH\u0016¢\u0006\u0002\u0010\u0010J2\u0010\r\u001a\f\u0012\u0006\b\u0001\u0012\u0002H\t\u0018\u00010\b\"\b\b��\u0010\t*\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\t0\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016¨\u0006\u0013"}, m4298d2 = {"Lkotlinx/serialization/modules/EmptyModule;", "Lkotlinx/serialization/modules/SerialModule;", "()V", "dumpTo", "", "collector", "Lkotlinx/serialization/modules/SerialModuleCollector;", "getContextual", "Lkotlinx/serialization/KSerializer;", "T", "", "kclass", "Lkotlin/reflect/KClass;", "getPolymorphic", "baseClass", "value", "(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "serializedClassName", "", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.modules.a */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/a.class */
public final class C20446a implements AbstractC20447b {

    /* renamed from: a */
    public static final C20446a f66947a = new C20446a();

    private C20446a() {
    }

    @Override // kotlinx.serialization.modules.AbstractC20447b
    /* renamed from: a */
    public final <T> KSerializer<T> mo671a(AbstractC18551c<T> kclass) {
        C18524p.m3841c(kclass, "kclass");
        return null;
    }

    @Override // kotlinx.serialization.modules.AbstractC20447b
    /* renamed from: a */
    public final <T> KSerializer<? extends T> mo670a(AbstractC18551c<T> baseClass, T value) {
        C18524p.m3841c(baseClass, "baseClass");
        C18524p.m3841c(value, "value");
        return null;
    }

    @Override // kotlinx.serialization.modules.AbstractC20447b
    /* renamed from: a */
    public final <T> KSerializer<? extends T> mo669a(AbstractC18551c<T> baseClass, String serializedClassName) {
        C18524p.m3841c(baseClass, "baseClass");
        C18524p.m3841c(serializedClassName, "serializedClassName");
        return null;
    }

    @Override // kotlinx.serialization.modules.AbstractC20447b
    /* renamed from: a */
    public final void mo668a(AbstractC20450d collector) {
        C18524p.m3841c(collector, "collector");
    }
}
