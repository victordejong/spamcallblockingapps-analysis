package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.AbstractC20415d;
import kotlinx.serialization.AbstractC20460r;
import kotlinx.serialization.AbstractC20461s;
import kotlinx.serialization.C20414c;
import kotlinx.serialization.C20416e;
import kotlinx.serialization.json.internal.ContextValidator;
import kotlinx.serialization.json.internal.JsonReader;
import kotlinx.serialization.json.internal.StreamingJsonInput;
import kotlinx.serialization.json.internal.StreamingJsonOutput;
import kotlinx.serialization.json.internal.TreeJsonInputKt;
import kotlinx.serialization.json.internal.TreeJsonOutputKt;
import kotlinx.serialization.json.internal.WriteMode;
import kotlinx.serialization.modules.AbstractC20447b;
import kotlinx.serialization.modules.C20446a;
import kotlinx.serialization.modules.C20448c;
import kotlinx.serialization.modules.C20451e;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� +2\u00020\u0001:\u0001+B \b\u0017\u0012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006¢\u0006\u0002\u0010\u0007B\u0007\b\u0017¢\u0006\u0002\u0010\bB\u000f\b\u0012\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0002\u0010\nB\u0019\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ'\u0010\u0013\u001a\u0002H\u0014\"\u0004\b��\u0010\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00140\u00162\u0006\u0010\u0017\u001a\u00020\u0018¢\u0006\u0002\u0010\u0019J\"\u0010\u0013\u001a\u0002H\u0014\"\n\b��\u0010\u0014\u0018\u0001*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0087\b¢\u0006\u0002\u0010\u001cJ)\u0010\u001d\u001a\u0002H\u0014\"\u0004\b��\u0010\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00140\u00162\u0006\u0010\u001e\u001a\u00020\u001fH\u0016¢\u0006\u0002\u0010 J\u000e\u0010!\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001fJ)\u0010\"\u001a\u00020\u001f\"\u0004\b��\u0010\u00142\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H\u00140$2\u0006\u0010%\u001a\u0002H\u0014H\u0016¢\u0006\u0002\u0010&J\"\u0010'\u001a\u00020\u0018\"\n\b��\u0010\u0014\u0018\u0001*\u00020\u001a2\u0006\u0010%\u001a\u0002H\u0014H\u0087\b¢\u0006\u0002\u0010(J'\u0010'\u001a\u00020\u0018\"\u0004\b��\u0010\u00142\f\u0010#\u001a\b\u0012\u0004\u0012\u0002H\u00140$2\u0006\u0010%\u001a\u0002H\u0014¢\u0006\u0002\u0010)J\b\u0010*\u001a\u00020\u0005H\u0002R\u0010\u0010\u000b\u001a\u00020\f8��X\u0081\u0004¢\u0006\u0002\n��R\u0016\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\n\n\u0002\b\u0012\u001a\u0004\b\u0010\u0010\u0011¨\u0006,"}, m4298d2 = {"Lkotlinx/serialization/json/Json;", "Lkotlinx/serialization/StringFormat;", "block", "Lkotlin/Function1;", "Lkotlinx/serialization/json/JsonBuilder;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;)V", "()V", "builder", "(Lkotlinx/serialization/json/JsonBuilder;)V", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "context", "Lkotlinx/serialization/modules/SerialModule;", "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerialModule;)V", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "context$1", "fromJson", "T", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "json", "Lkotlinx/serialization/json/JsonElement;", "(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;", "", "tree", "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;", "parse", "string", "", "(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;", "parseJson", "stringify", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;", "toJson", "(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;", "validateConfiguration", "Default", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/Json.class */
public final class Json implements AbstractC20461s {
    private static final String message = "Top-level JSON instances are deprecated for removal in the favour of user-configured one. You can either use a Json top-level object, configure your own instance  via 'Json {}' builder-like constructor, 'Json(JsonConfiguration)' constructor or by tweaking stable configuration 'Json(JsonConfiguration.Stable.copy(prettyPrint = true))'";
    public final JsonConfiguration configuration;
    private final AbstractC20447b context$1;
    public static final Default Default = new Default(null);
    private static final Json plain = new Json(new JsonConfiguration(false, false, false, false, false, false, false, null, true, null, null, 1791, null), null, 2, null);
    private static final Json unquoted = new Json(new JsonConfiguration(false, true, true, true, false, false, true, null, true, null, null, 1713, null), null, 2, null);
    private static final Json indented = new Json(new JsonConfiguration(false, false, false, false, false, true, false, null, true, null, null, 1759, null), null, 2, null);
    private static final Json nonstrict = new Json(new JsonConfiguration(false, true, true, true, false, false, false, null, true, null, null, 1777, null), null, 2, null);
    private static final Json jsonInstance = new Json(JsonConfiguration.Companion.getDefault(), null, 2, null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J'\u0010\u0018\u001a\u0002H\u0019\"\u0004\b��\u0010\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00190\u001b2\u0006\u0010\u001c\u001a\u00020\u001d¢\u0006\u0002\u0010\u001eJ\"\u0010\u0018\u001a\u0002H\u0019\"\n\b��\u0010\u0019\u0018\u0001*\u00020\u001f2\u0006\u0010 \u001a\u00020\u001dH\u0087\b¢\u0006\u0002\u0010!J)\u0010\"\u001a\u0002H\u0019\"\u0004\b��\u0010\u00192\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u0002H\u00190\u001b2\u0006\u0010#\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010$J\u000e\u0010%\u001a\u00020\u001d2\u0006\u0010#\u001a\u00020\u000eJ)\u0010&\u001a\u00020\u000e\"\u0004\b��\u0010\u00192\f\u0010'\u001a\b\u0012\u0004\u0012\u0002H\u00190(2\u0006\u0010)\u001a\u0002H\u0019H\u0016¢\u0006\u0002\u0010*J\"\u0010+\u001a\u00020\u001d\"\n\b��\u0010\u0019\u0018\u0001*\u00020\u001f2\u0006\u0010)\u001a\u0002H\u0019H\u0087\b¢\u0006\u0002\u0010,J'\u0010+\u001a\u00020\u001d\"\u0004\b��\u0010\u00192\f\u0010'\u001a\b\u0012\u0004\u0012\u0002H\u00190(2\u0006\u0010)\u001a\u0002H\u0019¢\u0006\u0002\u0010-R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n��R\u001c\u0010\u000f\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u000bR\u001c\u0010\u0012\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u000bR\u001c\u0010\u0015\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\u000b¨\u0006."}, m4298d2 = {"Lkotlinx/serialization/json/Json$Default;", "Lkotlinx/serialization/StringFormat;", "()V", "context", "Lkotlinx/serialization/modules/SerialModule;", "getContext", "()Lkotlinx/serialization/modules/SerialModule;", "indented", "Lkotlinx/serialization/json/Json;", "indented$annotations", "getIndented", "()Lkotlinx/serialization/json/Json;", "jsonInstance", "message", "", "nonstrict", "nonstrict$annotations", "getNonstrict", "plain", "plain$annotations", "getPlain", "unquoted", "unquoted$annotations", "getUnquoted", "fromJson", "T", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "json", "Lkotlinx/serialization/json/JsonElement;", "(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;", "", "tree", "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;", "parse", "string", "(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;", "parseJson", "stringify", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "value", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;", "toJson", "(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/Json$Default.class */
    public static final class Default implements AbstractC20461s {
        private Default() {
        }

        public /* synthetic */ Default(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void indented$annotations() {
        }

        public static /* synthetic */ void nonstrict$annotations() {
        }

        public static /* synthetic */ void plain$annotations() {
        }

        public static /* synthetic */ void unquoted$annotations() {
        }

        public final <T> T fromJson(AbstractC20415d<T> deserializer, JsonElement json) {
            C18524p.m3841c(deserializer, "deserializer");
            C18524p.m3841c(json, "json");
            return (T) TreeJsonInputKt.readJson(Json.jsonInstance, json, deserializer);
        }

        public final /* synthetic */ <T> T fromJson(JsonElement tree) {
            C18524p.m3841c(tree, "tree");
            Default r0 = this;
            AbstractC20447b context = r0.getContext();
            C18524p.m3844b();
            return (T) r0.fromJson(C20451e.m672a(context, C18496ac.m3882b(Object.class)), tree);
        }

        public final AbstractC20447b getContext() {
            return Json.jsonInstance.getContext();
        }

        public final Json getIndented() {
            return Json.indented;
        }

        public final Json getNonstrict() {
            return Json.nonstrict;
        }

        public final Json getPlain() {
            return Json.plain;
        }

        public final Json getUnquoted() {
            return Json.unquoted;
        }

        @Override // kotlinx.serialization.AbstractC20461s
        public final <T> T parse(AbstractC20415d<T> deserializer, String string) {
            C18524p.m3841c(deserializer, "deserializer");
            C18524p.m3841c(string, "string");
            return (T) Json.jsonInstance.parse(deserializer, string);
        }

        public final JsonElement parseJson(String string) {
            C18524p.m3841c(string, "string");
            return (JsonElement) parse(JsonElementSerializer.INSTANCE, string);
        }

        @Override // kotlinx.serialization.AbstractC20461s
        public final <T> String stringify(AbstractC20460r<? super T> serializer, T t) {
            C18524p.m3841c(serializer, "serializer");
            return Json.jsonInstance.stringify(serializer, t);
        }

        public final /* synthetic */ <T> JsonElement toJson(T value) {
            C18524p.m3841c(value, "value");
            Default r0 = this;
            AbstractC20447b context = r0.getContext();
            C18524p.m3844b();
            return r0.toJson(C20451e.m672a(context, C18496ac.m3882b(Object.class)), value);
        }

        public final <T> JsonElement toJson(AbstractC20460r<? super T> serializer, T t) {
            C18524p.m3841c(serializer, "serializer");
            return TreeJsonOutputKt.writeJson(Json.jsonInstance, t, serializer);
        }
    }

    public Json() {
        this(new JsonConfiguration(false, false, false, false, false, false, false, null, true, null, null, 1791, null), null, 2, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Json(kotlin.jvm.functions.Function1<? super kotlinx.serialization.json.JsonBuilder, kotlin.C20128v> r4) {
        /*
            r3 = this;
            r0 = r4
            java.lang.String r1 = "block"
            kotlin.jvm.internal.C18524p.m3841c(r0, r1)
            kotlinx.serialization.json.JsonBuilder r0 = new kotlinx.serialization.json.JsonBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r4
            r1 = r5
            java.lang.Object r0 = r0.invoke(r1)
            r0 = r3
            r1 = r5
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.Json.<init>(kotlin.jvm.functions.Function1):void");
    }

    private Json(JsonBuilder jsonBuilder) {
        this(jsonBuilder.buildConfiguration(), jsonBuilder.buildModule());
    }

    public Json(JsonConfiguration configuration, AbstractC20447b plus) {
        AbstractC20447b other;
        C18524p.m3841c(configuration, "configuration");
        C18524p.m3841c(plus, "context");
        this.configuration = configuration;
        other = JsonKt.defaultJsonModule;
        C18524p.m3841c(plus, "$this$plus");
        C18524p.m3841c(other, "other");
        this.context$1 = C20448c.m673a(new C20451e.C20452a(plus, other));
        validateConfiguration();
    }

    public /* synthetic */ Json(JsonConfiguration jsonConfiguration, AbstractC20447b abstractC20447b, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? JsonConfiguration.Companion.getStable() : jsonConfiguration, (i & 2) != 0 ? C20446a.f66947a : abstractC20447b);
    }

    private final void validateConfiguration() {
        if (this.configuration.getUseArrayPolymorphism$kotlinx_serialization_runtime()) {
            return;
        }
        getContext().mo668a(new ContextValidator(this.configuration.getClassDiscriminator$kotlinx_serialization_runtime()));
    }

    public final <T> T fromJson(AbstractC20415d<T> deserializer, JsonElement json) {
        C18524p.m3841c(deserializer, "deserializer");
        C18524p.m3841c(json, "json");
        return (T) TreeJsonInputKt.readJson(this, json, deserializer);
    }

    public final /* synthetic */ <T> T fromJson(JsonElement tree) {
        C18524p.m3841c(tree, "tree");
        AbstractC20447b context = getContext();
        C18524p.m3844b();
        return (T) fromJson(C20451e.m672a(context, C18496ac.m3882b(Object.class)), tree);
    }

    public final AbstractC20447b getContext() {
        return this.context$1;
    }

    @Override // kotlinx.serialization.AbstractC20461s
    public final <T> T parse(AbstractC20415d<T> deserializer, String string) {
        C18524p.m3841c(deserializer, "deserializer");
        C18524p.m3841c(string, "string");
        JsonReader jsonReader = new JsonReader(string);
        T t = (T) C20414c.m693a(new StreamingJsonInput(this, WriteMode.OBJ, jsonReader), deserializer);
        if (jsonReader.isDone()) {
            return t;
        }
        throw new IllegalStateException("Reader has not consumed the whole input: ".concat(String.valueOf(jsonReader)).toString());
    }

    public final JsonElement parseJson(String string) {
        C18524p.m3841c(string, "string");
        return (JsonElement) parse(JsonElementSerializer.INSTANCE, string);
    }

    @Override // kotlinx.serialization.AbstractC20461s
    public final <T> String stringify(AbstractC20460r<? super T> serializer, T t) {
        C18524p.m3841c(serializer, "serializer");
        StringBuilder sb = new StringBuilder();
        C20416e.m692a(new StreamingJsonOutput(sb, this, WriteMode.OBJ, new JsonOutput[WriteMode.values().length]), serializer, t);
        String sb2 = sb.toString();
        C18524p.m3849a((Object) sb2, "result.toString()");
        return sb2;
    }

    public final /* synthetic */ <T> JsonElement toJson(T value) {
        C18524p.m3841c(value, "value");
        AbstractC20447b context = getContext();
        C18524p.m3844b();
        return toJson(C20451e.m672a(context, C18496ac.m3882b(Object.class)), value);
    }

    public final <T> JsonElement toJson(AbstractC20460r<? super T> serializer, T t) {
        C18524p.m3841c(serializer, "serializer");
        return TreeJsonOutputKt.writeJson(this, t, serializer);
    }
}
