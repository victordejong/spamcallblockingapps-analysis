.class public final Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;
.super Lkotlinx/serialization/json/JsonTransformingSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/json/JsonTransformingSerializer<",
        "Ljava/util/List<",
        "+",
        "Lcom/sinch/metadata/model/sim/SimCardInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;",
        "Lkotlinx/serialization/json/JsonTransformingSerializer;",
        "",
        "Lcom/sinch/metadata/model/sim/SimCardInfo;",
        "()V",
        "COUNT_FIELD_NAME",
        "",
        "writeTransform",
        "Lkotlinx/serialization/json/JsonElement;",
        "element",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final COUNT_FIELD_NAME:Ljava/lang/String; = "count"

.field public static final INSTANCE:Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;

    invoke-direct {v0}, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;-><init>()V

    sput-object v0, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;->INSTANCE:Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    sget-object v0, Lcom/sinch/metadata/model/sim/SimCardInfo;->Companion:Lcom/sinch/metadata/model/sim/SimCardInfo$Companion;

    invoke-virtual {v0}, Lcom/sinch/metadata/model/sim/SimCardInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const-string v1, "$this$list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1015
    new-instance v1, Lkotlinx/serialization/b/f;

    invoke-direct {v1, v0}, Lkotlinx/serialization/b/f;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const-string v0, "SimCardsInfoListTransform"

    .line 34
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/JsonTransformingSerializer;-><init>(Lkotlinx/serialization/KSerializer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final writeTransform(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lkotlinx/serialization/json/JsonArray;

    if-eqz v0, :cond_1

    .line 44
    move-object v0, p1

    check-cast v0, Lkotlinx/serialization/json/JsonArray;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$1;->INSTANCE:Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementBuildersKt;->json(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1

    .line 47
    :cond_0
    new-instance v0, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$2;

    invoke-direct {v0, p1}, Lcom/sinch/metadata/collector/sim/SimCardsInfoListSerializer$writeTransform$2;-><init>(Lkotlinx/serialization/json/JsonElement;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementBuildersKt;->json(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only lists can be transformed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
