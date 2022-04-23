package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.a.a;
import kotlinx.serialization.d;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonInput;
import kotlinx.serialization.modules.b;
import kotlinx.serialization.o;
import kotlinx.serialization.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��º\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0005\n��\n\u0002\u0010\f\n��\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\n\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b��\u0018��2\u00020\u00012\u00020\u0002B\u001f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ1\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u001a\u0010\u001e\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030 0\u001f\"\u0006\u0012\u0002\b\u00030 H\u0016¢\u0006\u0002\u0010!J\b\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020'H\u0016J\b\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u001dH\u0016J\b\u0010-\u001a\u00020.H\u0016J\b\u0010/\u001a\u00020\u0011H\u0016J\b\u00100\u001a\u000201H\u0016J\u0010\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020%H\u0002J\b\u00104\u001a\u000205H\u0016J\u0010\u00106\u001a\u00020\u00112\u0006\u00103\u001a\u00020%H\u0002J\b\u00107\u001a\u00020#H\u0016J\n\u00108\u001a\u0004\u0018\u000109H\u0016J\u0018\u0010:\u001a\u00020\u00112\u0006\u00103\u001a\u00020%2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J!\u0010;\u001a\u0002H<\"\u0004\b��\u0010<2\f\u0010=\u001a\b\u0012\u0004\u0012\u0002H<0>H\u0016¢\u0006\u0002\u0010?J\b\u0010@\u001a\u00020AH\u0016J\b\u0010B\u001a\u00020CH\u0016J\u0010\u0010D\u001a\u00020E2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J9\u0010F\u001a\u0002H<\"\u0004\b��\u0010<*\u00020C2\u0006\u0010G\u001a\u00020C2\u0017\u0010H\u001a\u0013\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u0002H<0I¢\u0006\u0002\bJH\u0082\b¢\u0006\u0002\u0010KR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\f\u001a\u00020\rX\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u00020\b8��X\u0081\u0004¢\u0006\u0002\n��R\u001a\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006L"}, d2 = {"Lkotlinx/serialization/json/internal/StreamingJsonInput;", "Lkotlinx/serialization/json/JsonInput;", "Lkotlinx/serialization/builtins/AbstractDecoder;", "json", "Lkotlinx/serialization/json/Json;", "mode", "Lkotlinx/serialization/json/internal/WriteMode;", "reader", "Lkotlinx/serialization/json/internal/JsonReader;", "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonReader;)V", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "context", "Lkotlinx/serialization/modules/SerialModule;", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "currentIndex", "", "getJson", "()Lkotlinx/serialization/json/Json;", "updateMode", "Lkotlinx/serialization/UpdateMode;", "updateMode$annotations", "()V", "getUpdateMode", "()Lkotlinx/serialization/UpdateMode;", "beginStructure", "Lkotlinx/serialization/CompositeDecoder;", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "typeParams", "", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeDecoder;", "decodeBoolean", "", "decodeByte", "", "decodeChar", "", "decodeDouble", "", "decodeElementIndex", "decodeEnum", "enumDescriptor", "decodeFloat", "", "decodeInt", "decodeJson", "Lkotlinx/serialization/json/JsonElement;", "decodeListIndex", "tokenClass", "decodeLong", "", "decodeMapIndex", "decodeNotNullMark", "decodeNull", "", "decodeObjectIndex", "decodeSerializableValue", "T", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "decodeShort", "", "decodeString", "", "endStructure", "", "parse", "type", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/StreamingJsonInput.class */
public final class StreamingJsonInput extends a implements JsonInput {
    private final Json json;
    private final WriteMode mode;
    public final JsonReader reader;
    private final b context = getJson().getContext();
    private int currentIndex = -1;
    private final JsonConfiguration configuration = getJson().configuration;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/StreamingJsonInput$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[WriteMode.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[WriteMode.LIST.ordinal()] = 1;
            iArr[WriteMode.MAP.ordinal()] = 2;
            iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            int[] iArr2 = new int[WriteMode.values().length];
            $EnumSwitchMapping$1 = iArr2;
            iArr2[WriteMode.LIST.ordinal()] = 1;
            iArr2[WriteMode.MAP.ordinal()] = 2;
            iArr2[WriteMode.POLY_OBJ.ordinal()] = 3;
        }
    }

    public StreamingJsonInput(Json json, WriteMode mode, JsonReader reader) {
        p.c(json, "json");
        p.c(mode, "mode");
        p.c(reader, "reader");
        this.json = json;
        this.mode = mode;
        this.reader = reader;
    }

    private final int decodeListIndex(byte b2) {
        if (!(b2 == 4 || this.currentIndex == -1)) {
            JsonReader jsonReader = this.reader;
            if (jsonReader.tokenClass != 9) {
                jsonReader.fail("Expected end of the array or comma", jsonReader.tokenPosition);
                throw null;
            }
        }
        boolean z = true;
        if (!this.reader.getCanBeginValue()) {
            JsonReader jsonReader2 = this.reader;
            if (b2 == 4) {
                z = false;
            }
            int i = jsonReader2.currentPosition;
            if (z) {
                return -1;
            }
            jsonReader2.fail("Unexpected trailing comma", i);
            throw null;
        }
        int i2 = this.currentIndex + 1;
        this.currentIndex = i2;
        return i2;
    }

    private final int decodeMapIndex(byte b2) {
        boolean z = true;
        if (b2 != 4 && this.currentIndex % 2 == 1) {
            JsonReader jsonReader = this.reader;
            if (jsonReader.tokenClass != 7) {
                jsonReader.fail("Expected end of the object or comma", jsonReader.tokenPosition);
                throw null;
            }
        }
        if (this.currentIndex % 2 == 0) {
            JsonReader jsonReader2 = this.reader;
            if (jsonReader2.tokenClass == 5) {
                this.reader.nextToken();
            } else {
                jsonReader2.fail("Expected ':' after the key", jsonReader2.tokenPosition);
                throw null;
            }
        }
        if (!this.reader.getCanBeginValue()) {
            JsonReader jsonReader3 = this.reader;
            if (b2 == 4) {
                z = false;
            }
            int i = jsonReader3.currentPosition;
            if (z) {
                return -1;
            }
            jsonReader3.fail("Unexpected trailing comma", i);
            throw null;
        }
        int i2 = this.currentIndex + 1;
        this.currentIndex = i2;
        return i2;
    }

    private final int decodeObjectIndex(byte b2, SerialDescriptor serialDescriptor) {
        if (b2 != 4 || this.reader.getCanBeginValue()) {
            while (this.reader.getCanBeginValue()) {
                this.currentIndex++;
                String decodeString = decodeString();
                JsonReader jsonReader = this.reader;
                if (jsonReader.tokenClass == 5) {
                    this.reader.nextToken();
                    int a2 = serialDescriptor.a(decodeString);
                    if (a2 != -3) {
                        return a2;
                    }
                    if (this.configuration.getIgnoreUnknownKeys$kotlinx_serialization_runtime()) {
                        this.reader.skipElement();
                        if (this.reader.tokenClass == 4) {
                            this.reader.nextToken();
                            JsonReader jsonReader2 = this.reader;
                            boolean canBeginValue = jsonReader2.getCanBeginValue();
                            int i = this.reader.currentPosition;
                            if (!canBeginValue) {
                                jsonReader2.fail("Unexpected trailing comma", i);
                                throw null;
                            }
                        }
                    } else {
                        JsonReader.fail$default(this.reader, "Encountered an unknown key '" + decodeString + "'. You can enable 'JsonConfiguration.ignoreUnknownKeys' property to ignore unknown keys", 0, 2, null);
                        throw null;
                    }
                } else {
                    jsonReader.fail("Expected ':'", jsonReader.tokenPosition);
                    throw null;
                }
            }
            return -1;
        }
        JsonReader.fail$default(this.reader, "Unexpected trailing comma", 0, 2, null);
        throw null;
    }

    private final <T> T parse(String str, String str2, Function1<? super String, ? extends T> function1) {
        try {
            return (T) function1.invoke(str);
        } catch (Throwable th) {
            JsonReader jsonReader = this.reader;
            JsonReader.fail$default(jsonReader, "Failed to parse '" + str2 + '\'', 0, 2, null);
            throw null;
        }
    }

    public static /* synthetic */ void updateMode$annotations() {
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final kotlinx.serialization.a beginStructure(SerialDescriptor descriptor, KSerializer<?>... typeParams) {
        p.c(descriptor, "descriptor");
        p.c(typeParams, "typeParams");
        WriteMode switchMode = WriteModeKt.switchMode(getJson(), descriptor);
        if (switchMode.begin != 0) {
            JsonReader jsonReader = this.reader;
            if (jsonReader.tokenClass == switchMode.beginTc) {
                this.reader.nextToken();
            } else {
                jsonReader.fail("Expected '" + switchMode.begin + ", kind: " + descriptor.b() + '\'', jsonReader.tokenPosition);
                throw null;
            }
        }
        int i = WhenMappings.$EnumSwitchMapping$0[switchMode.ordinal()];
        return (i == 1 || i == 2 || i == 3) ? new StreamingJsonInput(getJson(), switchMode, this.reader) : this.mode == switchMode ? this : new StreamingJsonInput(getJson(), switchMode, this.reader);
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final boolean decodeBoolean() {
        return this.configuration.isLenient$kotlinx_serialization_runtime() ? StringOpsKt.toBooleanStrict(this.reader.takeString()) : StringOpsKt.toBooleanStrict(this.reader.takeBooleanStringUnquoted());
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final byte decodeByte() {
        try {
            return Byte.parseByte(this.reader.takeString());
        } catch (Throwable th) {
            JsonReader jsonReader = this.reader;
            JsonReader.fail$default(jsonReader, "Failed to parse 'byte'", 0, 2, null);
            throw null;
        }
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final char decodeChar() {
        try {
            return kotlin.h.p.h((CharSequence) this.reader.takeString());
        } catch (Throwable th) {
            JsonReader jsonReader = this.reader;
            JsonReader.fail$default(jsonReader, "Failed to parse 'char'", 0, 2, null);
            throw null;
        }
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.a
    public final int decodeCollectionSize(SerialDescriptor descriptor) {
        p.c(descriptor, "descriptor");
        return JsonInput.DefaultImpls.decodeCollectionSize(this, descriptor);
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final double decodeDouble() {
        try {
            return Double.parseDouble(this.reader.takeString());
        } catch (Throwable th) {
            JsonReader jsonReader = this.reader;
            JsonReader.fail$default(jsonReader, "Failed to parse 'double'", 0, 2, null);
            throw null;
        }
    }

    @Override // kotlinx.serialization.a
    public final int decodeElementIndex(SerialDescriptor descriptor) {
        p.c(descriptor, "descriptor");
        byte b2 = this.reader.tokenClass;
        if (b2 == 4) {
            JsonReader jsonReader = this.reader;
            boolean z = this.currentIndex != -1;
            int i = jsonReader.currentPosition;
            if (z) {
                this.reader.nextToken();
            } else {
                jsonReader.fail("Unexpected leading comma", i);
                throw null;
            }
        }
        int i2 = WhenMappings.$EnumSwitchMapping$1[this.mode.ordinal()];
        if (i2 == 1) {
            return decodeListIndex(b2);
        }
        if (i2 == 2) {
            return decodeMapIndex(b2);
        }
        if (i2 != 3) {
            return decodeObjectIndex(b2, descriptor);
        }
        int i3 = this.currentIndex + 1;
        this.currentIndex = i3;
        if (i3 != 0) {
            return i3 != 1 ? -1 : 1;
        }
        return 0;
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final int decodeEnum(SerialDescriptor enumDescriptor) {
        p.c(enumDescriptor, "enumDescriptor");
        return o.a(enumDescriptor, decodeString());
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final float decodeFloat() {
        try {
            return Float.parseFloat(this.reader.takeString());
        } catch (Throwable th) {
            JsonReader jsonReader = this.reader;
            JsonReader.fail$default(jsonReader, "Failed to parse 'float'", 0, 2, null);
            throw null;
        }
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final int decodeInt() {
        try {
            return Integer.parseInt(this.reader.takeString());
        } catch (Throwable th) {
            JsonReader jsonReader = this.reader;
            JsonReader.fail$default(jsonReader, "Failed to parse 'int'", 0, 2, null);
            throw null;
        }
    }

    @Override // kotlinx.serialization.json.JsonInput
    public final JsonElement decodeJson() {
        return new JsonParser(getJson().configuration, this.reader).read();
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final long decodeLong() {
        try {
            return Long.parseLong(this.reader.takeString());
        } catch (Throwable th) {
            JsonReader jsonReader = this.reader;
            JsonReader.fail$default(jsonReader, "Failed to parse 'long'", 0, 2, null);
            throw null;
        }
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final boolean decodeNotNullMark() {
        return this.reader.tokenClass != 10;
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final Void decodeNull() {
        JsonReader jsonReader = this.reader;
        if (jsonReader.tokenClass == 10) {
            this.reader.nextToken();
            return null;
        }
        jsonReader.fail("Expected 'null' literal", jsonReader.tokenPosition);
        throw null;
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final <T> T decodeNullableSerializableValue(d<T> deserializer) {
        p.c(deserializer, "deserializer");
        return (T) JsonInput.DefaultImpls.decodeNullableSerializableValue(this, deserializer);
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.a
    public final boolean decodeSequentially() {
        return JsonInput.DefaultImpls.decodeSequentially(this);
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final <T> T decodeSerializableValue(d<T> deserializer) {
        p.c(deserializer, "deserializer");
        return (T) PolymorphicKt.decodeSerializableValuePolymorphic(this, deserializer);
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final short decodeShort() {
        try {
            return Short.parseShort(this.reader.takeString());
        } catch (Throwable th) {
            JsonReader jsonReader = this.reader;
            JsonReader.fail$default(jsonReader, "Failed to parse 'short'", 0, 2, null);
            throw null;
        }
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final String decodeString() {
        return this.configuration.isLenient$kotlinx_serialization_runtime() ? this.reader.takeString() : this.reader.takeStringQuoted();
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.a
    public final void endStructure(SerialDescriptor descriptor) {
        p.c(descriptor, "descriptor");
        if (this.mode.end != 0) {
            JsonReader jsonReader = this.reader;
            if (jsonReader.tokenClass == this.mode.endTc) {
                this.reader.nextToken();
                return;
            }
            jsonReader.fail("Expected '" + this.mode.end + '\'', jsonReader.tokenPosition);
            throw null;
        }
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.a
    public final b getContext() {
        return this.context;
    }

    @Override // kotlinx.serialization.json.JsonInput
    public final Json getJson() {
        return this.json;
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final v getUpdateMode() {
        return this.configuration.getUpdateMode$kotlinx_serialization_runtime();
    }

    @Override // kotlinx.serialization.a.a
    public final <T> T updateNullableSerializableValue(d<T> deserializer, T t) {
        p.c(deserializer, "deserializer");
        return (T) JsonInput.DefaultImpls.updateNullableSerializableValue(this, deserializer, t);
    }

    @Override // kotlinx.serialization.a.a, kotlinx.serialization.Decoder
    public final <T> T updateSerializableValue(d<T> deserializer, T t) {
        p.c(deserializer, "deserializer");
        return (T) JsonInput.DefaultImpls.updateSerializableValue(this, deserializer, t);
    }
}
