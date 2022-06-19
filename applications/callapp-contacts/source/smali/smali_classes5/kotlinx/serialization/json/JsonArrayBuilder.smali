.class public final Lkotlinx/serialization/json/JsonArrayBuilder;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0008\u001a\u00020\t*\u0004\u0018\u00010\nH\u0086\u0002\u00a2\u0006\u0002\u0010\u000bJ\u000f\u0010\u0008\u001a\u00020\t*\u0004\u0018\u00010\u000cH\u0086\u0002J\u000f\u0010\u0008\u001a\u00020\t*\u0004\u0018\u00010\rH\u0086\u0002J\r\u0010\u0008\u001a\u00020\t*\u00020\u0005H\u0086\u0002R\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonArrayBuilder;",
        "",
        "()V",
        "content",
        "",
        "Lkotlinx/serialization/json/JsonElement;",
        "getContent$kotlinx_serialization_runtime",
        "()Ljava/util/List;",
        "unaryPlus",
        "",
        "",
        "(Ljava/lang/Boolean;)V",
        "",
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
.field private final content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lkotlinx/serialization/json/JsonArrayBuilder;->content:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getContent$kotlinx_serialization_runtime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lkotlinx/serialization/json/JsonArrayBuilder;->content:Ljava/util/List;

    return-object v0
.end method

.method public final unaryPlus(Ljava/lang/Boolean;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lkotlinx/serialization/json/JsonArrayBuilder;->content:Ljava/util/List;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementsKt;->JsonPrimitive(Ljava/lang/Boolean;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unaryPlus(Ljava/lang/Number;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lkotlinx/serialization/json/JsonArrayBuilder;->content:Ljava/util/List;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementsKt;->JsonPrimitive(Ljava/lang/Number;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unaryPlus(Ljava/lang/String;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lkotlinx/serialization/json/JsonArrayBuilder;->content:Ljava/util/List;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementsKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unaryPlus(Lkotlinx/serialization/json/JsonElement;)V
    .locals 1

    const-string v0, "$this$unaryPlus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lkotlinx/serialization/json/JsonArrayBuilder;->content:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
