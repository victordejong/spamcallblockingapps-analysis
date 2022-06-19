package kotlinx.serialization.json;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18297z;
import kotlinx.serialization.C20443l;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.p572b.C20386bp;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1.class */
final class JsonElementSerializer$descriptor$1 extends AbstractC18526r implements Function1<C20443l, C20128v> {
    public static final JsonElementSerializer$descriptor$1 INSTANCE = new JsonElementSerializer$descriptor$1();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lkotlinx/serialization/SerialDescriptor;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$1 */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1$1.class */
    public static final class C204341 extends AbstractC18526r implements Function0<SerialDescriptor> {
        public static final C204341 INSTANCE = new C204341();

        C204341() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SerialDescriptor invoke() {
            return JsonPrimitiveSerializer.INSTANCE.getDescriptor();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lkotlinx/serialization/SerialDescriptor;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$2 */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1$2.class */
    public static final class C204352 extends AbstractC18526r implements Function0<SerialDescriptor> {
        public static final C204352 INSTANCE = new C204352();

        C204352() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SerialDescriptor invoke() {
            return JsonNullSerializer.INSTANCE.getDescriptor();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lkotlinx/serialization/SerialDescriptor;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$3 */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1$3.class */
    public static final class C204363 extends AbstractC18526r implements Function0<SerialDescriptor> {
        public static final C204363 INSTANCE = new C204363();

        C204363() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SerialDescriptor invoke() {
            return JsonLiteralSerializer.INSTANCE.getDescriptor();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lkotlinx/serialization/SerialDescriptor;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$4 */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1$4.class */
    public static final class C204374 extends AbstractC18526r implements Function0<SerialDescriptor> {
        public static final C204374 INSTANCE = new C204374();

        C204374() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SerialDescriptor invoke() {
            return JsonObjectSerializer.INSTANCE.getDescriptor();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, m4298d2 = {"<anonymous>", "Lkotlinx/serialization/SerialDescriptor;", "invoke"}, m4297k = 3, m4296mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$5 */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1$5.class */
    public static final class C204385 extends AbstractC18526r implements Function0<SerialDescriptor> {
        public static final C204385 INSTANCE = new C204385();

        C204385() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SerialDescriptor invoke() {
            return JsonArraySerializer.INSTANCE.getDescriptor();
        }
    }

    JsonElementSerializer$descriptor$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ C20128v invoke(C20443l c20443l) {
        invoke2(c20443l);
        return C20128v.f66529a;
    }

    /* renamed from: invoke */
    public final void invoke2(C20443l receiver) {
        C18524p.m3841c(receiver, "$receiver");
        receiver.m678a("JsonPrimitive", C20386bp.m713a(C204341.INSTANCE), C18297z.f63400a, false);
        receiver.m678a("JsonNull", C20386bp.m713a(C204352.INSTANCE), C18297z.f63400a, false);
        receiver.m678a("JsonLiteral", C20386bp.m713a(C204363.INSTANCE), C18297z.f63400a, false);
        receiver.m678a("JsonObject", C20386bp.m713a(C204374.INSTANCE), C18297z.f63400a, false);
        receiver.m678a("JsonArray", C20386bp.m713a(C204385.INSTANCE), C18297z.f63400a, false);
    }
}
