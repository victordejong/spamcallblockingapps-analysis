.class public final Lkotlinx/serialization/json/internal/JsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0008H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonParser;",
        "",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "reader",
        "Lkotlinx/serialization/json/internal/JsonReader;",
        "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/JsonReader;)V",
        "isLenient",
        "",
        "read",
        "Lkotlinx/serialization/json/JsonElement;",
        "readArray",
        "readObject",
        "readValue",
        "isString",
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
.field private final isLenient:Z

.field private final reader:Lkotlinx/serialization/json/internal/JsonReader;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/JsonReader;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 13
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient$kotlinx_serialization_runtime()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonParser;->isLenient:Z

    return-void
.end method

.method private final readArray()Lkotlinx/serialization/json/JsonElement;
    .locals 8

    .line 43
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 99
    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6

    .line 44
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 46
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v6, v6, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v1, :cond_5

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    const/4 v1, 0x0

    .line 49
    :goto_2
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 51
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonParser;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-eq v1, v3, :cond_2

    .line 55
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 103
    iget-byte v6, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result v0

    const-string v3, "Expected end of the array or comma"

    invoke-virtual {v1, v3, v0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    .line 58
    :cond_2
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    const/4 v1, 0x1

    goto :goto_2

    .line 62
    :cond_3
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    xor-int/2addr v1, v4

    iget v4, v3, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v1, :cond_4

    .line 63
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 64
    new-instance v1, Lkotlinx/serialization/json/JsonArray;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    return-object v1

    :cond_4
    const-string v0, "Unexpected trailing comma"

    .line 62
    invoke-virtual {v3, v0, v4}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    :cond_5
    const-string v1, "Unexpected leading comma"

    .line 46
    invoke-virtual {v0, v1, v6}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    .line 43
    :cond_6
    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result v1

    const-string v3, "Expected start of the array"

    invoke-virtual {v0, v3, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2
.end method

.method private final readObject()Lkotlinx/serialization/json/JsonElement;
    .locals 10

    .line 16
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 89
    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_9

    .line 17
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 19
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v6, v6, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v1, :cond_8

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1
    const/4 v1, 0x0

    .line 22
    :goto_2
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v6

    const/4 v7, 0x7

    if-eqz v6, :cond_5

    .line 24
    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->isLenient:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->takeStringQuoted()Ljava/lang/String;

    move-result-object v1

    .line 25
    :goto_3
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 93
    iget-byte v8, v6, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    .line 26
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v6}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 27
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonParser;->read()Lkotlinx/serialization/json/JsonElement;

    move-result-object v6

    .line 28
    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v1, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-eq v1, v3, :cond_3

    .line 31
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    .line 95
    iget-byte v6, v1, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v6, v7, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result v0

    const-string v3, "Expected end of the object or comma"

    invoke-virtual {v1, v3, v0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    .line 34
    :cond_3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    const/4 v1, 0x1

    goto :goto_2

    .line 25
    :cond_4
    invoke-static {v6}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result v0

    const-string v1, "Expected \':\'"

    invoke-virtual {v6, v1, v0}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    .line 37
    :cond_5
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    if-nez v1, :cond_6

    iget-byte v1, v3, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-ne v1, v7, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget v1, v1, Lkotlinx/serialization/json/internal/JsonReader;->currentPosition:I

    if-eqz v4, :cond_7

    .line 38
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    .line 39
    new-instance v1, Lkotlinx/serialization/json/JsonObject;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    return-object v1

    :cond_7
    const-string v0, "Expected end of the object"

    .line 37
    invoke-virtual {v3, v0, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    :cond_8
    const-string v1, "Unexpected leading comma"

    .line 19
    invoke-virtual {v0, v1, v6}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    .line 16
    :cond_9
    invoke-static {v0}, Lkotlinx/serialization/json/internal/JsonReader;->access$getTokenPosition$p(Lkotlinx/serialization/json/internal/JsonReader;)I

    move-result v1

    const-string v3, "Expected start of the object"

    invoke-virtual {v0, v3, v1}, Lkotlinx/serialization/json/internal/JsonReader;->fail(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2
.end method

.method private final readValue(Z)Lkotlinx/serialization/json/JsonElement;
    .locals 2

    .line 68
    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->isLenient:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeStringQuoted()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->takeString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    new-instance v1, Lkotlinx/serialization/json/JsonLiteral;

    invoke-direct {v1, v0, p1}, Lkotlinx/serialization/json/JsonLiteral;-><init>(Ljava/lang/Object;Z)V

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    return-object v1
.end method


# virtual methods
.method public final read()Lkotlinx/serialization/json/JsonElement;
    .locals 5

    .line 77
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->getCanBeginValue()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 78
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    iget-byte v0, v0, Lkotlinx/serialization/json/internal/JsonReader;->tokenClass:B

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    const/16 v4, 0x8

    if-eq v0, v4, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    .line 79
    sget-object v0, Lkotlinx/serialization/json/JsonNull;->INSTANCE:Lkotlinx/serialization/json/JsonNull;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/JsonReader;->nextToken()V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const-string v4, "Can\'t begin reading element, unexpected token"

    invoke-static {v0, v4, v2, v1, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v3

    .line 83
    :cond_1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonParser;->readArray()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    return-object v0

    .line 82
    :cond_2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonParser;->readObject()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    return-object v0

    .line 80
    :cond_3
    invoke-direct {p0, v4}, Lkotlinx/serialization/json/internal/JsonParser;->readValue(Z)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    return-object v0

    .line 81
    :cond_4
    invoke-direct {p0, v2}, Lkotlinx/serialization/json/internal/JsonParser;->readValue(Z)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    return-object v0

    .line 77
    :cond_5
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonParser;->reader:Lkotlinx/serialization/json/internal/JsonReader;

    const-string v4, "Can\'t begin reading value from here"

    invoke-static {v0, v4, v2, v1, v3}, Lkotlinx/serialization/json/internal/JsonReader;->fail$default(Lkotlinx/serialization/json/internal/JsonReader;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Void;

    throw v3
.end method
