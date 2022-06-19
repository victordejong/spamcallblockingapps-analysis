.class public final enum Lcom/sinch/metadata/model/sim/SimState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/metadata/model/sim/SimState$Companion;,
        Lcom/sinch/metadata/model/sim/SimState$$serializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sinch/metadata/model/sim/SimState;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0087\u0001\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u000e\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sinch/metadata/model/sim/SimState;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "UNKNOWN",
        "ABSENT",
        "PIN_REQUIRED",
        "PUK_REQUIRED",
        "NETWORK_LOCKED",
        "READY",
        "INVALID",
        "$serializer",
        "Companion",
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
.field private static final synthetic $VALUES:[Lcom/sinch/metadata/model/sim/SimState;

.field public static final enum ABSENT:Lcom/sinch/metadata/model/sim/SimState;

.field public static final Companion:Lcom/sinch/metadata/model/sim/SimState$Companion;

.field public static final enum INVALID:Lcom/sinch/metadata/model/sim/SimState;

.field public static final enum NETWORK_LOCKED:Lcom/sinch/metadata/model/sim/SimState;

.field public static final enum PIN_REQUIRED:Lcom/sinch/metadata/model/sim/SimState;

.field public static final enum PUK_REQUIRED:Lcom/sinch/metadata/model/sim/SimState;

.field public static final enum READY:Lcom/sinch/metadata/model/sim/SimState;

.field public static final enum UNKNOWN:Lcom/sinch/metadata/model/sim/SimState;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sinch/metadata/model/sim/SimState;

    new-instance v1, Lcom/sinch/metadata/model/sim/SimState;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    const-string v4, "SIM_STATE_UNKNOWN"

    .line 18
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/metadata/model/sim/SimState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/metadata/model/sim/SimState;->UNKNOWN:Lcom/sinch/metadata/model/sim/SimState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/metadata/model/sim/SimState;

    const-string v2, "ABSENT"

    const/4 v3, 0x1

    const-string v4, "SIM_STATE_ABSENT"

    .line 25
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/metadata/model/sim/SimState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/metadata/model/sim/SimState;->ABSENT:Lcom/sinch/metadata/model/sim/SimState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/metadata/model/sim/SimState;

    const-string v2, "PIN_REQUIRED"

    const/4 v3, 0x2

    const-string v4, "SIM_STATE_PIN_REQUIRED"

    .line 32
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/metadata/model/sim/SimState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/metadata/model/sim/SimState;->PIN_REQUIRED:Lcom/sinch/metadata/model/sim/SimState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/metadata/model/sim/SimState;

    const-string v2, "PUK_REQUIRED"

    const/4 v3, 0x3

    const-string v4, "SIM_STATE_PUK_REQUIRED"

    .line 39
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/metadata/model/sim/SimState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/metadata/model/sim/SimState;->PUK_REQUIRED:Lcom/sinch/metadata/model/sim/SimState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/metadata/model/sim/SimState;

    const-string v2, "NETWORK_LOCKED"

    const/4 v3, 0x4

    const-string v4, "SIM_STATE_NETWORK_LOCKED"

    .line 46
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/metadata/model/sim/SimState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/metadata/model/sim/SimState;->NETWORK_LOCKED:Lcom/sinch/metadata/model/sim/SimState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/metadata/model/sim/SimState;

    const-string v2, "READY"

    const/4 v3, 0x5

    const-string v4, "SIM_STATE_READY"

    .line 53
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/metadata/model/sim/SimState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/metadata/model/sim/SimState;->READY:Lcom/sinch/metadata/model/sim/SimState;

    aput-object v1, v0, v3

    new-instance v1, Lcom/sinch/metadata/model/sim/SimState;

    const-string v2, "INVALID"

    const/4 v3, 0x6

    const-string v4, "SIM_STATE_INVALID"

    .line 59
    invoke-direct {v1, v2, v3, v4}, Lcom/sinch/metadata/model/sim/SimState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/sinch/metadata/model/sim/SimState;->INVALID:Lcom/sinch/metadata/model/sim/SimState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sinch/metadata/model/sim/SimState;->$VALUES:[Lcom/sinch/metadata/model/sim/SimState;

    new-instance v0, Lcom/sinch/metadata/model/sim/SimState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/metadata/model/sim/SimState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/metadata/model/sim/SimState;->Companion:Lcom/sinch/metadata/model/sim/SimState$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sinch/metadata/model/sim/SimState;->value:Ljava/lang/String;

    return-void
.end method

.method public static final forKey(Ljava/lang/String;)Lcom/sinch/metadata/model/sim/SimState;
    .locals 1

    sget-object v0, Lcom/sinch/metadata/model/sim/SimState;->Companion:Lcom/sinch/metadata/model/sim/SimState$Companion;

    invoke-virtual {v0, p0}, Lcom/sinch/metadata/model/sim/SimState$Companion;->forKey(Ljava/lang/String;)Lcom/sinch/metadata/model/sim/SimState;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sinch/metadata/model/sim/SimState;
    .locals 1

    const-class v0, Lcom/sinch/metadata/model/sim/SimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sinch/metadata/model/sim/SimState;

    return-object p0
.end method

.method public static values()[Lcom/sinch/metadata/model/sim/SimState;
    .locals 1

    sget-object v0, Lcom/sinch/metadata/model/sim/SimState;->$VALUES:[Lcom/sinch/metadata/model/sim/SimState;

    invoke-virtual {v0}, [Lcom/sinch/metadata/model/sim/SimState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sinch/metadata/model/sim/SimState;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/sinch/metadata/model/sim/SimState;->value:Ljava/lang/String;

    return-object v0
.end method
