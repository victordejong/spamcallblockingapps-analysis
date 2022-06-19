.class public final enum Lcom/explorestack/iab/vast/TrackingEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/iab/vast/TrackingEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum acceptInvitation:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum close:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum collapse:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum complete:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum creativeView:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum expand:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum firstQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum fullscreen:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum midpoint:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum mute:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum pause:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum resume:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum rewind:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum skip:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum start:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum thirdQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

.field public static final enum unmute:Lcom/explorestack/iab/vast/TrackingEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 4
    new-instance v0, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v1, "creativeView"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->creativeView:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 5
    new-instance v1, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v3, "start"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/explorestack/iab/vast/TrackingEvent;->start:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 6
    new-instance v3, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v5, "firstQuartile"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/explorestack/iab/vast/TrackingEvent;->firstQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 7
    new-instance v5, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v7, "midpoint"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/explorestack/iab/vast/TrackingEvent;->midpoint:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 8
    new-instance v7, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v9, "thirdQuartile"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/explorestack/iab/vast/TrackingEvent;->thirdQuartile:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 9
    new-instance v9, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v11, "complete"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 10
    new-instance v11, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v13, "mute"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/explorestack/iab/vast/TrackingEvent;->mute:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 11
    new-instance v13, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v15, "unmute"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/explorestack/iab/vast/TrackingEvent;->unmute:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 12
    new-instance v15, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v14, "skip"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/explorestack/iab/vast/TrackingEvent;->skip:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 13
    new-instance v14, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v12, "pause"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/explorestack/iab/vast/TrackingEvent;->pause:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 14
    new-instance v12, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v10, "rewind"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/explorestack/iab/vast/TrackingEvent;->rewind:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 15
    new-instance v10, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v8, "resume"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/explorestack/iab/vast/TrackingEvent;->resume:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 16
    new-instance v8, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v6, "fullscreen"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/explorestack/iab/vast/TrackingEvent;->fullscreen:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 17
    new-instance v6, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v4, "expand"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/explorestack/iab/vast/TrackingEvent;->expand:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 18
    new-instance v4, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v2, "collapse"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/explorestack/iab/vast/TrackingEvent;->collapse:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 19
    new-instance v2, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v6, "acceptInvitation"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/explorestack/iab/vast/TrackingEvent;->acceptInvitation:Lcom/explorestack/iab/vast/TrackingEvent;

    .line 20
    new-instance v6, Lcom/explorestack/iab/vast/TrackingEvent;

    const-string v4, "close"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/explorestack/iab/vast/TrackingEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/explorestack/iab/vast/TrackingEvent;->close:Lcom/explorestack/iab/vast/TrackingEvent;

    const/16 v4, 0x11

    new-array v4, v4, [Lcom/explorestack/iab/vast/TrackingEvent;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    .line 3
    sput-object v4, Lcom/explorestack/iab/vast/TrackingEvent;->$VALUES:[Lcom/explorestack/iab/vast/TrackingEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/iab/vast/TrackingEvent;
    .locals 1

    .line 3
    const-class v0, Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/iab/vast/TrackingEvent;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/iab/vast/TrackingEvent;
    .locals 1

    .line 3
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->$VALUES:[Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {v0}, [Lcom/explorestack/iab/vast/TrackingEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/iab/vast/TrackingEvent;

    return-object v0
.end method
