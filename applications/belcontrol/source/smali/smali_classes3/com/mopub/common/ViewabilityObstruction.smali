.class public final enum Lcom/mopub/common/ViewabilityObstruction;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/ViewabilityObstruction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUR:Lcom/mopub/common/ViewabilityObstruction;

.field public static final enum CLOSE_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

.field public static final enum COUNTDOWN_TIMER:Lcom/mopub/common/ViewabilityObstruction;

.field public static final enum CTA_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

.field public static final enum INDUSTRY_ICON:Lcom/mopub/common/ViewabilityObstruction;

.field public static final enum NOT_VISIBLE:Lcom/mopub/common/ViewabilityObstruction;

.field public static final enum OTHER:Lcom/mopub/common/ViewabilityObstruction;

.field public static final enum OVERLAY:Lcom/mopub/common/ViewabilityObstruction;

.field public static final enum PROGRESS_BAR:Lcom/mopub/common/ViewabilityObstruction;

.field public static final enum SKIP_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

.field public static final enum VIDEO_CONTROLS:Lcom/mopub/common/ViewabilityObstruction;

.field public static final synthetic b:[Lcom/mopub/common/ViewabilityObstruction;


# instance fields
.field public a:La41;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/mopub/common/ViewabilityObstruction;

    sget-object v1, La41;->a:La41;

    const-string v2, "VIDEO_CONTROLS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v0, Lcom/mopub/common/ViewabilityObstruction;->VIDEO_CONTROLS:Lcom/mopub/common/ViewabilityObstruction;

    new-instance v1, Lcom/mopub/common/ViewabilityObstruction;

    sget-object v2, La41;->b:La41;

    const-string v4, "CLOSE_BUTTON"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v1, Lcom/mopub/common/ViewabilityObstruction;->CLOSE_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

    new-instance v2, Lcom/mopub/common/ViewabilityObstruction;

    sget-object v4, La41;->d:La41;

    const-string v6, "CTA_BUTTON"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v2, Lcom/mopub/common/ViewabilityObstruction;->CTA_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

    new-instance v6, Lcom/mopub/common/ViewabilityObstruction;

    const-string v8, "SKIP_BUTTON"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v4}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v6, Lcom/mopub/common/ViewabilityObstruction;->SKIP_BUTTON:Lcom/mopub/common/ViewabilityObstruction;

    new-instance v8, Lcom/mopub/common/ViewabilityObstruction;

    const-string v10, "INDUSTRY_ICON"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v4}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v8, Lcom/mopub/common/ViewabilityObstruction;->INDUSTRY_ICON:Lcom/mopub/common/ViewabilityObstruction;

    new-instance v10, Lcom/mopub/common/ViewabilityObstruction;

    const-string v12, "COUNTDOWN_TIMER"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v4}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v10, Lcom/mopub/common/ViewabilityObstruction;->COUNTDOWN_TIMER:Lcom/mopub/common/ViewabilityObstruction;

    new-instance v12, Lcom/mopub/common/ViewabilityObstruction;

    const-string v14, "OVERLAY"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v4}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v12, Lcom/mopub/common/ViewabilityObstruction;->OVERLAY:Lcom/mopub/common/ViewabilityObstruction;

    new-instance v14, Lcom/mopub/common/ViewabilityObstruction;

    const-string v15, "BLUR"

    const/4 v13, 0x7

    invoke-direct {v14, v15, v13, v4}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v14, Lcom/mopub/common/ViewabilityObstruction;->BLUR:Lcom/mopub/common/ViewabilityObstruction;

    new-instance v15, Lcom/mopub/common/ViewabilityObstruction;

    const-string v13, "PROGRESS_BAR"

    const/16 v11, 0x8

    invoke-direct {v15, v13, v11, v4}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v15, Lcom/mopub/common/ViewabilityObstruction;->PROGRESS_BAR:Lcom/mopub/common/ViewabilityObstruction;

    new-instance v13, Lcom/mopub/common/ViewabilityObstruction;

    sget-object v11, La41;->c:La41;

    const-string v9, "NOT_VISIBLE"

    const/16 v7, 0x9

    invoke-direct {v13, v9, v7, v11}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v13, Lcom/mopub/common/ViewabilityObstruction;->NOT_VISIBLE:Lcom/mopub/common/ViewabilityObstruction;

    new-instance v9, Lcom/mopub/common/ViewabilityObstruction;

    const-string v11, "OTHER"

    const/16 v7, 0xa

    invoke-direct {v9, v11, v7, v4}, Lcom/mopub/common/ViewabilityObstruction;-><init>(Ljava/lang/String;ILa41;)V

    sput-object v9, Lcom/mopub/common/ViewabilityObstruction;->OTHER:Lcom/mopub/common/ViewabilityObstruction;

    const/16 v4, 0xb

    new-array v4, v4, [Lcom/mopub/common/ViewabilityObstruction;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v6, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v12, v4, v0

    const/4 v0, 0x7

    aput-object v14, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v13, v4, v0

    aput-object v9, v4, v7

    sput-object v4, Lcom/mopub/common/ViewabilityObstruction;->b:[Lcom/mopub/common/ViewabilityObstruction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILa41;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La41;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mopub/common/ViewabilityObstruction;->a:La41;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/ViewabilityObstruction;
    .locals 1

    const-class v0, Lcom/mopub/common/ViewabilityObstruction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/ViewabilityObstruction;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/ViewabilityObstruction;
    .locals 1

    sget-object v0, Lcom/mopub/common/ViewabilityObstruction;->b:[Lcom/mopub/common/ViewabilityObstruction;

    invoke-virtual {v0}, [Lcom/mopub/common/ViewabilityObstruction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/ViewabilityObstruction;

    return-object v0
.end method
