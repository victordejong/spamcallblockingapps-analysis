.class final Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$1;
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


# static fields
.field public static final INSTANCE:Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$1;

    invoke-direct {v0}, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$1;-><init>()V

    sput-object v0, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$1;->INSTANCE:Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-virtual {p0, p1}, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$1;->invoke(Lkotlinx/serialization/json/JsonObjectBuilder;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/json/JsonObjectBuilder;)V
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, "count"

    invoke-virtual {p1, v1, v0}, Lkotlinx/serialization/json/JsonObjectBuilder;->to(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method
