.class public final Lkotlinx/serialization/json/internal/StreamingJsonInput;
.super Lkotlinx/serialization/a/a;
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
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ1\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u001a\u0010\u001e\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030 0\u001f\"\u0006\u0012\u0002\u0008\u00030 H\u0016\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020\'H\u0016J\u0008\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u001dH\u0016J\u0008\u0010-\u001a\u00020.H\u0016J\u0008\u0010/\u001a\u00020\u0011H\u0016J\u0008\u00100\u001a\u000201H\u0016J\u0010\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020%H\u0002J\u0008\u00104\u001a\u000205H\u0016J\u0010\u00106\u001a\u00020\u00112\u0006\u00103\u001a\u00020%H\u0002J\u0008\u00107\u001a\u00020#H\u0016J\n\u00108\u001a\u0004\u0018\u000109H\u0016J\u0018\u0010:\u001a\u00020\u00112\u0006\u00103\u001a\u00020%2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J!\u0010;\u001a\u0002H<\"\u0004\u0008\u0000\u0010<2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u0002H<0>H\u0016\u00a2\u0006\u0002\u0010?J\u0008\u0010@\u001a\u00020AH\u0016J\u0008\u0010B\u001a\u00020CH\u0016J\u0010\u0010D\u001a\u00020E2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J9\u0010F\u001a\u0002H<\"\u0004\u0008\u0000\u0010<*\u00020C2\u0006\u0010G\u001a\u00020C2\u0017\u0010H\u001a\u0013\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u0002H<0I\u00a2\u0006\u0002\u0008JH\u0082\u0008\u00a2\u0006\u0002\u0010KR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006L"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/StreamingJsonInput;",
        "Lkotlinx/serialization/json/JsonInput;",
        "Lkotlinx/serialization/builtins/AbstractDecoder;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "mode",
        "Lkotlinx/serialization/json/internal/WriteMode;",
        "reader",
        "Lkotlinx/serialization/json/internal/JsonReader;",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonReader;)V",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "context",
        "Lkotlinx/serialization/modules/SerialModule;",
        "getContext",
        "()Lkotlinx/serialization/modules/SerialModule;",
        "currentIndex",
        "",
        "getJson",
        "()Lkotlinx/serialization/json/Json;",
        "updateMode",
        "Lkotlinx/serialization/UpdateMode;",
        "updateMode$annotations",
        "()V",
        "getUpdateMode",
        "()Lkotlinx/serialization/UpdateMode;",
        "beginStructure",
        "Lkotlinx/serialization/CompositeDecoder;",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "typeParams",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeDecoder;",
        "decodeBoolean",
        "",
        "decodeByte",
        "",
        "decodeChar",
        "",
        "decodeDouble",
        "",
        "decodeElementIndex",
        "decodeEnum",
        "enumDescriptor",
        "decodeFloat",
        "",
        "decodeInt",
        "decodeJson",
        "Lkotlinx/serialization/json/JsonElement;",
        "decodeListIndex",
        "tokenClass",
        "decodeLong",
        "",
        "decodeMapIndex",
        "decodeNotNullMark",
        "decodeNull",
        "",
        "decodeObjectIndex",
        "decodeSerializableValue",
        "T",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;",
        "decodeShort",
        "",
        "decodeString",
        "",
        "endStructure",
        "",
        "parse",
        "type",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
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
.field private final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field private final context:Lkotlinx/serialization/modules/b;

.field private currentIndex:I

.field private final json:Lkotlinx/serialization/json/Json;

.field private final mode:Lkotlinx/serialization/json/internal/WriteMode;

.field public final reader:Lkotlinx/serialization/json/internal/JsonReader;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonReader;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lkotlinx/serialization/a/a;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->json:Lkotlinx/serialization/json/Json;

    iput-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iput-object p3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 22
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getContext()Lkotlinx/serialization/modules/b;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->context:Lkotlinx/serialization/modules/b;

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    .line 24
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    iget-object p1, p1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iput-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    return-void
.end method

.method private final decodeListIndex(B)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    .line 142
    iget v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    if-eq v3, v1, :cond_1

    .line 143
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 217
    iget-byte v4, v3, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v3}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p1

    const-string v1, "Expected end of the array or comma"

    invoke-virtual {v3, v1, p1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v0

    .line 145
    :cond_1
    :goto_0
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 146
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 219
    :goto_1
    iget p1, v3, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v4, :cond_3

    return v1

    :cond_3
    const-string v1, "Unexpected trailing comma"

    .line 146
    invoke-virtual {v3, v1, p1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v0

    .line 149
    :cond_4
    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    add-int/2addr p1, v4

    iput p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    return p1
.end method

.method private final decodeMapIndex(B)I
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    .line 93
    iget v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v2, :cond_1

    .line 94
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 206
    iget-byte v4, v3, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {v3}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p1

    const-string v0, "Expected end of the object or comma"

    invoke-virtual {v3, v0, p1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v1

    .line 96
    :cond_1
    :goto_0
    iget v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    .line 97
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 208
    iget-byte v4, v3, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 98
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    goto :goto_1

    .line 97
    :cond_2
    invoke-static {v3}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p1

    const-string v0, "Expected \':\' after the key"

    invoke-virtual {v3, v0, p1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v1

    .line 100
    :cond_3
    :goto_1
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v3}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v3

    if-nez v3, :cond_6

    .line 101
    iget-object v3, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 210
    :goto_2
    iget p1, v3, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v2, :cond_5

    const/4 p1, -0x1

    return p1

    :cond_5
    const-string v0, "Unexpected trailing comma"

    .line 101
    invoke-virtual {v3, v0, p1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v1

    .line 104
    :cond_6
    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    return p1
.end method

.method private final decodeObjectIndex(BLkotlinx/serialization/SerialDescriptor;)I
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Unexpected trailing comma"

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-ne p1, v3, :cond_1

    .line 109
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-static {p1, v2, v1, v0, v4}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v4

    .line 113
    :cond_1
    :goto_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 114
    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    .line 115
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->decodeString()Ljava/lang/String;

    move-result-object p1

    .line 116
    iget-object v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 213
    iget-byte v6, v5, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 117
    iget-object v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v5}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 118
    invoke-interface {p2, p1}, Lkotlinx/serialization/SerialDescriptor;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x3

    if-eq v5, v6, :cond_2

    return v5

    .line 123
    :cond_2
    iget-object v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v5}, Lkotlinx/serialization/json/JsonConfiguration;->getIgnoreUnknownKeys$kotlinx_serialization_runtime()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 129
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->skipElement()V

    .line 132
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte p1, p1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne p1, v3, :cond_1

    .line 133
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 134
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v5

    iget-object v6, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v6, v6, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2, v6}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v4

    .line 124
    :cond_4
    iget-object p2, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encountered an unknown key \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. You can enable \'JsonConfiguration.ignoreUnknownKeys\' property to ignore unknown keys"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p2, p1, v1, v0, v4}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v4

    .line 116
    :cond_5
    invoke-static {v5}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p1

    const-string p2, "Expected \':\'"

    invoke-virtual {v5, p2, p1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v4

    :cond_6
    const/4 p1, -0x1

    return p1
.end method

.method private final parse(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 187
    :try_start_0
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 189
    :catchall_0
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v1
.end method

.method public static synthetic updateMode$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final varargs beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/a;
    .locals 3
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

    .line 37
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlinx/serialization/json/internal/WriteModeKt;->switchMode(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object p2

    .line 38
    iget-char v0, p2, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, p2, Lkotlinx/serialization/json/internal/WriteMode;->beginTc:B

    .line 198
    iget-byte v2, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v2, v1, :cond_0

    .line 40
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char p2, p2, Lkotlinx/serialization/json/internal/WriteMode;->begin:C

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, ", kind: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1

    .line 42
    :cond_1
    :goto_0
    sget-object p1, Lkotlinx/serialization/json/internal/StreamingJsonInput$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    .line 48
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    if-ne p1, p2, :cond_2

    move-object p1, p0

    goto :goto_1

    .line 49
    :cond_2
    new-instance p1, Lkotlinx/serialization/json/internal/StreamingJsonInput;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-direct {p1, v0, p2, v1}, Lkotlinx/serialization/json/internal/StreamingJsonInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonReader;)V

    goto :goto_1

    .line 43
    :cond_3
    new-instance p1, Lkotlinx/serialization/json/internal/StreamingJsonInput;

    .line 44
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 43
    invoke-direct {p1, v0, p2, v1}, Lkotlinx/serialization/json/internal/StreamingJsonInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonReader;)V

    .line 48
    :goto_1
    check-cast p1, Lkotlinx/serialization/a;

    return-object p1
.end method

.method public final decodeBoolean()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/internal/StringOpsKt;->toBooleanStrict(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeBooleanStringUnquoted()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/internal/StringOpsKt;->toBooleanStrict(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final decodeByte()B
    .locals 5

    .line 169
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 225
    :catchall_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "byte"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v4
.end method

.method public final decodeChar()C
    .locals 5

    .line 175
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/h/p;->h(Ljava/lang/CharSequence;)C

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 249
    :catchall_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "char"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v4
.end method

.method public final decodeCollectionSize(Lkotlinx/serialization/SerialDescriptor;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1}, Lkotlinx/serialization/json/JsonInput$DefaultImpls;->decodeCollectionSize(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/SerialDescriptor;)I

    move-result p1

    return p1
.end method

.method public final decodeDouble()D
    .locals 5

    .line 174
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 245
    :catchall_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "double"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v4
.end method

.method public final decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I
    .locals 7

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v0, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 73
    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v5, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    if-eq v5, v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget v6, v4, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v5, :cond_1

    .line 74
    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    goto :goto_1

    :cond_1
    const-string p1, "Unexpected leading comma"

    .line 73
    invoke-virtual {v4, p1, v6}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1

    .line 76
    :cond_2
    :goto_1
    iget-object v4, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    sget-object v5, Lkotlinx/serialization/json/internal/StreamingJsonInput$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v3, :cond_7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 88
    invoke-direct {p0, v0, p1}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->decodeObjectIndex(BLkotlinx/serialization/SerialDescriptor;)I

    move-result p1

    return p1

    .line 80
    :cond_3
    iget p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    add-int/2addr p1, v3

    iput p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->currentIndex:I

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    return v1

    .line 78
    :cond_6
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->decodeMapIndex(B)I

    move-result p1

    return p1

    .line 77
    :cond_7
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->decodeListIndex(B)I

    move-result p1

    return p1
.end method

.method public final decodeEnum(Lkotlinx/serialization/SerialDescriptor;)I
    .locals 1

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->decodeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlinx/serialization/o;->a(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final decodeFloat()F
    .locals 5

    .line 173
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 241
    :catchall_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "float"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v4
.end method

.method public final decodeInt()I
    .locals 5

    .line 171
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 233
    :catchall_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v4
.end method

.method public final decodeJson()Lkotlinx/serialization/json/JsonElement;
    .locals 3

    .line 26
    new-instance v0, Lkotlinx/serialization/json/internal/JsonParser;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v1

    iget-object v1, v1, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    iget-object v2, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/JsonParser;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/JsonReader;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonParser;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public final decodeLong()J
    .locals 5

    .line 172
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 237
    :catchall_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v4
.end method

.method public final decodeNotNullMark()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v0, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final decodeNull()Ljava/lang/Void;
    .locals 4

    .line 65
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 202
    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-ne v1, v3, :cond_0

    .line 66
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    return-object v2

    .line 65
    :cond_0
    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result v1

    const-string v3, "Expected \'null\' literal"

    invoke-virtual {v0, v3, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2
.end method

.method public final decodeNullableSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;
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

    .line 16
    invoke-static {p0, p1}, Lkotlinx/serialization/json/JsonInput$DefaultImpls;->decodeNullableSerializableValue(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final decodeSequentially()Z
    .locals 1

    .line 16
    invoke-static {p0}, Lkotlinx/serialization/json/JsonInput$DefaultImpls;->decodeSequentially(Lkotlinx/serialization/json/JsonInput;)Z

    move-result v0

    return v0
.end method

.method public final decodeSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;
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

    .line 33
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/PolymorphicKt;->decodeSerializableValuePolymorphic(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final decodeShort()S
    .locals 5

    .line 170
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 229
    :catchall_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "short"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v4
.end method

.method public final decodeString()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeStringQuoted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final endStructure(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char p1, p1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-byte v0, v0, Lkotlinx/serialization/json/internal/WriteMode;->endTc:B

    .line 200
    iget-byte v1, p1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v1, v0, :cond_0

    .line 56
    iget-object p1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->mode:Lkotlinx/serialization/json/internal/WriteMode;

    iget-char v1, v1, Lkotlinx/serialization/json/internal/WriteMode;->end:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final getContext()Lkotlinx/serialization/modules/b;
    .locals 1

    .line 22
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->context:Lkotlinx/serialization/modules/b;

    return-object v0
.end method

.method public final getJson()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 17
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->json:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public final getUpdateMode()Lkotlinx/serialization/v;
    .locals 1

    .line 30
    iget-object v0, p0, Lkotlinx/serialization/json/internal/StreamingJsonInput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUpdateMode$kotlinx_serialization_runtime()Lkotlinx/serialization/v;

    move-result-object v0

    return-object v0
.end method

.method public final updateNullableSerializableValue(Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/json/JsonInput$DefaultImpls;->updateNullableSerializableValue(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final updateSerializableValue(Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/d<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/json/JsonInput$DefaultImpls;->updateSerializableValue(Lkotlinx/serialization/json/JsonInput;Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
