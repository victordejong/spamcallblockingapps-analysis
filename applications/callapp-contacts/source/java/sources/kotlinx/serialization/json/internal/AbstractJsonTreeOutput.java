package kotlinx.serialization.json.internal;

import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.AbstractC20419h;
import kotlinx.serialization.AbstractC20424j;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.AbstractC20460r;
import kotlinx.serialization.AbstractC20462t;
import kotlinx.serialization.AbstractC20467u;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonElementsKt;
import kotlinx.serialization.json.JsonExceptionsKt;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonOutput;
import kotlinx.serialization.modules.AbstractC20447b;
import kotlinx.serialization.p572b.AbstractC20358au;
import kotlinx.serialization.p572b.AbstractC20366b;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0005\n��\n\u0002\u0010\f\n��\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b2\u0018��2\u00020\u00012\u00020\u0002B#\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\u0010\tJ1\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u001a\u0010\u001a\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u001c0\u001b\"\u0006\u0012\u0002\b\u00030\u001cH\u0016¢\u0006\u0002\u0010\u001dJ\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001fH\u0016J\u0010\u0010\"\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u0007H\u0016J)\u0010$\u001a\u00020\b\"\u0004\b��\u0010%2\f\u0010&\u001a\b\u0012\u0004\u0012\u0002H%0'2\u0006\u0010(\u001a\u0002H%H\u0016¢\u0006\u0002\u0010)J\u0018\u0010*\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u0015H\u0016J\u0018\u0010,\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u000201H\u0016J \u00102\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u00103\u001a\u00020\u00192\u0006\u00104\u001a\u000205H\u0016J\u0018\u00106\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u000207H\u0016J\u0018\u00108\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u000205H\u0016J\u0018\u00109\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001fH\u0016J\u0018\u0010<\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020=H\u0016J\u0018\u0010>\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u001fH\u0016J\u0018\u0010?\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010B\u001a\u00020\u0007H&J\u0018\u0010C\u001a\u00020\b2\u0006\u0010D\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u0007H&J\u0018\u0010E\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010F\u001a\u000205H\u0016R\u0010\u0010\n\u001a\u00020\u000b8\u0004X\u0085\u0004¢\u0006\u0002\n��R\u0011\u0010\f\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��\u0082\u0001\u0003GHI¨\u0006J"}, m4298d2 = {"Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;", "Lkotlinx/serialization/internal/NamedValueEncoder;", "Lkotlinx/serialization/json/JsonOutput;", "json", "Lkotlinx/serialization/json/Json;", "nodeConsumer", "Lkotlin/Function1;", "Lkotlinx/serialization/json/JsonElement;", "", "(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "context", "Lkotlinx/serialization/modules/SerialModule;", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "getJson", "()Lkotlinx/serialization/json/Json;", "getNodeConsumer", "()Lkotlin/jvm/functions/Function1;", "writePolymorphic", "", "beginStructure", "Lkotlinx/serialization/CompositeEncoder;", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "typeSerializers", "", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;", "composeName", "", "parentName", "childName", "encodeJson", "element", "encodeSerializableValue", "T", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeTaggedBoolean", "tag", "encodeTaggedByte", "", "encodeTaggedChar", "", "encodeTaggedDouble", "", "encodeTaggedEnum", "enumDescription", "ordinal", "", "encodeTaggedFloat", "", "encodeTaggedInt", "encodeTaggedLong", "", "encodeTaggedNull", "encodeTaggedShort", "", "encodeTaggedString", "encodeTaggedValue", "", "endEncode", "getCurrent", "putElement", "key", "shouldEncodeElementDefault", "index", "Lkotlinx/serialization/json/internal/JsonPrimitiveOutput;", "Lkotlinx/serialization/json/internal/JsonTreeOutput;", "Lkotlinx/serialization/json/internal/JsonTreeListOutput;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/AbstractJsonTreeOutput.class */
abstract class AbstractJsonTreeOutput extends AbstractC20358au implements JsonOutput {
    protected final JsonConfiguration configuration;
    private final Json json;
    private final Function1<JsonElement, C20128v> nodeConsumer;
    private boolean writePolymorphic;

    /* JADX WARN: Multi-variable type inference failed */
    private AbstractJsonTreeOutput(Json json, Function1<? super JsonElement, C20128v> function1) {
        super(null, 1, null);
        this.json = json;
        this.nodeConsumer = function1;
        this.configuration = json.configuration;
    }

    public /* synthetic */ AbstractJsonTreeOutput(Json json, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(json, function1);
    }

    @Override // kotlinx.serialization.p572b.AbstractC20383bm, kotlinx.serialization.Encoder
    public CompositeEncoder beginStructure(SerialDescriptor descriptor, KSerializer<?>... typeSerializers) {
        JsonTreeOutput jsonTreeOutput;
        JsonTreeListOutput jsonTreeListOutput;
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(typeSerializers, "typeSerializers");
        Function1<JsonElement, C20128v> abstractJsonTreeOutput$beginStructure$consumer$1 = getCurrentTagOrNull() == null ? this.nodeConsumer : new AbstractJsonTreeOutput$beginStructure$consumer$1(this);
        AbstractC20458p mo662b = descriptor.mo662b();
        if (C18524p.m3850a(mo662b, AbstractC20462t.C20464b.f66969a) || (mo662b instanceof AbstractC20419h)) {
            jsonTreeOutput = new JsonTreeListOutput(this.json, abstractJsonTreeOutput$beginStructure$consumer$1);
        } else if (C18524p.m3850a(mo662b, AbstractC20462t.C20465c.f66970a)) {
            Json json = this.json;
            SerialDescriptor mo661b = descriptor.mo661b(0);
            AbstractC20458p mo662b2 = mo661b.mo662b();
            if ((mo662b2 instanceof AbstractC20424j) || C18524p.m3850a(mo662b2, AbstractC20467u.C20470c.f66975b)) {
                jsonTreeListOutput = new JsonTreeMapOutput(this.json, abstractJsonTreeOutput$beginStructure$consumer$1);
            } else if (!json.configuration.getAllowStructuredMapKeys$kotlinx_serialization_runtime()) {
                throw JsonExceptionsKt.InvalidKeyKindException(mo661b);
            } else {
                jsonTreeListOutput = new JsonTreeListOutput(this.json, abstractJsonTreeOutput$beginStructure$consumer$1);
            }
            jsonTreeOutput = jsonTreeListOutput;
        } else {
            jsonTreeOutput = new JsonTreeOutput(this.json, abstractJsonTreeOutput$beginStructure$consumer$1);
        }
        if (this.writePolymorphic) {
            this.writePolymorphic = false;
            jsonTreeOutput.putElement(this.configuration.getClassDiscriminator$kotlinx_serialization_runtime(), JsonElementsKt.JsonPrimitive(descriptor.mo665a()));
        }
        return jsonTreeOutput;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20358au
    public String composeName(String parentName, String childName) {
        C18524p.m3841c(parentName, "parentName");
        C18524p.m3841c(childName, "childName");
        return childName;
    }

    @Override // kotlinx.serialization.json.JsonOutput
    public void encodeJson(JsonElement element) {
        C18524p.m3841c(element, "element");
        encodeSerializableValue(JsonElementSerializer.INSTANCE, element);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.p572b.AbstractC20383bm, kotlinx.serialization.Encoder
    public <T> void encodeSerializableValue(AbstractC20460r<? super T> serializer, T t) {
        C18524p.m3841c(serializer, "serializer");
        if (getCurrentTagOrNull() == null && ((serializer.getDescriptor().mo662b() instanceof AbstractC20424j) || serializer.getDescriptor().mo662b() == AbstractC20467u.C20470c.f66975b)) {
            JsonPrimitiveOutput jsonPrimitiveOutput = new JsonPrimitiveOutput(this.json, this.nodeConsumer);
            jsonPrimitiveOutput.encodeSerializableValue(serializer, t);
            jsonPrimitiveOutput.endEncode(serializer.getDescriptor());
        } else if (!(serializer instanceof AbstractC20366b) || getJson().configuration.getUseArrayPolymorphism$kotlinx_serialization_runtime()) {
            serializer.serialize(this, t);
        } else {
            AbstractC20366b abstractC20366b = (AbstractC20366b) serializer;
            AbstractJsonTreeOutput abstractJsonTreeOutput = this;
            if (t == 0) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Any");
            }
            KSerializer<? extends T> mo682a = abstractC20366b.mo682a((Encoder) abstractJsonTreeOutput, (AbstractJsonTreeOutput) t);
            if (mo682a == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
            }
            PolymorphicKt.validateIfSealed((KSerializer) serializer, mo682a, getJson().configuration.getClassDiscriminator$kotlinx_serialization_runtime());
            PolymorphicKt.checkKind(mo682a.getDescriptor().mo662b());
            this.writePolymorphic = true;
            mo682a.serialize(abstractJsonTreeOutput, t);
        }
    }

    public void encodeTaggedBoolean(String tag, boolean z) {
        C18524p.m3841c(tag, "tag");
        putElement(tag, new JsonLiteral(z));
    }

    public void encodeTaggedByte(String tag, byte b) {
        C18524p.m3841c(tag, "tag");
        putElement(tag, new JsonLiteral(Byte.valueOf(b)));
    }

    public void encodeTaggedChar(String tag, char c) {
        C18524p.m3841c(tag, "tag");
        putElement(tag, new JsonLiteral(String.valueOf(c)));
    }

    public void encodeTaggedDouble(String tag, double d) {
        C18524p.m3841c(tag, "tag");
        putElement(tag, new JsonLiteral(Double.valueOf(d)));
        if (!this.configuration.m688xd36892ba()) {
            if (!(!Double.isInfinite(d) && !Double.isNaN(d))) {
                throw JsonExceptionsKt.InvalidFloatingPoint(Double.valueOf(d), tag, "double", getCurrent().toString());
            }
        }
    }

    public void encodeTaggedEnum(String tag, SerialDescriptor enumDescription, int i) {
        C18524p.m3841c(tag, "tag");
        C18524p.m3841c(enumDescription, "enumDescription");
        putElement(tag, new JsonLiteral(enumDescription.mo664a(i)));
    }

    public void encodeTaggedFloat(String tag, float f) {
        C18524p.m3841c(tag, "tag");
        putElement(tag, new JsonLiteral(Float.valueOf(f)));
        if (!this.configuration.m688xd36892ba()) {
            if (!(!Float.isInfinite(f) && !Float.isNaN(f))) {
                throw JsonExceptionsKt.InvalidFloatingPoint(Float.valueOf(f), tag, "float", getCurrent().toString());
            }
        }
    }

    public void encodeTaggedInt(String tag, int i) {
        C18524p.m3841c(tag, "tag");
        putElement(tag, new JsonLiteral(Integer.valueOf(i)));
    }

    public void encodeTaggedLong(String tag, long j) {
        C18524p.m3841c(tag, "tag");
        putElement(tag, new JsonLiteral(Long.valueOf(j)));
    }

    public void encodeTaggedNull(String tag) {
        C18524p.m3841c(tag, "tag");
        putElement(tag, JsonNull.INSTANCE);
    }

    public void encodeTaggedShort(String tag, short s) {
        C18524p.m3841c(tag, "tag");
        putElement(tag, new JsonLiteral(Short.valueOf(s)));
    }

    public void encodeTaggedString(String tag, String value) {
        C18524p.m3841c(tag, "tag");
        C18524p.m3841c(value, "value");
        putElement(tag, new JsonLiteral(value));
    }

    public void encodeTaggedValue(String tag, Object value) {
        C18524p.m3841c(tag, "tag");
        C18524p.m3841c(value, "value");
        putElement(tag, new JsonLiteral(value.toString()));
    }

    @Override // kotlinx.serialization.p572b.AbstractC20383bm
    public void endEncode(SerialDescriptor descriptor) {
        C18524p.m3841c(descriptor, "descriptor");
        this.nodeConsumer.invoke(getCurrent());
    }

    @Override // kotlinx.serialization.p572b.AbstractC20383bm, kotlinx.serialization.Encoder
    public final AbstractC20447b getContext() {
        return this.json.getContext();
    }

    public abstract JsonElement getCurrent();

    @Override // kotlinx.serialization.json.JsonOutput
    public final Json getJson() {
        return this.json;
    }

    public final Function1<JsonElement, C20128v> getNodeConsumer() {
        return this.nodeConsumer;
    }

    public abstract void putElement(String str, JsonElement jsonElement);

    @Override // kotlinx.serialization.p572b.AbstractC20383bm, kotlinx.serialization.CompositeEncoder
    public boolean shouldEncodeElementDefault(SerialDescriptor descriptor, int i) {
        C18524p.m3841c(descriptor, "descriptor");
        return this.configuration.getEncodeDefaults$kotlinx_serialization_runtime();
    }
}
