.class public final enum Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POBFriendlyObstructionPurpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE_AD:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

.field public static final enum NOT_VISIBLE:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

.field public static final enum OTHER:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

.field public static final enum VIDEO_CONTROLS:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

.field private static final synthetic a:[Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    const-string v1, "VIDEO_CONTROLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    new-instance v1, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    const-string v3, "CLOSE_AD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;->CLOSE_AD:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    new-instance v3, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    const-string v5, "NOT_VISIBLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    new-instance v5, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    const-string v7, "OTHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;->OTHER:Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;->a:[Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;->a:[Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/viewability/POBMeasurementProvider$POBFriendlyObstructionPurpose;

    return-object v0
.end method
