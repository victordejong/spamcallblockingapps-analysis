.class final Lkotlinx/serialization/json/internal/JsonPrimitiveInput;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0014J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonPrimitiveInput;",
        "Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "value",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        "(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonPrimitive;)V",
        "getValue",
        "()Lkotlinx/serialization/json/JsonPrimitive;",
        "currentElement",
        "Lkotlinx/serialization/json/JsonElement;",
        "tag",
        "",
        "decodeElementIndex",
        "",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
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
.field private final value:Lkotlinx/serialization/json/JsonPrimitive;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonPrimitive;)V
    .locals 2

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    move-object v0, p2

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonPrimitiveInput;->value:Lkotlinx/serialization/json/JsonPrimitive;

    const-string p1, "primitive"

    .line 129
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonPrimitiveInput;->pushTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final currentElement(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primitive"

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonPrimitiveInput;->getValue()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This input can only handle primitives with \'primitive\' tag"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic getValue()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonPrimitiveInput;->getValue()Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method public final getValue()Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    .line 126
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonPrimitiveInput;->value:Lkotlinx/serialization/json/JsonPrimitive;

    return-object v0
.end method
