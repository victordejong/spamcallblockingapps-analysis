package kotlinx.serialization.modules;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.reflect.AbstractC18551c;
import kotlinx.serialization.C20418g;
import kotlinx.serialization.KSerializer;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a!\u0010��\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u0004H\u0086\b\u001a)\u0010��\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0006\u001a)\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0007¢\u0006\u0002\u0010\u0006\u001a*\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0007\u001a\u0015\u0010\n\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010\f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0086\u0002¨\u0006\r"}, m4298d2 = {"getContextual", "Lkotlinx/serialization/KSerializer;", "T", "", "Lkotlinx/serialization/modules/SerialModule;", "value", "(Lkotlinx/serialization/modules/SerialModule;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "getContextualOrDefault", "klass", "Lkotlin/reflect/KClass;", "overwriteWith", "other", "plus", "kotlinx-serialization-runtime"}, m4297k = 2, m4296mv = {1, 1, 16})
/* renamed from: kotlinx.serialization.modules.e */
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/e.class */
public final class C20451e {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/serialization/modules/SerializersModuleBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.modules.e$a */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/e$a.class */
    public static final class C20452a extends AbstractC18526r implements Function1<C20454g, C20128v> {

        /* renamed from: a */
        final /* synthetic */ AbstractC20447b f66949a;

        /* renamed from: b */
        final /* synthetic */ AbstractC20447b f66950b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20452a(AbstractC20447b abstractC20447b, AbstractC20447b abstractC20447b2) {
            super(1);
            this.f66949a = abstractC20447b;
            this.f66950b = abstractC20447b2;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ C20128v invoke(C20454g c20454g) {
            C20454g receiver = c20454g;
            C18524p.m3841c(receiver, "$receiver");
            receiver.m666a(this.f66949a);
            receiver.m666a(this.f66950b);
            return C20128v.f66529a;
        }
    }

    /* renamed from: a */
    public static final <T> KSerializer<T> m672a(AbstractC20447b getContextualOrDefault, AbstractC18551c<T> klass) {
        C18524p.m3841c(getContextualOrDefault, "$this$getContextualOrDefault");
        C18524p.m3841c(klass, "klass");
        KSerializer<T> mo671a = getContextualOrDefault.mo671a(klass);
        KSerializer<T> kSerializer = mo671a;
        if (mo671a == null) {
            kSerializer = C20418g.m690a(klass);
        }
        return kSerializer;
    }
}
