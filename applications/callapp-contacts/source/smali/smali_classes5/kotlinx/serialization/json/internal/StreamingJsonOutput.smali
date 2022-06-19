.class public final Lkotlinx/serialization/json/internal/StreamingJsonOutput;
.super Lkotlinx/serialization/a/b;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/json/JsonOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001FB3\u0008\u0010\u0012\n\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u00a2\u0006\u0002\u0010\u000cB-\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000b\u00a2\u0006\u0002\u0010\u000fJ1\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u001a\u0010 \u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030!0\u000b\"\u0006\u0012\u0002\u0008\u00030!H\u0016\u00a2\u0006\u0002\u0010\"J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0017H\u0016J\u0010\u0010&\u001a\u00020$2\u0006\u0010%\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020$2\u0006\u0010%\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020$2\u0006\u0010%\u001a\u00020+H\u0016J\u0018\u0010,\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u00020$2\u0006\u00100\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u00101\u001a\u00020$2\u0006\u0010%\u001a\u000202H\u0016J\u0010\u00103\u001a\u00020$2\u0006\u0010%\u001a\u00020.H\u0016J\u0010\u00104\u001a\u00020$2\u0006\u00105\u001a\u000206H\u0016J\u0010\u00107\u001a\u00020$2\u0006\u0010%\u001a\u000208H\u0016J\u0008\u00109\u001a\u00020$H\u0016J)\u0010:\u001a\u00020$\"\u0004\u0008\u0000\u0010;2\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u0002H;0=2\u0006\u0010%\u001a\u0002H;H\u0016\u00a2\u0006\u0002\u0010>J\u0010\u0010?\u001a\u00020$2\u0006\u0010%\u001a\u00020@H\u0016J\u0010\u0010A\u001a\u00020$2\u0006\u0010%\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010D\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010E\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StreamingJsonOutput;",
        "Lkotlinx/serialization/json/JsonOutput;",
        "Lkotlinx/serialization/builtins/AbstractEncoder;",
        "output",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "mode",
        "Lkotlinx/serialization/json/internal/WriteMode;",
        "modeReuseCache",
        "",
        "(Ljava/lang/StringBuilder;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonOutput;)V",
        "composer",
        "Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;",
        "(Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonOutput;)V",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "context",
        "Lkotlinx/serialization/modules/SerialModule;",
        "getContext",
        "()Lkotlinx/serialization/modules/SerialModule;",
        "forceQuoting",
        "",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "[Lkotlinx/serialization/json/JsonOutput;",
        "writePolymorphic",
        "beginStructure",
        "Lkotlinx/serialization/CompositeEncoder;",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "typeSerializers",
        "Lkotlinx/serialization/KSerializer;",
        "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;",
        "encodeBoolean",
        "",
        "value",
        "encodeByte",
        "",
        "encodeChar",
        "",
        "encodeDouble",
        "",
        "encodeElement",
        "index",
        "",
        "encodeEnum",
        "enumDescriptor",
        "encodeFloat",
        "",
        "encodeInt",
        "encodeJson",
        "element",
        "Lkotlinx/serialization/json/JsonElement;",
        "encodeLong",
        "",
        "encodeNull",
        "encodeSerializableValue",
        "T",
        "serializer",
        "Lkotlinx/serialization/SerializationStrategy;",
        "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V",
        "encodeShort",
        "",
        "encodeString",
        "",
        "encodeTypeInfo",
        "endStructure",
        "shouldEncodeElementDefault",
        "Composer",
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
.field private final composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

.field private final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field private final context:Lkotlinx/serialization/modules/b;

.field private forceQuoting:Z

.field private final json:Lkotlinx/serialization/json/Json;

.field private final mode:Lkotlinx/serialization/json/internal/WriteMode;

.field private final modeReuseCache:[Lkotlinx/serialization/json/JsonOutput;

.field private writePolymorphic:Z


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonOutput;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeReuseCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-direct {v0, p1, p2}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;-><init>(Ljava/lang/StringBuilder;Lkotlinx/serialization/json/Json;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;-><init>(Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonOutput;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonOutput;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeReuseCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lkotlinx/serialization/a/b;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->json:Lkotlinx/serialization/json/Json;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p4, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->modeReuseCache:[Lkotlinx/serialization/json/JsonOutput;

    .line 25
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getContext()Lkotlinx/serialization/modules/b;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->context:Lkotlinx/serialization/modules/b;

    .line 26
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    iget-object p1, p1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 33
    invoke-virtual {p3}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result p1

    .line 34
    aget-object p2, p4, p1

    if-nez p2, :cond_0

    aget-object p2, p4, p1

    move-object p3, p0

    check-cast p3, Lkotlinx/serialization/json/internal/StreamingJsonOutput;

    if-eq p2, p3, :cond_1

    .line 35
    :cond_0
    move-object p2, p0

    check-cast p2, Lkotlinx/serialization/json/JsonOutput;

    aput-object p2, p4, p1

    :cond_1
    return-void
.end method

.method private final encodeTypeInfo(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->nextItem()V

    .line 54
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator$kotlinx_serialization_runtime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(C)Ljava/lang/StringBuilder;

    .line 56
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->space()V

    .line 57
    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final varargs beginCollection(Lkotlinx/serialization/SerialDescriptor;I[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/SerialDescriptor;",
            "I[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;)",
            "Lkotlinx/serialization/CompositeEncoder;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeSerializers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1, p2, p3}, Lkotlinx/serialization/json/JsonOutput$DefaultImpls;->beginCollection(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/SerialDescriptor;I[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;

    move-result-object p1

    return-object p1
.end method

.method public final varargs beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;
    .locals 3
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

    .line 61
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object p2

    .line 62
    iget-char v0, p2, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    iget-char v1, p2, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(C)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->indent()V

    .line 67
    :cond_0
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->writePolymorphic:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->writePolymorphic:Z

    .line 69
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeTypeInfo(Lkotlinx/serialization/SerialDescriptor;)V

    .line 72
    :cond_1
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne p1, p2, :cond_2

    .line 73
    move-object p1, p0

    check-cast p1, Lkotlinx/serialization/CompositeEncoder;

    return-object p1

    .line 76
    :cond_2
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->modeReuseCache:[Lkotlinx/serialization/json/JsonOutput;

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v0

    aget-object p1, p1, v0

    if-eqz p1, :cond_3

    check-cast p1, Lkotlinx/serialization/CompositeEncoder;

    return-object p1

    :cond_3
    new-instance p1, Lkotlinx/serialization/json/internal/StreamingJsonOutput;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->modeReuseCache:[Lkotlinx/serialization/json/JsonOutput;

    invoke-direct {p1, v0, v1, p2, v2}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;-><init>(Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonOutput;)V

    check-cast p1, Lkotlinx/serialization/CompositeEncoder;

    return-object p1
.end method

.method public final encodeBoolean(Z)V
    .locals 1

    .line 136
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final encodeByte(B)V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(B)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final encodeChar(C)V
    .locals 0

    .line 172
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeDouble(D)V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(D)Ljava/lang/StringBuilder;

    .line 166
    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getSerializeSpecialFloatingPointValues$kotlinx_serialization_runtime()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 167
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iget-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    iget-object p2, p2, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "composer.sb.toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "double"

    invoke-static {p1, v0, p2}, Lkotlinx/serialization/json/JsonExceptionsKt;->InvalidFloatingPoint(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public final encodeElement(Lkotlinx/serialization/SerialDescriptor;I)Z
    .locals 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v1, Lkotlinx/serialization/json/internal/StreamingJsonOutput$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x0

    const/16 v4, 0x3a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    .line 120
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->getWritingFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(C)Ljava/lang/StringBuilder;

    .line 122
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->nextItem()V

    .line 123
    invoke-interface {p1, p2}, Lkotlinx/serialization/SerialDescriptor;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1, v4}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(C)Ljava/lang/StringBuilder;

    .line 125
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->space()V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 112
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    :cond_2
    if-ne p2, v2, :cond_8

    .line 114
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(C)Ljava/lang/StringBuilder;

    .line 115
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->space()V

    .line 116
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    goto :goto_1

    .line 95
    :cond_3
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->getWritingFirst()Z

    move-result p1

    if-nez p1, :cond_5

    .line 96
    rem-int/2addr p2, v5

    if-nez p2, :cond_4

    .line 97
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(C)Ljava/lang/StringBuilder;

    .line 98
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->nextItem()V

    const/4 v3, 0x1

    goto :goto_0

    .line 101
    :cond_4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1, v4}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(C)Ljava/lang/StringBuilder;

    .line 102
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->space()V

    .line 96
    :goto_0
    iput-boolean v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    goto :goto_1

    .line 106
    :cond_5
    iput-boolean v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    .line 107
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->nextItem()V

    goto :goto_1

    .line 90
    :cond_6
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->getWritingFirst()Z

    move-result p1

    if-nez p1, :cond_7

    .line 91
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1, v1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(C)Ljava/lang/StringBuilder;

    .line 92
    :cond_7
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->nextItem()V

    :cond_8
    :goto_1
    return v2
.end method

.method public final encodeEnum(Lkotlinx/serialization/SerialDescriptor;I)V
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-interface {p1, p2}, Lkotlinx/serialization/SerialDescriptor;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    return-void
.end method

.method public final encodeFloat(F)V
    .locals 2

    .line 157
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(F)Ljava/lang/StringBuilder;

    .line 158
    :goto_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getSerializeSpecialFloatingPointValues$kotlinx_serialization_runtime()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 159
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    iget-object v0, v0, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "composer.sb.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "float"

    invoke-static {p1, v1, v0}, Lkotlinx/serialization/json/JsonExceptionsKt;->InvalidFloatingPoint(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public final encodeInt(I)V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final encodeJson(Lkotlinx/serialization/json/JsonElement;)V
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    check-cast v0, Lkotlinx/serialization/r;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeLong(J)V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final encodeNonSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/Object;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1, p2, p3}, Lkotlinx/serialization/json/JsonOutput$DefaultImpls;->encodeNonSerializableElement(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/SerialDescriptor;ILjava/lang/Object;)V

    return-void
.end method

.method public final encodeNotNullMark()V
    .locals 0

    .line 14
    invoke-static {p0}, Lkotlinx/serialization/json/JsonOutput$DefaultImpls;->encodeNotNullMark(Lkotlinx/serialization/json/JsonOutput;)V

    return-void
.end method

.method public final encodeNull()V
    .locals 2

    .line 132
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final encodeNullableSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V
    .locals 1
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

    .line 14
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/json/JsonOutput$DefaultImpls;->encodeNullableSerializableValue(Lkotlinx/serialization/json/JsonOutput;Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V
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

    .line 226
    instance-of v0, p1, Lkotlinx/serialization/b/b;

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    iget-object v0, v0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseArrayPolymorphism$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/b/b;

    move-object v1, p0

    check-cast v1, Lkotlinx/serialization/Encoder;

    if-eqz p2, :cond_2

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/b/b;->a(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonOutput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v2

    iget-object v2, v2, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator$kotlinx_serialization_runtime()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lkotlinx/serialization/json/internal/PolymorphicKt;->access$validateIfSealed(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Ljava/lang/String;)V

    .line 234
    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object p1

    .line 235
    invoke-static {p1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->checkKind(Lkotlinx/serialization/p;)V

    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->writePolymorphic:Z

    .line 237
    invoke-interface {v0, v1, p2}, Lkotlinx/serialization/KSerializer;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void

    .line 232
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Any"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/Encoder;

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/r;->serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V

    return-void
.end method

.method public final encodeShort(S)V
    .locals 1

    .line 144
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->forceQuoting:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->encodeString(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(S)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final encodeString(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUnquotedPrint$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlinx/serialization/json/internal/StringOpsKt;->shouldBeQuoted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->printQuoted(Ljava/lang/String;)V

    return-void
.end method

.method public final endStructure(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p1, p1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->unIndent()V

    .line 82
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->nextItem()V

    .line 83
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->composer:Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char v0, v0, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/internal/StreamingJsonOutput$Composer;->print(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final getContext()Lkotlinx/serialization/modules/b;
    .locals 1

    .line 25
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->context:Lkotlinx/serialization/modules/b;

    return-object v0
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 15
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->json:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public final shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonOutput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->getEncodeDefaults$kotlinx_serialization_runtime()Z

    move-result p1

    return p1
.end method
