package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.p;
import kotlinx.serialization.CompositeEncoder;
import kotlinx.serialization.Encoder;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialDescriptor;
import kotlinx.serialization.a.b;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonExceptionsKt;
import kotlinx.serialization.json.JsonOutput;
import kotlinx.serialization.r;
import org.apache.commons.lang3.StringUtils;
@Metadata(bv = {1, 0, 3}, d1 = {"��®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n��\n\u0002\u0010\f\n��\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\n\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\b��\u0018��2\u00020\u00012\u00020\u0002:\u0001FB3\b\u0010\u0012\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b¢\u0006\u0002\u0010\fB-\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b¢\u0006\u0002\u0010\u000fJ1\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u001a\u0010 \u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030!0\u000b\"\u0006\u0012\u0002\b\u00030!H\u0016¢\u0006\u0002\u0010\"J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0017H\u0016J\u0010\u0010&\u001a\u00020$2\u0006\u0010%\u001a\u00020'H\u0016J\u0010\u0010(\u001a\u00020$2\u0006\u0010%\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020$2\u0006\u0010%\u001a\u00020+H\u0016J\u0018\u0010,\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u00020$2\u0006\u00100\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u00101\u001a\u00020$2\u0006\u0010%\u001a\u000202H\u0016J\u0010\u00103\u001a\u00020$2\u0006\u0010%\u001a\u00020.H\u0016J\u0010\u00104\u001a\u00020$2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00107\u001a\u00020$2\u0006\u0010%\u001a\u000208H\u0016J\b\u00109\u001a\u00020$H\u0016J)\u0010:\u001a\u00020$\"\u0004\b��\u0010;2\f\u0010<\u001a\b\u0012\u0004\u0012\u0002H;0=2\u0006\u0010%\u001a\u0002H;H\u0016¢\u0006\u0002\u0010>J\u0010\u0010?\u001a\u00020$2\u0006\u0010%\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020$2\u0006\u0010%\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010D\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010E\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n��R\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000bX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n��¨\u0006G"}, d2 = {"Lkotlinx/serialization/json/internal/StreamingJsonOutput;", "Lkotlinx/serialization/json/JsonOutput;", "Lkotlinx/serialization/builtins/AbstractEncoder;", "output", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "json", "Lkotlinx/serialization/json/Json;", "mode", "Lkotlinx/serialization/json/internal/WriteMode;", "modeReuseCache", "", "(Ljava/lang/StringBuilder;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonOutput;)V", "composer", "Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;", "(Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonOutput;)V", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "context", "Lkotlinx/serialization/modules/SerialModule;", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "forceQuoting", "", "getJson", "()Lkotlinx/serialization/json/Json;", "[Lkotlinx/serialization/json/JsonOutput;", "writePolymorphic", "beginStructure", "Lkotlinx/serialization/CompositeEncoder;", "descriptor", "Lkotlinx/serialization/SerialDescriptor;", "typeSerializers", "Lkotlinx/serialization/KSerializer;", "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;", "encodeBoolean", "", "value", "encodeByte", "", "encodeChar", "", "encodeDouble", "", "encodeElement", "index", "", "encodeEnum", "enumDescriptor", "encodeFloat", "", "encodeInt", "encodeJson", "element", "Lkotlinx/serialization/json/JsonElement;", "encodeLong", "", "encodeNull", "encodeSerializableValue", "T", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeShort", "", "encodeString", "", "encodeTypeInfo", "endStructure", "shouldEncodeElementDefault", "Composer", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/StreamingJsonOutput.class */
public final class StreamingJsonOutput extends b implements JsonOutput {
    private final Composer composer;
    private final JsonConfiguration configuration;
    private final kotlinx.serialization.modules.b context;
    private boolean forceQuoting;
    private final Json json;
    private final WriteMode mode;
    private final JsonOutput[] modeReuseCache;
    private boolean writePolymorphic;

    @Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\u0010\f\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\u0010\u000e\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u0019\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u000bJ\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u0016J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u0017J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u0018J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\tJ\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u0019J\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u001aJ\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0014\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001bJ\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0002\u001a\u00060\u0003j\u0002`\u00048��X\u0081\u0004¢\u0006\u0002\n��R\u001e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000e¨\u0006 "}, d2 = {"Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "json", "Lkotlinx/serialization/json/Json;", "(Ljava/lang/StringBuilder;Lkotlinx/serialization/json/Json;)V", "level", "", "<set-?>", "", "writingFirst", "getWritingFirst", "()Z", "indent", "", "nextItem", "print", "kotlin.jvm.PlatformType", "v", "", "", "", "", "", "", "", "printQuoted", "value", "space", "unIndent", "kotlinx-serialization-runtime"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/StreamingJsonOutput$Composer.class */
    public static final class Composer {
        private final Json json;
        private int level;
        public final StringBuilder sb;
        private boolean writingFirst = true;

        public Composer(StringBuilder sb, Json json) {
            p.c(sb, "sb");
            p.c(json, "json");
            this.sb = sb;
            this.json = json;
        }

        public final boolean getWritingFirst() {
            return this.writingFirst;
        }

        public final void indent() {
            this.writingFirst = true;
            this.level++;
        }

        public final void nextItem() {
            this.writingFirst = false;
            if (this.json.configuration.getPrettyPrint$kotlinx_serialization_runtime()) {
                print(StringUtils.LF);
                int i = this.level;
                for (int i2 = 0; i2 < i; i2++) {
                    print(this.json.configuration.getIndent$kotlinx_serialization_runtime());
                }
            }
        }

        public final StringBuilder print(byte b2) {
            StringBuilder sb = this.sb;
            sb.append(Byte.valueOf(b2));
            return sb;
        }

        public final StringBuilder print(char c2) {
            StringBuilder sb = this.sb;
            sb.append(c2);
            return sb;
        }

        public final StringBuilder print(double d2) {
            StringBuilder sb = this.sb;
            sb.append(d2);
            return sb;
        }

        public final StringBuilder print(float f) {
            StringBuilder sb = this.sb;
            sb.append(f);
            return sb;
        }

        public final StringBuilder print(int i) {
            StringBuilder sb = this.sb;
            sb.append(i);
            return sb;
        }

        public final StringBuilder print(long j) {
            StringBuilder sb = this.sb;
            sb.append(j);
            return sb;
        }

        public final StringBuilder print(String v) {
            p.c(v, "v");
            StringBuilder sb = this.sb;
            sb.append(v);
            return sb;
        }

        public final StringBuilder print(short s) {
            StringBuilder sb = this.sb;
            sb.append(Short.valueOf(s));
            return sb;
        }

        public final StringBuilder print(boolean z) {
            StringBuilder sb = this.sb;
            sb.append(z);
            return sb;
        }

        public final void printQuoted(String value) {
            p.c(value, "value");
            StringOpsKt.printQuoted(this.sb, value);
        }

        public final void space() {
            if (this.json.configuration.getPrettyPrint$kotlinx_serialization_runtime()) {
                print(' ');
            }
        }

        public final void unIndent() {
            this.level--;
        }
    }

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/StreamingJsonOutput$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WriteMode.values().length];
            $EnumSwitchMapping$0 = iArr;
            iArr[WriteMode.LIST.ordinal()] = 1;
            iArr[WriteMode.MAP.ordinal()] = 2;
            iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StreamingJsonOutput(StringBuilder output, Json json, WriteMode mode, JsonOutput[] modeReuseCache) {
        this(new Composer(output, json), json, mode, modeReuseCache);
        p.c(output, "output");
        p.c(json, "json");
        p.c(mode, "mode");
        p.c(modeReuseCache, "modeReuseCache");
    }

    public StreamingJsonOutput(Composer composer, Json json, WriteMode mode, JsonOutput[] modeReuseCache) {
        p.c(composer, "composer");
        p.c(json, "json");
        p.c(mode, "mode");
        p.c(modeReuseCache, "modeReuseCache");
        this.composer = composer;
        this.json = json;
        this.mode = mode;
        this.modeReuseCache = modeReuseCache;
        this.context = getJson().getContext();
        this.configuration = getJson().configuration;
        int ordinal = mode.ordinal();
        if (modeReuseCache[ordinal] != null || modeReuseCache[ordinal] != this) {
            modeReuseCache[ordinal] = this;
        }
    }

    private final void encodeTypeInfo(SerialDescriptor serialDescriptor) {
        this.composer.nextItem();
        encodeString(this.configuration.getClassDiscriminator$kotlinx_serialization_runtime());
        this.composer.print(':');
        this.composer.space();
        encodeString(serialDescriptor.a());
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final CompositeEncoder beginCollection(SerialDescriptor descriptor, int i, KSerializer<?>... typeSerializers) {
        p.c(descriptor, "descriptor");
        p.c(typeSerializers, "typeSerializers");
        return JsonOutput.DefaultImpls.beginCollection(this, descriptor, i, typeSerializers);
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final CompositeEncoder beginStructure(SerialDescriptor descriptor, KSerializer<?>... typeSerializers) {
        p.c(descriptor, "descriptor");
        p.c(typeSerializers, "typeSerializers");
        WriteMode switchMode = WriteModeKt.switchMode(getJson(), descriptor);
        if (switchMode.begin != 0) {
            this.composer.print(switchMode.begin);
            this.composer.indent();
        }
        if (this.writePolymorphic) {
            this.writePolymorphic = false;
            encodeTypeInfo(descriptor);
        }
        if (this.mode == switchMode) {
            return this;
        }
        JsonOutput jsonOutput = this.modeReuseCache[switchMode.ordinal()];
        return jsonOutput != null ? jsonOutput : new StreamingJsonOutput(this.composer, getJson(), switchMode, this.modeReuseCache);
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeBoolean(boolean z) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(z));
        } else {
            this.composer.print(z);
        }
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeByte(byte b2) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) b2));
        } else {
            this.composer.print(b2);
        }
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeChar(char c2) {
        encodeString(String.valueOf(c2));
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeDouble(double d2) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(d2));
        } else {
            this.composer.print(d2);
        }
        if (!this.configuration.getSerializeSpecialFloatingPointValues$kotlinx_serialization_runtime()) {
            if (!(!Double.isInfinite(d2) && !Double.isNaN(d2))) {
                Double valueOf = Double.valueOf(d2);
                String sb = this.composer.sb.toString();
                p.a((Object) sb, "composer.sb.toString()");
                throw JsonExceptionsKt.InvalidFloatingPoint(valueOf, "double", sb);
            }
        }
    }

    @Override // kotlinx.serialization.a.b
    public final boolean encodeElement(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.mode.ordinal()];
        if (i2 != 1) {
            boolean z = false;
            if (i2 != 2) {
                if (i2 != 3) {
                    if (!this.composer.getWritingFirst()) {
                        this.composer.print(',');
                    }
                    this.composer.nextItem();
                    encodeString(descriptor.a(i));
                    this.composer.print(':');
                    this.composer.space();
                    return true;
                }
                if (i == 0) {
                    this.forceQuoting = true;
                }
                if (i != 1) {
                    return true;
                }
                this.composer.print(',');
                this.composer.space();
                this.forceQuoting = false;
                return true;
            } else if (!this.composer.getWritingFirst()) {
                if (i % 2 == 0) {
                    this.composer.print(',');
                    this.composer.nextItem();
                    z = true;
                } else {
                    this.composer.print(':');
                    this.composer.space();
                }
                this.forceQuoting = z;
                return true;
            } else {
                this.forceQuoting = true;
                this.composer.nextItem();
                return true;
            }
        } else {
            if (!this.composer.getWritingFirst()) {
                this.composer.print(',');
            }
            this.composer.nextItem();
            return true;
        }
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeEnum(SerialDescriptor enumDescriptor, int i) {
        p.c(enumDescriptor, "enumDescriptor");
        encodeString(enumDescriptor.a(i));
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeFloat(float f) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(f));
        } else {
            this.composer.print(f);
        }
        if (!this.configuration.getSerializeSpecialFloatingPointValues$kotlinx_serialization_runtime()) {
            if (!(!Float.isInfinite(f) && !Float.isNaN(f))) {
                Float valueOf = Float.valueOf(f);
                String sb = this.composer.sb.toString();
                p.a((Object) sb, "composer.sb.toString()");
                throw JsonExceptionsKt.InvalidFloatingPoint(valueOf, "float", sb);
            }
        }
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeInt(int i) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(i));
        } else {
            this.composer.print(i);
        }
    }

    @Override // kotlinx.serialization.json.JsonOutput
    public final void encodeJson(JsonElement element) {
        p.c(element, "element");
        encodeSerializableValue(JsonElementSerializer.INSTANCE, element);
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeLong(long j) {
        if (this.forceQuoting) {
            encodeString(String.valueOf(j));
        } else {
            this.composer.print(j);
        }
    }

    @Override // kotlinx.serialization.a.b
    public final void encodeNonSerializableElement(SerialDescriptor descriptor, int i, Object value) {
        p.c(descriptor, "descriptor");
        p.c(value, "value");
        JsonOutput.DefaultImpls.encodeNonSerializableElement(this, descriptor, i, value);
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeNotNullMark() {
        JsonOutput.DefaultImpls.encodeNotNullMark(this);
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeNull() {
        this.composer.print(JsonReaderKt.NULL);
    }

    @Override // kotlinx.serialization.a.b
    public final <T> void encodeNullableSerializableValue(r<? super T> serializer, T t) {
        p.c(serializer, "serializer");
        JsonOutput.DefaultImpls.encodeNullableSerializableValue(this, serializer, t);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final <T> void encodeSerializableValue(r<? super T> serializer, T t) {
        p.c(serializer, "serializer");
        if (!(serializer instanceof kotlinx.serialization.b.b) || getJson().configuration.getUseArrayPolymorphism$kotlinx_serialization_runtime()) {
            serializer.serialize(this, t);
            return;
        }
        kotlinx.serialization.b.b bVar = (kotlinx.serialization.b.b) serializer;
        StreamingJsonOutput streamingJsonOutput = this;
        if (t != 0) {
            KSerializer<? extends T> a2 = bVar.a((Encoder) streamingJsonOutput, (StreamingJsonOutput) t);
            if (a2 != null) {
                PolymorphicKt.validateIfSealed((KSerializer) serializer, a2, getJson().configuration.getClassDiscriminator$kotlinx_serialization_runtime());
                PolymorphicKt.checkKind(a2.getDescriptor().b());
                this.writePolymorphic = true;
                a2.serialize(streamingJsonOutput, t);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>");
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Any");
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeShort(short s) {
        if (this.forceQuoting) {
            encodeString(String.valueOf((int) s));
        } else {
            this.composer.print(s);
        }
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final void encodeString(String value) {
        p.c(value, "value");
        if (!this.configuration.getUnquotedPrint$kotlinx_serialization_runtime() || StringOpsKt.shouldBeQuoted(value)) {
            this.composer.printQuoted(value);
        } else {
            this.composer.print(value);
        }
    }

    @Override // kotlinx.serialization.CompositeEncoder
    public final void endStructure(SerialDescriptor descriptor) {
        p.c(descriptor, "descriptor");
        if (this.mode.end != 0) {
            this.composer.unIndent();
            this.composer.nextItem();
            this.composer.print(this.mode.end);
        }
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.Encoder
    public final kotlinx.serialization.modules.b getContext() {
        return this.context;
    }

    @Override // kotlinx.serialization.json.JsonOutput
    public final Json getJson() {
        return this.json;
    }

    @Override // kotlinx.serialization.a.b, kotlinx.serialization.CompositeEncoder
    public final boolean shouldEncodeElementDefault(SerialDescriptor descriptor, int i) {
        p.c(descriptor, "descriptor");
        return this.configuration.getEncodeDefaults$kotlinx_serialization_runtime();
    }
}
