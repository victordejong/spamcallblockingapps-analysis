.class abstract Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;
.super Lkotlinx/serialization/b/at;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/JsonInput;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00082\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J1\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u001a\u0010\u001c\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u001e0\u001d\"\u0006\u0012\u0002\u0008\u00030\u001eH\u0016\u00a2\u0006\u0002\u0010\u001fJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020!H\u0016J\u0010\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020!H$J\u0008\u0010&\u001a\u00020\u0006H\u0002J\u0008\u0010\'\u001a\u00020\u0006H\u0016J!\u0010(\u001a\u0002H)\"\u0004\u0008\u0000\u0010)2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u0002H)0+H\u0016\u00a2\u0006\u0002\u0010,J\u0010\u0010-\u001a\u00020.2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010/\u001a\u0002002\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u00101\u001a\u0002022\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u00103\u001a\u0002042\u0006\u0010%\u001a\u00020!H\u0016J\u0018\u00105\u001a\u0002062\u0006\u0010%\u001a\u00020!2\u0006\u00107\u001a\u00020\u001bH\u0016J\u0010\u00108\u001a\u0002092\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010:\u001a\u0002062\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010;\u001a\u00020<2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010=\u001a\u00020.2\u0006\u0010%\u001a\u00020!H\u0016J\u0012\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010@\u001a\u00020A2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010B\u001a\u00020!2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010C\u001a\u00020D2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010E\u001a\u00020D2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u0016\u001a\u00020F2\u0006\u0010%\u001a\u00020!H\u0014J=\u0010G\u001a\u0002H)\"\u0008\u0008\u0000\u0010)*\u00020H*\u00020F2\u0006\u0010G\u001a\u00020!2\u0017\u0010I\u001a\u0013\u0012\u0004\u0012\u00020F\u0012\u0004\u0012\u0002H)0J\u00a2\u0006\u0002\u0008KH\u0082\u0008\u00a2\u0006\u0002\u0010LR\u0010\u0010\u0008\u001a\u00020\t8\u0004X\u0085\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u0082\u0001\u0003MNO\u00a8\u0006P"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;",
        "Lkotlinx/serialization/internal/NamedValueDecoder;",
        "Lkotlinx/serialization/json/JsonInput;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "value",
        "Lkotlinx/serialization/json/JsonElement;",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;)V",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "context",
        "Lkotlinx/serialization/modules/SerialModule;",
        "getContext",
        "()Lkotlinx/serialization/modules/SerialModule;",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "updateMode",
        "Lkotlinx/serialization/UpdateMode;",
        "updateMode$annotations",
        "()V",
        "getUpdateMode",
        "()Lkotlinx/serialization/UpdateMode;",
        "getValue",
        "()Lkotlinx/serialization/json/JsonElement;",
        "beginStructure",
        "Lkotlinx/serialization/CompositeDecoder;",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "typeParams",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeDecoder;",
        "composeName",
        "",
        "parentName",
        "childName",
        "currentElement",
        "tag",
        "currentObject",
        "decodeJson",
        "decodeSerializableValue",
        "T",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;",
        "decodeTaggedBoolean",
        "",
        "decodeTaggedByte",
        "",
        "decodeTaggedChar",
        "",
        "decodeTaggedDouble",
        "",
        "decodeTaggedEnum",
        "",
        "enumDescription",
        "decodeTaggedFloat",
        "",
        "decodeTaggedInt",
        "decodeTaggedLong",
        "",
        "decodeTaggedNotNullMark",
        "decodeTaggedNull",
        "",
        "decodeTaggedShort",
        "",
        "decodeTaggedString",
        "decodeTaggedUnit",
        "",
        "endStructure",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        "primitive",
        "",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "Lkotlinx/serialization/json/internal/JsonPrimitiveInput;",
        "Lkotlinx/serialization/json/internal/JsonTreeInput;",
        "Lkotlinx/serialization/json/internal/JsonTreeListInput;",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field protected final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field private final json:Lkotlinx/serialization/json/Json;

.field private final value:Lkotlinx/serialization/json/JsonElement;


# direct methods
.method private constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, v0, v1, v0}, Lkotlinx/serialization/b/at;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->json:Lkotlinx/serialization/json/Json;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->value:Lkotlinx/serialization/json/JsonElement;

    .line 33
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    iget-object p1, p1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public static final synthetic access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;)Lkotlinx/serialization/json/JsonElement;
    .locals 0

    .line 24
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method private final currentObject()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getCurrentTagOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private final primitive(Lkotlinx/serialization/json/JsonPrimitive;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonPrimitive;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/json/JsonPrimitive;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 108
    :try_start_0
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, -0x1

    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static synthetic updateMode$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public varargs beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/a;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    .line 51
    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v0

    .line 52
    sget-object v1, Lkotlinx/serialization/t$b;->a:Lkotlinx/serialization/t$b;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " but found "

    const-string v3, "Expected "

    if-nez v1, :cond_8

    instance-of v1, v0, Lkotlinx/serialization/h;

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 53
    :cond_0
    sget-object v1, Lkotlinx/serialization/t$c;->a:Lkotlinx/serialization/t$c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    invoke-interface {p1, v1}, Lkotlinx/serialization/SerialDescriptor;->b(I)Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    .line 214
    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v1

    .line 215
    instance-of v4, v1, Lkotlinx/serialization/j;

    if-nez v4, :cond_4

    sget-object v4, Lkotlinx/serialization/u$c;->b:Lkotlinx/serialization/u$c;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowStructuredMapKeys$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    .line 221
    instance-of v0, p2, Lkotlinx/serialization/json/JsonArray;

    if-eqz v0, :cond_2

    .line 222
    check-cast p2, Lkotlinx/serialization/json/JsonArray;

    .line 56
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeListInput;

    invoke-direct {v0, p1, p2}, Lkotlinx/serialization/json/internal/JsonTreeListInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonArray;)V

    goto :goto_1

    .line 221
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lkotlinx/serialization/json/JsonArray;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 223
    :cond_3
    invoke-static {p1}, Lkotlinx/serialization/json/JsonExceptionsKt;->InvalidKeyKindException(Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 55
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    .line 217
    instance-of v0, p2, Lkotlinx/serialization/json/JsonObject;

    if-eqz v0, :cond_5

    .line 218
    check-cast p2, Lkotlinx/serialization/json/JsonObject;

    .line 55
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeMapInput;

    invoke-direct {v0, p1, p2}, Lkotlinx/serialization/json/internal/JsonTreeMapInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V

    .line 215
    :goto_1
    check-cast v0, Lkotlinx/serialization/a;

    return-object v0

    .line 217
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 58
    :cond_6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    .line 224
    instance-of v0, p2, Lkotlinx/serialization/json/JsonObject;

    if-eqz v0, :cond_7

    .line 225
    check-cast p2, Lkotlinx/serialization/json/JsonObject;

    .line 58
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeInput;

    invoke-direct {v0, p1, p2}, Lkotlinx/serialization/json/internal/JsonTreeInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V

    check-cast v0, Lkotlinx/serialization/a;

    return-object v0

    .line 224
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 52
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    .line 211
    instance-of v0, p2, Lkotlinx/serialization/json/JsonArray;

    if-eqz v0, :cond_9

    .line 212
    check-cast p2, Lkotlinx/serialization/json/JsonArray;

    .line 52
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeListInput;

    invoke-direct {v0, p1, p2}, Lkotlinx/serialization/json/internal/JsonTreeListInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonArray;)V

    check-cast v0, Lkotlinx/serialization/a;

    return-object v0

    .line 211
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lkotlinx/serialization/json/JsonArray;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "parentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "childName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method protected abstract currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
.end method

.method public decodeJson()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 37
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public decodeSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/d<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->decodeSerializableValuePolymorphic(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeTaggedBoolean(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public decodeTaggedBoolean(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient$kotlinx_serialization_runtime()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 90
    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/JsonLiteral;

    .line 91
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonLiteral;->isString()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Boolean literal for key \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' should be unquoted. Use \'JsonConfiguration.isLenient = true\' to accept non-compliant JSON"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, p1, v1}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 90
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.serialization.json.JsonLiteral"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getBoolean()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic decodeTaggedByte(Ljava/lang/Object;)B
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedByte(Ljava/lang/String;)B

    move-result p1

    return p1
.end method

.method public decodeTaggedByte(Ljava/lang/String;)B
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-byte p1, p1

    return p1

    :catchall_0
    const/4 p1, -0x1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic decodeTaggedChar(Ljava/lang/Object;)C
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedChar(Ljava/lang/String;)C

    move-result p1

    return p1
.end method

.method public decodeTaggedChar(Ljava/lang/String;)C
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/h/p;->h(Ljava/lang/CharSequence;)C

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, -0x1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic decodeTaggedDouble(Ljava/lang/Object;)D
    .locals 2

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public decodeTaggedDouble(Ljava/lang/String;)D
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getDouble()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const/4 p1, -0x1

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic decodeTaggedEnum(Ljava/lang/Object;Lkotlinx/serialization/SerialDescriptor;)I
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedEnum(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)I

    move-result p1

    return p1
.end method

.method public decodeTaggedEnum(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;)I
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumDescription"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlinx/serialization/o;->a(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic decodeTaggedFloat(Ljava/lang/Object;)F
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public decodeTaggedFloat(Ljava/lang/String;)F
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getFloat()F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, -0x1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic decodeTaggedInt(Ljava/lang/Object;)I
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public decodeTaggedInt(Ljava/lang/String;)I
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    const/4 p1, -0x1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic decodeTaggedLong(Ljava/lang/Object;)J
    .locals 2

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public decodeTaggedLong(Ljava/lang/String;)J
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getLong()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const/4 p1, -0x1

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic decodeTaggedNotNullMark(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedNotNullMark(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public decodeTaggedNotNullMark(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    sget-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic decodeTaggedNull(Ljava/lang/Object;)Ljava/lang/Void;
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedNull(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public decodeTaggedNull(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic decodeTaggedShort(Ljava/lang/Object;)S
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedShort(Ljava/lang/String;)S

    move-result p1

    return p1
.end method

.method public decodeTaggedShort(Ljava/lang/String;)S
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getInt()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-short p1, p1

    return p1

    :catchall_0
    const/4 p1, -0x1

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to parse \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->access$currentObject(Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic decodeTaggedString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeTaggedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient$kotlinx_serialization_runtime()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    .line 117
    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/JsonLiteral;

    .line 118
    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonLiteral;->isString()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String literal for key \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' should be quoted. Use \'JsonConfiguration.isLenient = true\' to accept non-compliant JSON"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v0, p1, v1}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 117
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.serialization.json.JsonLiteral"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeTaggedUnit(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->decodeTaggedUnit(Ljava/lang/String;)V

    return-void
.end method

.method public decodeTaggedUnit(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public endStructure(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getContext()Lkotlinx/serialization/modules/b;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getContext()Lkotlinx/serialization/modules/b;

    move-result-object v0

    return-object v0
.end method

.method public getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 25
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->json:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public getUpdateMode()Lkotlinx/serialization/v;
    .locals 1

    .line 41
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUpdateMode$kotlinx_serialization_runtime()Lkotlinx/serialization/v;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 26
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->value:Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method protected getValue(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;
    .locals 4

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lkotlinx/serialization/json/JsonPrimitive;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, -0x1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected JsonPrimitive at "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;->currentObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v1, p1, v0}, Lkotlinx/serialization/json/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
