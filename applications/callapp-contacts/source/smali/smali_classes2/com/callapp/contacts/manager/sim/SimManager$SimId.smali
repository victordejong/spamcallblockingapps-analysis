.class public final enum Lcom/callapp/contacts/manager/sim/SimManager$SimId;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/sim/SimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/sim/SimManager$SimId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/sim/SimManager$SimId;

.field public static final enum ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

.field public static final enum SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

.field public static final enum SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;


# instance fields
.field public final simId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 435
    new-instance v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    const-string v1, "ASK"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    .line 436
    new-instance v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    const-string v3, "SIM_1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    .line 437
    new-instance v3, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    const-string v5, "SIM_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 433
    sput-object v5, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->$VALUES:[Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 442
    iput p3, p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->simId:I

    return-void
.end method

.method public static getSimId(Ljava/lang/Integer;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 1

    .line 450
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 457
    sget-object p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p0

    .line 454
    :cond_0
    sget-object p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p0

    .line 452
    :cond_1
    sget-object p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 1

    .line 433
    const-class v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/sim/SimManager$SimId;
    .locals 1

    .line 433
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->$VALUES:[Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/sim/SimManager$SimId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    return-object v0
.end method


# virtual methods
.method public final getSimId()I
    .locals 1

    .line 446
    iget v0, p0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->simId:I

    return v0
.end method
