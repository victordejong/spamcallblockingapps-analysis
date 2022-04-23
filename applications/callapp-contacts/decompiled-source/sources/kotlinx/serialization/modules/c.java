package kotlinx.serialization.modules;

import java.util.Map;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.serialization.KSerializer;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001f\u0010��\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a#\u0010\u0007\u001a\u00020\u0001\"\n\b��\u0010\b\u0018\u0001*\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u000bH\u0086\b\u001a\"\u0010\f\u001a\u00020\u00012\u001a\u0010\r\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\u000e\u001a,\u0010\f\u001a\u00020\u0001\"\b\b��\u0010\b*\u00020\t2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\b0\u000f2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u000b\u001a\u0019\u0010\u0011\u001a\u00020\u0005\"\n\b��\u0010\b\u0018\u0001*\u00020\t*\u00020\u0004H\u0087\b¨\u0006\u0012"}, d2 = {"SerializersModule", "Lkotlinx/serialization/modules/SerialModule;", "buildAction", "Lkotlin/Function1;", "Lkotlinx/serialization/modules/SerializersModuleBuilder;", "", "Lkotlin/ExtensionFunctionType;", "serializersModule", "T", "", "serializer", "Lkotlinx/serialization/KSerializer;", "serializersModuleOf", "map", "", "Lkotlin/reflect/KClass;", "kClass", "contextual", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/c.class */
public final class c {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/serialization/modules/SerializersModuleBuilder;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/c$a.class */
    public static final class a extends r implements Function1<g, v> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f39005a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Map map) {
            super(1);
            this.f39005a = map;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(g gVar) {
            g receiver = gVar;
            p.c(receiver, "$receiver");
            for (Map.Entry entry : this.f39005a.entrySet()) {
                kotlin.reflect.c cVar = (kotlin.reflect.c) entry.getKey();
                KSerializer kSerializer = (KSerializer) entry.getValue();
                if (cVar == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                } else if (kSerializer != null) {
                    receiver.contextual(cVar, kSerializer);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
                }
            }
            return v.f38654a;
        }
    }

    public static final b a(Function1<? super g, v> buildAction) {
        p.c(buildAction, "buildAction");
        g gVar = new g();
        buildAction.invoke(gVar);
        return gVar.a();
    }
}
