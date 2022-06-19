.class final enum Lnet/pubnative/lite/sdk/utils/AdTracker$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/utils/AdTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/utils/AdTracker$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

.field public static final enum CLICK:Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

.field public static final enum IMPRESSION:Lnet/pubnative/lite/sdk/utils/AdTracker$Type;


# instance fields
.field private final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    const-string v1, "IMPRESSION"

    const/4 v2, 0x0

    const-string v3, "impression"

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->IMPRESSION:Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    .line 40
    new-instance v1, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    const-string v3, "CLICK"

    const/4 v4, 0x1

    const-string v5, "click"

    invoke-direct {v1, v3, v4, v5}, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->CLICK:Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 38
    sput-object v3, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->$VALUES:[Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->mType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/utils/AdTracker$Type;
    .locals 1

    .line 38
    const-class v0, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/utils/AdTracker$Type;
    .locals 1

    .line 38
    sget-object v0, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->$VALUES:[Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/utils/AdTracker$Type;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/AdTracker$Type;->mType:Ljava/lang/String;

    return-object v0
.end method
