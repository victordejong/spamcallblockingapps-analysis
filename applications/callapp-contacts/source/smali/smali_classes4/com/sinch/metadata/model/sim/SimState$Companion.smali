.class public final Lcom/sinch/metadata/model/sim/SimState$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/metadata/model/sim/SimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000bH\u00c6\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sinch/metadata/model/sim/SimState$Companion;",
        "",
        "()V",
        "basedOn",
        "Lcom/sinch/metadata/model/sim/SimState;",
        "telephonySimState",
        "",
        "forKey",
        "value",
        "",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/sinch/metadata/model/sim/SimState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final basedOn(I)Lcom/sinch/metadata/model/sim/SimState;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 76
    sget-object p1, Lcom/sinch/metadata/model/sim/SimState;->INVALID:Lcom/sinch/metadata/model/sim/SimState;

    return-object p1

    .line 75
    :cond_0
    sget-object p1, Lcom/sinch/metadata/model/sim/SimState;->READY:Lcom/sinch/metadata/model/sim/SimState;

    return-object p1

    .line 74
    :cond_1
    sget-object p1, Lcom/sinch/metadata/model/sim/SimState;->NETWORK_LOCKED:Lcom/sinch/metadata/model/sim/SimState;

    return-object p1

    .line 73
    :cond_2
    sget-object p1, Lcom/sinch/metadata/model/sim/SimState;->PUK_REQUIRED:Lcom/sinch/metadata/model/sim/SimState;

    return-object p1

    .line 72
    :cond_3
    sget-object p1, Lcom/sinch/metadata/model/sim/SimState;->PIN_REQUIRED:Lcom/sinch/metadata/model/sim/SimState;

    return-object p1

    .line 71
    :cond_4
    sget-object p1, Lcom/sinch/metadata/model/sim/SimState;->ABSENT:Lcom/sinch/metadata/model/sim/SimState;

    return-object p1

    .line 70
    :cond_5
    sget-object p1, Lcom/sinch/metadata/model/sim/SimState;->UNKNOWN:Lcom/sinch/metadata/model/sim/SimState;

    return-object p1
.end method

.method public final forKey(Ljava/lang/String;)Lcom/sinch/metadata/model/sim/SimState;
    .locals 5

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/sinch/metadata/model/sim/SimState;->values()[Lcom/sinch/metadata/model/sim/SimState;

    move-result-object v0

    .line 84
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 81
    invoke-virtual {v3}, Lcom/sinch/metadata/model/sim/SimState;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Array contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/sinch/metadata/model/sim/SimState;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sinch/metadata/model/sim/SimState$$serializer;->INSTANCE:Lcom/sinch/metadata/model/sim/SimState$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
