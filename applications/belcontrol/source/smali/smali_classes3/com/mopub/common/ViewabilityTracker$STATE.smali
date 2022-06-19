.class public final enum Lcom/mopub/common/ViewabilityTracker$STATE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/ViewabilityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/ViewabilityTracker$STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMPRESSED:Lcom/mopub/common/ViewabilityTracker$STATE;

.field public static final enum INIT:Lcom/mopub/common/ViewabilityTracker$STATE;

.field public static final enum STARTED:Lcom/mopub/common/ViewabilityTracker$STATE;

.field public static final enum STARTED_VIDEO:Lcom/mopub/common/ViewabilityTracker$STATE;

.field public static final enum STOPPED:Lcom/mopub/common/ViewabilityTracker$STATE;

.field public static final synthetic a:[Lcom/mopub/common/ViewabilityTracker$STATE;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/mopub/common/ViewabilityTracker$STATE;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/ViewabilityTracker$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->INIT:Lcom/mopub/common/ViewabilityTracker$STATE;

    new-instance v1, Lcom/mopub/common/ViewabilityTracker$STATE;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mopub/common/ViewabilityTracker$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED:Lcom/mopub/common/ViewabilityTracker$STATE;

    new-instance v3, Lcom/mopub/common/ViewabilityTracker$STATE;

    const-string v5, "STARTED_VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mopub/common/ViewabilityTracker$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mopub/common/ViewabilityTracker$STATE;->STARTED_VIDEO:Lcom/mopub/common/ViewabilityTracker$STATE;

    new-instance v5, Lcom/mopub/common/ViewabilityTracker$STATE;

    const-string v7, "IMPRESSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mopub/common/ViewabilityTracker$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mopub/common/ViewabilityTracker$STATE;->IMPRESSED:Lcom/mopub/common/ViewabilityTracker$STATE;

    new-instance v7, Lcom/mopub/common/ViewabilityTracker$STATE;

    const-string v9, "STOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mopub/common/ViewabilityTracker$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mopub/common/ViewabilityTracker$STATE;->STOPPED:Lcom/mopub/common/ViewabilityTracker$STATE;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mopub/common/ViewabilityTracker$STATE;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mopub/common/ViewabilityTracker$STATE;->a:[Lcom/mopub/common/ViewabilityTracker$STATE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/ViewabilityTracker$STATE;
    .locals 1

    const-class v0, Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/ViewabilityTracker$STATE;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/ViewabilityTracker$STATE;
    .locals 1

    sget-object v0, Lcom/mopub/common/ViewabilityTracker$STATE;->a:[Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {v0}, [Lcom/mopub/common/ViewabilityTracker$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/ViewabilityTracker$STATE;

    return-object v0
.end method
