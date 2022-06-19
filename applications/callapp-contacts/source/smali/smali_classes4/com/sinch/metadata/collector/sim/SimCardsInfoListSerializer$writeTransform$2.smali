.class final Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$2;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;->writeTransform(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlinx/serialization/json/JsonObjectBuilder;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/serialization/json/JsonObjectBuilder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $element:Lkotlinx/serialization/json/JsonElement;


# direct methods
.method constructor <init>(Lkotlinx/serialization/json/JsonElement;)V
    .locals 0

    iput-object p1, p0, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$2;->$element:Lkotlinx/serialization/json/JsonElement;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-virtual {p0, p1}, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$2;->invoke(Lkotlinx/serialization/json/JsonObjectBuilder;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/json/JsonObjectBuilder;)V
    .locals 5

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$2;->$element:Lkotlinx/serialization/json/JsonElement;

    check-cast v0, Lkotlinx/serialization/json/JsonArray;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 49
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$2;->$element:Lkotlinx/serialization/json/JsonElement;

    check-cast v4, Lkotlinx/serialization/json/JsonArray;

    invoke-virtual {v4, v1}, Lkotlinx/serialization/json/JsonArray;->get(I)Lkotlinx/serialization/json/JsonElement;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lkotlinx/serialization/json/JsonObjectBuilder;->to(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V

    move v1, v2

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$2;->$element:Lkotlinx/serialization/json/JsonElement;

    check-cast v0, Lkotlinx/serialization/json/JsonArray;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonArray;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, "count"

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->to(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method
