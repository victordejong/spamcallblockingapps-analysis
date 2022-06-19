package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import kotlinx.serialization.AbstractC20327a;
import kotlinx.serialization.AbstractC20415d;
import kotlinx.serialization.AbstractC20419h;
import kotlinx.serialization.AbstractC20424j;
import kotlinx.serialization.AbstractC20458p;
import kotlinx.serialization.AbstractC20462t;
import kotlinx.serialization.AbstractC20467u;
import kotlinx.serialization.C20457o;
import kotlinx.serialization.EnumC20471v;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonExceptionsKt;
import kotlinx.serialization.json.JsonInput;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.modules.AbstractC20447b;
import kotlinx.serialization.p572b.AbstractC20357at;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0005\n��\n\u0002\u0010\f\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0001\n��\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b2\u0018��2\u00020\u00012\u00020\u0002B\u0017\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J1\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u001a\u0010\u001c\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u001e0\u001d\"\u0006\u0012\u0002\b\u00030\u001eH\u0016¢\u0006\u0002\u0010\u001fJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!H\u0016J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020!H$J\b\u0010&\u001a\u00020\u0006H\u0002J\b\u0010'\u001a\u00020\u0006H\u0016J!\u0010(\u001a\u0002H)\"\u0004\b��\u0010)2\f\u0010*\u001a\b\u0012\u0004\u0012\u0002H)0+H\u0016¢\u0006\u0002\u0010,J\u0010\u0010-\u001a\u00020.2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010/\u001a\u0002002\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u00101\u001a\u0002022\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u00103\u001a\u0002042\u0006\u0010%\u001a\u00020!H\u0016J\u0018\u00105\u001a\u0002062\u0006\u0010%\u001a\u00020!2\u0006\u00107\u001a\u00020\u001bH\u0016J\u0010\u00108\u001a\u0002092\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010:\u001a\u0002062\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010;\u001a\u00020<2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010=\u001a\u00020.2\u0006\u0010%\u001a\u00020!H\u0016J\u0012\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010@\u001a\u00020A2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010B\u001a\u00020!2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010C\u001a\u00020D2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010E\u001a\u00020D2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u0016\u001a\u00020F2\u0006\u0010%\u001a\u00020!H\u0014J=\u0010G\u001a\u0002H)\"\b\b��\u0010)*\u00020H*\u00020F2\u0006\u0010G\u001a\u00020!2\u0017\u0010I\u001a\u0013\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u0002H)0J¢\u0006\u0002\bKH\u0082\b¢\u0006\u0002\u0010LR\u0010\u0010\b\u001a\u00020\t8\u0004X\u0085\u0004¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004¢\u0006\f\u0012\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017\u0082\u0001\u0003MNO¨\u0006P"}, m4298d2 = {"Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;", "Lkotlinx/serialization/internal/NamedValueDecoder;", "Lkotlinx/serialization/json/JsonInput;", "json", "Lkotlinx/serialization/json/Json;", "value", "Lkotlinx/serialization/json/JsonElement;", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;)V", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "context", "Lkotlinx/serialization/modules/SerialModule;", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "getJson", "()Lkotlinx/serialization/json/Json;", "updateMode", "Lkotlinx/serialization/UpdateMode;", "updateMode$annotations", "()V", "getUpdateMode", "()Lkotlinx/serialization/UpdateMode;", "getValue", "()Lkotlinx/serialization/json/JsonElement;", "beginStructure", "Lkotlinx/serialization/CompositeDecoder;", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "typeParams", "", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeDecoder;", "composeName", "", "parentName", "childName", "currentElement", "tag", "currentObject", "decodeJson", "decodeSerializableValue", "T", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "decodeTaggedBoolean", "", "decodeTaggedByte", "", "decodeTaggedChar", "", "decodeTaggedDouble", "", "decodeTaggedEnum", "", "enumDescription", "decodeTaggedFloat", "", "decodeTaggedInt", "decodeTaggedLong", "", "decodeTaggedNotNullMark", "decodeTaggedNull", "", "decodeTaggedShort", "", "decodeTaggedString", "decodeTaggedUnit", "", "endStructure", "Lkotlinx/serialization/json/JsonPrimitive;", TreeJsonOutputKt.PRIMITIVE_TAG, "", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Lkotlinx/serialization/json/internal/JsonPrimitiveInput;", "Lkotlinx/serialization/json/internal/JsonTreeInput;", "Lkotlinx/serialization/json/internal/JsonTreeListInput;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/AbstractJsonTreeInput.class */
public abstract class AbstractJsonTreeInput extends AbstractC20357at implements JsonInput {
    protected final JsonConfiguration configuration;
    private final Json json;
    private final JsonElement value;

    private AbstractJsonTreeInput(Json json, JsonElement jsonElement) {
        super(null, 1, null);
        this.json = json;
        this.value = jsonElement;
        this.configuration = getJson().configuration;
    }

    public /* synthetic */ AbstractJsonTreeInput(Json json, JsonElement jsonElement, DefaultConstructorMarker defaultConstructorMarker) {
        this(json, jsonElement);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if (r0 == null) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.serialization.json.JsonElement currentObject() {
        /*
            r3 = this;
            r0 = r3
            java.lang.Object r0 = r0.getCurrentTagOrNull()
            java.lang.String r0 = (java.lang.String) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L18
            r0 = r3
            r1 = r4
            kotlinx.serialization.json.JsonElement r0 = r0.currentElement(r1)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r5
            if (r0 != 0) goto L1d
        L18:
            r0 = r3
            kotlinx.serialization.json.JsonElement r0 = r0.getValue()
            r4 = r0
        L1d:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.AbstractJsonTreeInput.currentObject():kotlinx.serialization.json.JsonElement");
    }

    private final <T> T primitive(JsonPrimitive jsonPrimitive, String str, Function1<? super JsonPrimitive, ? extends T> function1) {
        try {
            return function1.invoke(jsonPrimitive);
        } catch (Throwable th) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Failed to parse '" + str + '\'', currentObject().toString());
        }
    }

    public static /* synthetic */ void updateMode$annotations() {
    }

    @Override // kotlinx.serialization.p572b.AbstractC20378bl, kotlinx.serialization.Decoder
    public AbstractC20327a beginStructure(SerialDescriptor descriptor, KSerializer<?>... typeParams) {
        JsonTreeListInput jsonTreeListInput;
        C18524p.m3841c(descriptor, "descriptor");
        C18524p.m3841c(typeParams, "typeParams");
        JsonElement currentObject = currentObject();
        AbstractC20458p mo662b = descriptor.mo662b();
        if (C18524p.m3850a(mo662b, AbstractC20462t.C20464b.f66969a) || (mo662b instanceof AbstractC20419h)) {
            Json json = getJson();
            if (currentObject instanceof JsonArray) {
                return new JsonTreeListInput(json, (JsonArray) currentObject);
            }
            throw new IllegalStateException(("Expected " + C18496ac.m3882b(JsonArray.class) + " but found " + C18496ac.m3882b(currentObject.getClass())).toString());
        } else if (!C18524p.m3850a(mo662b, AbstractC20462t.C20465c.f66970a)) {
            Json json2 = getJson();
            if (currentObject instanceof JsonObject) {
                return new JsonTreeInput(json2, (JsonObject) currentObject);
            }
            throw new IllegalStateException(("Expected " + C18496ac.m3882b(JsonObject.class) + " but found " + C18496ac.m3882b(currentObject.getClass())).toString());
        } else {
            Json json3 = getJson();
            SerialDescriptor mo661b = descriptor.mo661b(0);
            AbstractC20458p mo662b2 = mo661b.mo662b();
            if ((mo662b2 instanceof AbstractC20424j) || C18524p.m3850a(mo662b2, AbstractC20467u.C20470c.f66975b)) {
                Json json4 = getJson();
                if (!(currentObject instanceof JsonObject)) {
                    throw new IllegalStateException(("Expected " + C18496ac.m3882b(JsonObject.class) + " but found " + C18496ac.m3882b(currentObject.getClass())).toString());
                }
                jsonTreeListInput = new JsonTreeMapInput(json4, (JsonObject) currentObject);
            } else if (!json3.configuration.getAllowStructuredMapKeys$kotlinx_serialization_runtime()) {
                throw JsonExceptionsKt.InvalidKeyKindException(mo661b);
            } else {
                Json json5 = getJson();
                if (!(currentObject instanceof JsonArray)) {
                    throw new IllegalStateException(("Expected " + C18496ac.m3882b(JsonArray.class) + " but found " + C18496ac.m3882b(currentObject.getClass())).toString());
                }
                jsonTreeListInput = new JsonTreeListInput(json5, (JsonArray) currentObject);
            }
            return jsonTreeListInput;
        }
    }

    @Override // kotlinx.serialization.p572b.AbstractC20357at
    public String composeName(String parentName, String childName) {
        C18524p.m3841c(parentName, "parentName");
        C18524p.m3841c(childName, "childName");
        return childName;
    }

    protected abstract JsonElement currentElement(String str);

    @Override // kotlinx.serialization.json.JsonInput
    public JsonElement decodeJson() {
        return currentObject();
    }

    @Override // kotlinx.serialization.p572b.AbstractC20378bl, kotlinx.serialization.Decoder
    public <T> T decodeSerializableValue(AbstractC20415d<T> deserializer) {
        C18524p.m3841c(deserializer, "deserializer");
        return (T) PolymorphicKt.decodeSerializableValuePolymorphic(this, deserializer);
    }

    public boolean decodeTaggedBoolean(String tag) {
        C18524p.m3841c(tag, "tag");
        JsonPrimitive value = getValue(tag);
        if (!getJson().configuration.isLenient$kotlinx_serialization_runtime()) {
            if (value == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.json.JsonLiteral");
            }
            if (((JsonLiteral) value).isString()) {
                throw JsonExceptionsKt.JsonDecodingException(-1, "Boolean literal for key '" + tag + "' should be unquoted. Use 'JsonConfiguration.isLenient = true' to accept non-compliant JSON", currentObject().toString());
            }
        }
        return value.getBoolean();
    }

    public byte decodeTaggedByte(String tag) {
        C18524p.m3841c(tag, "tag");
        try {
            return (byte) getValue(tag).getInt();
        } catch (Throwable th) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Failed to parse 'byte'", currentObject().toString());
        }
    }

    public char decodeTaggedChar(String tag) {
        C18524p.m3841c(tag, "tag");
        try {
            return C18425p.m4001h((CharSequence) getValue(tag).getContent());
        } catch (Throwable th) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Failed to parse 'char'", currentObject().toString());
        }
    }

    public double decodeTaggedDouble(String tag) {
        C18524p.m3841c(tag, "tag");
        try {
            return getValue(tag).getDouble();
        } catch (Throwable th) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Failed to parse 'double'", currentObject().toString());
        }
    }

    public int decodeTaggedEnum(String tag, SerialDescriptor enumDescription) {
        C18524p.m3841c(tag, "tag");
        C18524p.m3841c(enumDescription, "enumDescription");
        return C20457o.m657a(enumDescription, getValue(tag).getContent());
    }

    public float decodeTaggedFloat(String tag) {
        C18524p.m3841c(tag, "tag");
        try {
            return getValue(tag).getFloat();
        } catch (Throwable th) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Failed to parse 'float'", currentObject().toString());
        }
    }

    public int decodeTaggedInt(String tag) {
        C18524p.m3841c(tag, "tag");
        try {
            return getValue(tag).getInt();
        } catch (Throwable th) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Failed to parse 'int'", currentObject().toString());
        }
    }

    public long decodeTaggedLong(String tag) {
        C18524p.m3841c(tag, "tag");
        try {
            return getValue(tag).getLong();
        } catch (Throwable th) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Failed to parse 'long'", currentObject().toString());
        }
    }

    public boolean decodeTaggedNotNullMark(String tag) {
        C18524p.m3841c(tag, "tag");
        return currentElement(tag) != JsonNull.INSTANCE;
    }

    public Void decodeTaggedNull(String tag) {
        C18524p.m3841c(tag, "tag");
        return null;
    }

    public short decodeTaggedShort(String tag) {
        C18524p.m3841c(tag, "tag");
        try {
            return (short) getValue(tag).getInt();
        } catch (Throwable th) {
            throw JsonExceptionsKt.JsonDecodingException(-1, "Failed to parse 'short'", currentObject().toString());
        }
    }

    public String decodeTaggedString(String tag) {
        C18524p.m3841c(tag, "tag");
        JsonPrimitive value = getValue(tag);
        if (!getJson().configuration.isLenient$kotlinx_serialization_runtime()) {
            if (value == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.json.JsonLiteral");
            }
            if (!((JsonLiteral) value).isString()) {
                throw JsonExceptionsKt.JsonDecodingException(-1, "String literal for key '" + tag + "' should be quoted. Use 'JsonConfiguration.isLenient = true' to accept non-compliant JSON", currentObject().toString());
            }
        }
        return value.getContent();
    }

    public void decodeTaggedUnit(String tag) {
        C18524p.m3841c(tag, "tag");
    }

    @Override // kotlinx.serialization.p572b.AbstractC20378bl, kotlinx.serialization.AbstractC20327a
    public void endStructure(SerialDescriptor descriptor) {
        C18524p.m3841c(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.p572b.AbstractC20378bl, kotlinx.serialization.AbstractC20327a
    public AbstractC20447b getContext() {
        return getJson().getContext();
    }

    @Override // kotlinx.serialization.json.JsonInput
    public Json getJson() {
        return this.json;
    }

    @Override // kotlinx.serialization.p572b.AbstractC20378bl, kotlinx.serialization.Decoder
    public EnumC20471v getUpdateMode() {
        return this.configuration.getUpdateMode$kotlinx_serialization_runtime();
    }

    public JsonElement getValue() {
        return this.value;
    }

    protected JsonPrimitive getValue(String tag) {
        C18524p.m3841c(tag, "tag");
        JsonElement currentElement = currentElement(tag);
        JsonPrimitive jsonPrimitive = (JsonPrimitive) (!(currentElement instanceof JsonPrimitive) ? null : currentElement);
        if (jsonPrimitive != null) {
            return jsonPrimitive;
        }
        throw JsonExceptionsKt.JsonDecodingException(-1, "Expected JsonPrimitive at " + tag + ", found " + currentElement, currentObject().toString());
    }
}
