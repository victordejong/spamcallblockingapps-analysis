.class Lkotlinx/serialization/json/internal/JsonTreeInput;
.super Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0012\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0014J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonTreeInput;",
        "Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "value",
        "Lkotlinx/serialization/json/JsonObject;",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V",
        "position",
        "",
        "getValue",
        "()Lkotlinx/serialization/json/JsonObject;",
        "currentElement",
        "Lkotlinx/serialization/json/JsonElement;",
        "tag",
        "",
        "decodeElementIndex",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "endStructure",
        "",
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
.field private position:I

.field private final value:Lkotlinx/serialization/json/JsonObject;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonObject;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    move-object v0, p2

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeInput;->value:Lkotlinx/serialization/json/JsonObject;

    return-void
.end method


# virtual methods
.method protected currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeInput;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lkotlin/a/ai;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1
.end method

.method public decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    :cond_0
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeInput;->position:I

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->d()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 145
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeInput;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlinx/serialization/json/internal/JsonTreeInput;->position:I

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/json/internal/JsonTreeInput;->getTag(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeInput;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/JsonObject;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonTreeInput;->position:I

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public endStructure(Lkotlinx/serialization/SerialDescriptor;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeInput;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getIgnoreUnknownKeys$kotlinx_serialization_runtime()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lkotlinx/serialization/SerialDescriptor;->b()Lkotlinx/serialization/p;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/h;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 158
    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/b/bp;->a(Lkotlinx/serialization/SerialDescriptor;)Ljava/util/Set;

    move-result-object p1

    .line 159
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeInput;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeInput;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlinx/serialization/json/JsonExceptionsKt;->UnknownKeyException(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/serialization/json/JsonDecodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic getValue()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeInput;->getValue()Lkotlinx/serialization/json/JsonObject;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method public getValue()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    .line 140
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeInput;->value:Lkotlinx/serialization/json/JsonObject;

    return-object v0
.end method
