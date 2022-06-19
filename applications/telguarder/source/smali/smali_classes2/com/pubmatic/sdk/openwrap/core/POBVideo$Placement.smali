.class public final enum Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/core/POBVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Placement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTERSTITIAL:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

.field public static final enum IN_BANNER:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

.field private static final synthetic b:[Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    const-string v1, "IN_BANNER"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->IN_BANNER:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    const-string v4, "INTERSTITIAL"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->INTERSTITIAL:Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    new-array v3, v3, [Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    sput-object v3, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->b:[Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->b:[Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBVideo$Placement;->a:I

    return v0
.end method
