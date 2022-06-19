package kotlinx.serialization.modules;

import java.util.Map;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��6\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001f\u0010��\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006\u001a#\u0010\u0007\u001a\u00020\u0001\"\n\b��\u0010\b\u0018\u0001*\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u000bH\u0086\b\u001a\"\u0010\f\u001a\u00020\u00012\u001a\u0010\r\u001a\u0016\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\u000e\u001a,\u0010\f\u001a\u00020\u0001\"\b\b��\u0010\b*\u00020\t2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u0002H\b0\u000f2\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\b0\u000b\u001a\u0019\u0010\u0011\u001a\u00020\u0005\"\n\b��\u0010\b\u0018\u0001*\u00020\t*\u00020\u0004H\u0087\b¨\u0006\u0012"}, m4298d2 = {"SerializersModule", "Lkotlinx/serialization/modules/SerialModule;", "buildAction", "Lkotlin/Function1;", "Lkotlinx/serialization/modules/SerializersModuleBuilder;", "", "Lkotlin/ExtensionFunctionType;", "serializersModule", "T", "", "serializer", "Lkotlinx/serialization/KSerializer;", "serializersModuleOf", "map", "", "Lkotlin/reflect/KClass;", "kClass", "contextual", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.modules.c */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/c.class */
public final class C20448c {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/serialization/modules/SerializersModuleBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.modules.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/c$a.class */
    public static final class C20449a extends AbstractC18526r implements Function1<C20454g, C20128v> {

        /* renamed from: a */
        final /* synthetic */ Map f66948a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20449a(Map map) {
            super(1);
            this.f66948a = map;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(C20454g c20454g) {
            C20454g receiver = c20454g;
            C18524p.m3841c(receiver, "$receiver");
            for (Map.Entry entry : this.f66948a.entrySet()) {
                AbstractC18551c abstractC18551c = (AbstractC18551c) entry.getKey();
                KSerializer kSerializer = (KSerializer) entry.getValue();
                if (abstractC18551c == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
                }
                if (kSerializer == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
                }
                receiver.contextual(abstractC18551c, kSerializer);
            }
            return C20128v.f66529a;
        }
    }

    /* renamed from: a */
    public static final AbstractC20447b m673a(Function1<? super C20454g, C20128v> buildAction) {
        C18524p.m3841c(buildAction, "buildAction");
        C20454g c20454g = new C20454g();
        buildAction.invoke(c20454g);
        return c20454g.m667a();
    }
}
