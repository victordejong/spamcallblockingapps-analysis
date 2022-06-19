.class public final enum Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POBVideoPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COLLAPSED:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

.field public static final enum EXPANDED:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

.field public static final enum FULLSCREEN:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

.field public static final enum MINIMIZED:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

.field public static final enum NORMAL:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

.field private static final synthetic a:[Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->FULLSCREEN:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    new-instance v1, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    const-string v3, "MINIMIZED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->MINIMIZED:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    new-instance v3, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    const-string v5, "COLLAPSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->COLLAPSED:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    new-instance v5, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    const-string v7, "NORMAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->NORMAL:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    new-instance v7, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    const-string v9, "EXPANDED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->EXPANDED:Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->a:[Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->a:[Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/viewability/POBVideoMeasurementProvider$POBVideoPlayerState;

    return-object v0
.end method
