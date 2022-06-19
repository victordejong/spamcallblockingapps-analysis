.class abstract Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;
.super Lkotlinx/serialization/b/au;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/JsonOutput;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00082\u0018\u00002\u00020\u00012\u00020\u0002B#\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0010\tJ1\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u001a\u0010\u001a\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u001c0\u001b\"\u0006\u0012\u0002\u0008\u00030\u001cH\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001fH\u0016J\u0010\u0010\"\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u0007H\u0016J)\u0010$\u001a\u00020\u0008\"\u0004\u0008\u0000\u0010%2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u0002H%0\'2\u0006\u0010(\u001a\u0002H%H\u0016\u00a2\u0006\u0002\u0010)J\u0018\u0010*\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u0015H\u0016J\u0018\u0010,\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020/H\u0016J\u0018\u00100\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u000201H\u0016J \u00102\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u00103\u001a\u00020\u00192\u0006\u00104\u001a\u000205H\u0016J\u0018\u00106\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u000207H\u0016J\u0018\u00108\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u000205H\u0016J\u0018\u00109\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001fH\u0016J\u0018\u0010<\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020=H\u0016J\u0018\u0010>\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020\u001fH\u0016J\u0018\u0010?\u001a\u00020\u00082\u0006\u0010+\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010B\u001a\u00020\u0007H&J\u0018\u0010C\u001a\u00020\u00082\u0006\u0010D\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u0007H&J\u0018\u0010E\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010F\u001a\u000205H\u0016R\u0010\u0010\n\u001a\u00020\u000b8\u0004X\u0085\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0001\u0003GHI\u00a8\u0006J"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;",
        "Lkotlinx/serialization/internal/NamedValueEncoder;",
        "Lkotlinx/serialization/json/JsonOutput;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "nodeConsumer",
        "Lkotlin/Function1;",
        "Lkotlinx/serialization/json/JsonElement;",
        "",
        "(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "context",
        "Lkotlinx/serialization/modules/SerialModule;",
        "getContext",
        "()Lkotlinx/serialization/modules/SerialModule;",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "getNodeConsumer",
        "()Lkotlin/jvm/functions/Function1;",
        "writePolymorphic",
        "",
        "beginStructure",
        "Lkotlinx/serialization/CompositeEncoder;",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "typeSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;",
        "composeName",
        "",
        "parentName",
        "childName",
        "encodeJson",
        "element",
        "encodeSerializableValue",
        "T",
        "serializer",
        "Lkotlinx/serialization/SerializationStrategy;",
        "value",
        "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V",
        "encodeTaggedBoolean",
        "tag",
        "encodeTaggedByte",
        "",
        "encodeTaggedChar",
        "",
        "encodeTaggedDouble",
        "",
        "encodeTaggedEnum",
        "enumDescription",
        "ordinal",
        "",
        "encodeTaggedFloat",
        "",
        "encodeTaggedInt",
        "encodeTaggedLong",
        "",
        "encodeTaggedNull",
        "encodeTaggedShort",
        "",
        "encodeTaggedString",
        "encodeTaggedValue",
        "",
        "endEncode",
        "getCurrent",
        "putElement",
        "key",
        "shouldEncodeElementDefault",
        "index",
        "Lkotlinx/serialization/json/internal/JsonPrimitiveOutput;",
        "Lkotlinx/serialization/json/internal/JsonTreeOutput;",
        "Lkotlinx/serialization/json/internal/JsonTreeListOutput;",
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

.field private final nodeConsumer:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlinx/serialization/json/JsonElement;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private writePolymorphic:Z


# direct methods
.method private constructor <init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/json/JsonElement;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 24
    invoke-direct {p0, v0, v1, v0}, Lkotlinx/serialization/b/au;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->json:Lkotlinx/serialization/json/Json;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->nodeConsumer:Lkotlin/jvm/functions/Function1;

    .line 30
    iget-object p1, p1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;-><init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getCurrentTag$p(Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->getCurrentTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public varargs beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/CompositeEncoder;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeSerializers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->getCurrentTagOrNull()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->nodeConsumer:Lkotlin/jvm/functions/Function1;

    goto :goto_0

    .line 92
    :cond_0
    new-instance p2, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput$beginStructure$consumer$1;

    invoke-direct {p2, p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput$beginStructure$consumer$1;-><init>(Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 94
    :goto_0
    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v0

    .line 95
    sget-object v1, Lkotlinx/serialization/t$b;->a:Lkotlinx/serialization/t$b;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    instance-of v1, v0, Lkotlinx/serialization/h;

    if-eqz v1, :cond_1

    goto :goto_3

    .line 96
    :cond_1
    sget-object v1, Lkotlinx/serialization/t$c;->a:Lkotlinx/serialization/t$c;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->json:Lkotlinx/serialization/json/Json;

    .line 208
    invoke-interface {p1, v2}, Lkotlinx/serialization/SerialDescriptor;->b(I)Lkotlinx/serialization/SerialDescriptor;

    move-result-object v1

    .line 209
    invoke-interface {v1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v3

    .line 210
    instance-of v4, v3, Lkotlinx/serialization/j;

    if-nez v4, :cond_4

    sget-object v4, Lkotlinx/serialization/u$c;->b:Lkotlinx/serialization/u$c;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 212
    :cond_2
    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowStructuredMapKeys$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeListOutput;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->json:Lkotlinx/serialization/json/Json;

    invoke-direct {v0, v1, p2}, Lkotlinx/serialization/json/internal/JsonTreeListOutput;-><init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    .line 215
    :cond_3
    invoke-static {v1}, Lkotlinx/serialization/json/JsonExceptionsKt;->InvalidKeyKindException(Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 98
    :cond_4
    :goto_1
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->json:Lkotlinx/serialization/json/Json;

    invoke-direct {v0, v1, p2}, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;-><init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V

    .line 210
    :goto_2
    check-cast v0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;

    goto :goto_4

    .line 101
    :cond_5
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeOutput;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->json:Lkotlinx/serialization/json/Json;

    invoke-direct {v0, v1, p2}, Lkotlinx/serialization/json/internal/JsonTreeOutput;-><init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;

    goto :goto_4

    .line 95
    :cond_6
    :goto_3
    new-instance v0, Lkotlinx/serialization/json/internal/JsonTreeListOutput;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->json:Lkotlinx/serialization/json/Json;

    invoke-direct {v0, v1, p2}, Lkotlinx/serialization/json/internal/JsonTreeListOutput;-><init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;

    .line 104
    :goto_4
    iget-boolean p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->writePolymorphic:Z

    if-eqz p2, :cond_7

    .line 105
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->writePolymorphic:Z

    .line 106
    iget-object p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator$kotlinx_serialization_runtime()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementsKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {v0, p2, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 109
    :cond_7
    check-cast v0, Lkotlinx/serialization/CompositeEncoder;

    return-object v0
.end method

.method public composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "parentName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "childName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public encodeJson(Lkotlinx/serialization/json/JsonElement;)V
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    check-cast v0, Lkotlinx/serialization/r;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->getCurrentTagOrNull()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lkotlinx/serialization/r;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/j;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lkotlinx/serialization/r;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/u$c;->b:Lkotlinx/serialization/u$c;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/JsonPrimitiveOutput;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->json:Lkotlinx/serialization/json/Json;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->nodeConsumer:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonPrimitiveOutput;-><init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V

    .line 63
    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/JsonPrimitiveOutput;->encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

    .line 64
    invoke-interface {p1}, Lkotlinx/serialization/r;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/JsonPrimitiveOutput;->endEncode(Lkotlinx/serialization/SerialDescriptor;)V

    return-void

    .line 195
    :cond_1
    :goto_0
    instance-of v0, p1, Lkotlinx/serialization/b/b;

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseArrayPolymorphism$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 200
    :cond_2
    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/b/b;

    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/Encoder;

    if-eqz p2, :cond_4

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/b/b;->a(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    iget-object v2, v2, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator$kotlinx_serialization_runtime()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lkotlinx/serialization/json/internal/PolymorphicKt;->access$validateIfSealed(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Ljava/lang/String;)V

    .line 203
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object p1

    .line 204
    invoke-static {p1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->checkKind(Lkotlinx/serialization/p;)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->writePolymorphic:Z

    .line 206
    invoke-interface {v0, v1, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void

    .line 201
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 200
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Any"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :cond_5
    :goto_1
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/Encoder;

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/r;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeTaggedBoolean(Ljava/lang/Object;Z)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public encodeTaggedBoolean(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Z)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public bridge synthetic encodeTaggedByte(Ljava/lang/Object;B)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedByte(Ljava/lang/String;B)V

    return-void
.end method

.method public encodeTaggedByte(Ljava/lang/String;B)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Number;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public bridge synthetic encodeTaggedChar(Ljava/lang/Object;C)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedChar(Ljava/lang/String;C)V

    return-void
.end method

.method public encodeTaggedChar(Ljava/lang/String;C)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public bridge synthetic encodeTaggedDouble(Ljava/lang/Object;D)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public encodeTaggedDouble(Ljava/lang/String;D)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Number;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 71
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getSerializeSpecialFloatingPointValues$kotlinx_serialization_runtime()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->getCurrent()Lkotlinx/serialization/json/JsonElement;

    move-result-object p3

    invoke-virtual {p3}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "double"

    invoke-static {p2, p1, v0, p3}, Lkotlinx/serialization/json/JsonExceptionsKt;->InvalidFloatingPoint(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic encodeTaggedEnum(Ljava/lang/Object;Lkotlinx/serialization/SerialDescriptor;I)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedEnum(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;I)V

    return-void
.end method

.method public encodeTaggedEnum(Ljava/lang/String;Lkotlinx/serialization/SerialDescriptor;I)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enumDescription"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-interface {p2, p3}, Lkotlinx/serialization/SerialDescriptor;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public bridge synthetic encodeTaggedFloat(Ljava/lang/Object;F)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public encodeTaggedFloat(Ljava/lang/String;F)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Number;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    .line 53
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getSerializeSpecialFloatingPointValues$kotlinx_serialization_runtime()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->getCurrent()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "float"

    invoke-static {p2, p1, v1, v0}, Lkotlinx/serialization/json/JsonExceptionsKt;->InvalidFloatingPoint(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic encodeTaggedInt(Ljava/lang/Object;I)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedInt(Ljava/lang/String;I)V

    return-void
.end method

.method public encodeTaggedInt(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Number;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public bridge synthetic encodeTaggedLong(Ljava/lang/Object;J)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedLong(Ljava/lang/String;J)V

    return-void
.end method

.method public encodeTaggedLong(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Number;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public bridge synthetic encodeTaggedNull(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedNull(Ljava/lang/String;)V

    return-void
.end method

.method public encodeTaggedNull(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public bridge synthetic encodeTaggedShort(Ljava/lang/Object;S)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedShort(Ljava/lang/String;S)V

    return-void
.end method

.method public encodeTaggedShort(Ljava/lang/String;S)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Number;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public bridge synthetic encodeTaggedString(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public encodeTaggedString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public bridge synthetic encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->encodeTaggedValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeTaggedValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lkotlinx/serialization/json/JsonLiteral;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/String;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    return-void
.end method

.method public endEncode(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->nodeConsumer:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->getCurrent()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getContext()Lkotlinx/serialization/modules/b;
    .locals 1

    .line 27
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->json:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0}, Lkotlinx/serialization/json/Json;->getContext()Lkotlinx/serialization/modules/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCurrent()Lkotlinx/serialization/json/JsonElement;
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 22
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->json:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public final getNodeConsumer()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlinx/serialization/json/JsonElement;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->nodeConsumer:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public abstract putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V
.end method

.method public shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonTreeOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->getEncodeDefaults$kotlinx_serialization_runtime()Z

    move-result p1

    return p1
.end method
