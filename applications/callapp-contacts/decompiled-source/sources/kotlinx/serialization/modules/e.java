package kotlinx.serialization.modules;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.c;
import kotlin.v;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.g;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a!\u0010��\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u0004H\u0086\b\u001a)\u0010��\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002¢\u0006\u0002\u0010\u0006\u001a)\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u0007¢\u0006\u0002\u0010\u0006\u001a*\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0007\u001a\u0015\u0010\n\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0086\u0004\u001a\u0015\u0010\f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0086\u0002¨\u0006\r"}, d2 = {"getContextual", "Lkotlinx/serialization/KSerializer;", "T", "", "Lkotlinx/serialization/modules/SerialModule;", "value", "(Lkotlinx/serialization/modules/SerialModule;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;", "getContextualOrDefault", "klass", "Lkotlin/reflect/KClass;", "overwriteWith", "other", "plus", "kotlinx-serialization-runtime"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/e.class */
public final class e {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/serialization/modules/SerializersModuleBuilder;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/modules/e$a.class */
    public static final class a extends r implements Function1<g, v> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f39006a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f39007b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(b bVar, b bVar2) {
            super(1);
            this.f39006a = bVar;
            this.f39007b = bVar2;
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ v invoke(g gVar) {
            g receiver = gVar;
            p.c(receiver, "$receiver");
            receiver.a(this.f39006a);
            receiver.a(this.f39007b);
            return v.f38654a;
        }
    }

    public static final <T> KSerializer<T> a(b getContextualOrDefault, c<T> klass) {
        p.c(getContextualOrDefault, "$this$getContextualOrDefault");
        p.c(klass, "klass");
        KSerializer<T> a2 = getContextualOrDefault.a(klass);
        KSerializer<T> kSerializer = a2;
        if (a2 == null) {
            kSerializer = g.a(klass);
        }
        return kSerializer;
    }
}
