.class final Lkotlinx/serialization/json/internal/JsonTreeMapOutput;
.super Lkotlinx/serialization/json/internal/JsonTreeOutput;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\r\u001a\u00020\u0006H\u0016J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonTreeMapOutput;",
        "Lkotlinx/serialization/json/internal/JsonTreeOutput;",
        "json",
        "Lkotlinx/serialization/json/Json;",
        "nodeConsumer",
        "Lkotlin/Function1;",
        "Lkotlinx/serialization/json/JsonElement;",
        "",
        "(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V",
        "isKey",
        "",
        "tag",
        "",
        "getCurrent",
        "putElement",
        "key",
        "element",
        "shouldWriteElement",
        "desc",
        "Lkotlinx/serialization/SerialDescriptor;",
        "index",
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
.field private isKey:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V
    .locals 1
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

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nodeConsumer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonTreeOutput;-><init>(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)V

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;->isKey:Z

    return-void
.end method


# virtual methods
.method public final getCurrent()Lkotlinx/serialization/json/JsonElement;
    .locals 2

    .line 169
    new-instance v0, Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;->getContent()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    return-object v0
.end method

.method public final putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;->isKey:Z

    if-eqz p1, :cond_3

    .line 157
    instance-of p1, p2, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz p1, :cond_0

    check-cast p2, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 156
    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;->tag:Ljava/lang/String;

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;->isKey:Z

    return-void

    .line 158
    :cond_0
    instance-of p1, p2, Lkotlinx/serialization/json/JsonObject;

    if-nez p1, :cond_2

    .line 159
    instance-of p1, p2, Lkotlinx/serialization/json/JsonArray;

    if-eqz p1, :cond_1

    sget-object p1, Lkotlinx/serialization/json/JsonArraySerializer;->INSTANCE:Lkotlinx/serialization/json/JsonArraySerializer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonArraySerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/serialization/json/JsonExceptionsKt;->InvalidKeyKindException(Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 158
    :cond_2
    sget-object p1, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonObjectSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/serialization/json/JsonExceptionsKt;->InvalidKeyKindException(Lkotlinx/serialization/SerialDescriptor;)Lkotlinx/serialization/json/JsonEncodingException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 163
    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;->getContent()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;->tag:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v1, "tag"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;->isKey:Z

    return-void
.end method

.method public final bridge synthetic shouldWriteElement(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/Object;I)Z
    .locals 0

    .line 150
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/JsonTreeMapOutput;->shouldWriteElement(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public final shouldWriteElement(Lkotlinx/serialization/SerialDescriptor;Ljava/lang/String;I)Z
    .locals 0

    const-string p3, "desc"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "tag"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
