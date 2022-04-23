package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.a.z;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.b.bp;
import kotlinx.serialization.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/serialization/SerialDescriptorBuilder;", "invoke"}, k = 3, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1.class */
final class JsonElementSerializer$descriptor$1 extends r implements Function1<l, v> {
    public static final JsonElementSerializer$descriptor$1 INSTANCE = new JsonElementSerializer$descriptor$1();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/serialization/SerialDescriptor;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$1  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1$1.class */
    public static final class AnonymousClass1 extends r implements Function0<SerialDescriptor> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SerialDescriptor invoke() {
            return JsonPrimitiveSerializer.INSTANCE.getDescriptor();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/serialization/SerialDescriptor;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$2  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1$2.class */
    public static final class AnonymousClass2 extends r implements Function0<SerialDescriptor> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        AnonymousClass2() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SerialDescriptor invoke() {
            return JsonNullSerializer.INSTANCE.getDescriptor();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/serialization/SerialDescriptor;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$3  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1$3.class */
    public static final class AnonymousClass3 extends r implements Function0<SerialDescriptor> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        AnonymousClass3() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SerialDescriptor invoke() {
            return JsonLiteralSerializer.INSTANCE.getDescriptor();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/serialization/SerialDescriptor;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$4  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1$4.class */
    public static final class AnonymousClass4 extends r implements Function0<SerialDescriptor> {
        public static final AnonymousClass4 INSTANCE = new AnonymousClass4();

        AnonymousClass4() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final SerialDescriptor invoke() {
            return JsonObjectSerializer.INSTANCE.getDescriptor();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/serialization/SerialDescriptor;", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: kotlinx.serialization.json.JsonElementSerializer$descriptor$1$5  reason: invalid class name */
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonElementSerializer$descriptor$1$5.class */
    public static final class AnonymousClass5 extends r implements Function0<SerialDescriptor> {
        public static final AnonymousClass5 INSTANCE = new AnonymousClass5();

        AnonymousClass5() {
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
    public final /* bridge */ /* synthetic */ v invoke(l lVar) {
        invoke2(lVar);
        return v.f38654a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(l receiver) {
        p.c(receiver, "$receiver");
        receiver.a("JsonPrimitive", bp.a(AnonymousClass1.INSTANCE), z.f36608a, false);
        receiver.a("JsonNull", bp.a(AnonymousClass2.INSTANCE), z.f36608a, false);
        receiver.a("JsonLiteral", bp.a(AnonymousClass3.INSTANCE), z.f36608a, false);
        receiver.a("JsonObject", bp.a(AnonymousClass4.INSTANCE), z.f36608a, false);
        receiver.a("JsonArray", bp.a(AnonymousClass5.INSTANCE), z.f36608a, false);
    }
}
