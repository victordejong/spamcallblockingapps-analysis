.class public final enum Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/vastcontroller/VASTParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackableEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public static final enum closeLinear:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public static final enum complete:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public static final enum creativeView:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public static final enum firstQuartile:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public static final enum midpoint:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public static final enum progress:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public static final enum skip:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public static final enum start:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public static final enum thirdQuartile:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

.field public static final enum verificationNotExecuted:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 254
    new-instance v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const-string v1, "creativeView"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->creativeView:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 255
    new-instance v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const-string v3, "start"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->start:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 256
    new-instance v3, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const-string v5, "firstQuartile"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->firstQuartile:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 257
    new-instance v5, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const-string v7, "midpoint"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->midpoint:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 258
    new-instance v7, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const-string v9, "thirdQuartile"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->thirdQuartile:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 259
    new-instance v9, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const-string v11, "complete"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->complete:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 260
    new-instance v11, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const-string v13, "closeLinear"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->closeLinear:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 261
    new-instance v13, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const-string v15, "skip"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->skip:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 262
    new-instance v15, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const-string v14, "progress"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->progress:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    .line 263
    new-instance v14, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const-string v12, "verificationNotExecuted"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->verificationNotExecuted:Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 253
    sput-object v12, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->$VALUES:[Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;
    .locals 1

    .line 253
    const-class v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    return-object p0
.end method

.method public static values()[Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;
    .locals 1

    .line 253
    sget-object v0, Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->$VALUES:[Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    invoke-virtual {v0}, [Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/verizon/ads/vastcontroller/VASTParser$TrackableEvent;

    return-object v0
.end method
