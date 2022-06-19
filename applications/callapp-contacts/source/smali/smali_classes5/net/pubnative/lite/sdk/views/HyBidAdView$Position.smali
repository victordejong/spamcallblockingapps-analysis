.class public final enum Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/views/HyBidAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

.field public static final enum BOTTOM:Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

.field public static final enum TOP:Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 536
    new-instance v0, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->TOP:Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    .line 537
    new-instance v1, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    const-string v3, "BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->BOTTOM:Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    const/4 v3, 0x2

    new-array v3, v3, [Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 535
    sput-object v3, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->$VALUES:[Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 535
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;
    .locals 1

    .line 535
    const-class v0, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;
    .locals 1

    .line 535
    sget-object v0, Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->$VALUES:[Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/views/HyBidAdView$Position;

    return-object v0
.end method
