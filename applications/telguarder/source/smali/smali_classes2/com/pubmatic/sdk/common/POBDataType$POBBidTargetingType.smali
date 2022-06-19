.class public final enum Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/POBDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POBBidTargetingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTH:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

.field public static final enum PARTNER_SPECIFIC:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

.field public static final enum WINNING:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

.field private static final synthetic a:[Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    const-string v1, "WINNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->WINNING:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    new-instance v1, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    const-string v3, "PARTNER_SPECIFIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->PARTNER_SPECIFIC:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    new-instance v3, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    const-string v5, "BOTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->BOTH:Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->a:[Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->a:[Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/POBDataType$POBBidTargetingType;

    return-object v0
.end method
