.class public final enum Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POBBidProceedState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

.field public static final enum WAITING:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

.field private static final synthetic a:[Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;->DEFAULT:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

    const-string v3, "WAITING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;->WAITING:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;->a:[Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;->a:[Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$POBBidProceedState;

    return-object v0
.end method
