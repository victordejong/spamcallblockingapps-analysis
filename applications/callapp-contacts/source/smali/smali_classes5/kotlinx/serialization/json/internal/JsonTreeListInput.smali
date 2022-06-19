.class final Lkotlinx/serialization/json/internal/JsonTreeListInput;
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
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0014J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0008H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonTreeListInput;",
        "Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "value",
        "Lkotlinx/serialization/json/JsonArray;",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonArray;)V",
        "currentIndex",
        "",
        "size",
        "getValue",
        "()Lkotlinx/serialization/json/JsonArray;",
        "currentElement",
        "Lkotlinx/serialization/json/JsonElement;",
        "tag",
        "",
        "decodeElementIndex",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "elementName",
        "desc",
        "index",
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
.field private currentIndex:I

.field private final size:I

.field private final value:Lkotlinx/serialization/json/JsonArray;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonArray;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    move-object v0, p2

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonTreeListInput;->value:Lkotlinx/serialization/json/JsonArray;

    .line 193
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeListInput;->getValue()Lkotlinx/serialization/json/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonArray;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/json/internal/JsonTreeListInput;->size:I

    const/4 p1, -0x1

    .line 194
    iput p1, p0, Lkotlinx/serialization/json/internal/JsonTreeListInput;->currentIndex:I

    return-void
.end method


# virtual methods
.method protected final currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeListInput;->getValue()Lkotlinx/serialization/json/JsonArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/JsonArray;->get(I)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public final decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget p1, p0, Lkotlinx/serialization/json/internal/JsonTreeListInput;->currentIndex:I

    iget v0, p0, Lkotlinx/serialization/json/internal/JsonTreeListInput;->size:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 204
    iput p1, p0, Lkotlinx/serialization/json/internal/JsonTreeListInput;->currentIndex:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final elementName(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;
    .locals 1

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getValue()Lkotlinx/serialization/json/JsonArray;
    .locals 1

    .line 192
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeListInput;->value:Lkotlinx/serialization/json/JsonArray;

    return-object v0
.end method

.method public final bridge synthetic getValue()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeListInput;->getValue()Lkotlinx/serialization/json/JsonArray;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method
