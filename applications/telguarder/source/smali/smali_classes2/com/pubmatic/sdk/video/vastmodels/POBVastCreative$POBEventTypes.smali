.class public final enum Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POBEventTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCEPT_INVITATION_LINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum AD_COLLAPSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum AD_EXPAND:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum CLOSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum CLOSE_LINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum COLLAPSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum COMPLETE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum CREATIVE_VIEW:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum EXIT_FULL_SCREEN:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum EXPAND:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum FIRST_QUARTILE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum FULL_SCREEN:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum LOADED:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum MID_POINT:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum MINIMIZE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum MUTE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum NOT_USED:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum OTHER_AD_INTERACTION:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum OVERLAY_VIEW_DURATION:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum PAUSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum PLAYER_COLLAPSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum PLAYER_EXPAND:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum PROGRESS:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum RESUME:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum REWIND:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum SKIP:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum START:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum THIRD_QUARTILE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field public static final enum UNMUTE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

.field private static final synthetic b:[Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    new-instance v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v1, "CREATIVE_VIEW"

    const/4 v2, 0x0

    const-string v3, "creativeview"

    invoke-direct {v0, v1, v2, v3}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->CREATIVE_VIEW:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v3, "START"

    const/4 v4, 0x1

    const-string v5, "start"

    invoke-direct {v1, v3, v4, v5}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->START:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v3, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v5, "FIRST_QUARTILE"

    const/4 v6, 0x2

    const-string v7, "firstquartile"

    invoke-direct {v3, v5, v6, v7}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->FIRST_QUARTILE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v5, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v7, "MID_POINT"

    const/4 v8, 0x3

    const-string v9, "midpoint"

    invoke-direct {v5, v7, v8, v9}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->MID_POINT:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v7, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v9, "THIRD_QUARTILE"

    const/4 v10, 0x4

    const-string v11, "thirdQuartile"

    invoke-direct {v7, v9, v10, v11}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->THIRD_QUARTILE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v9, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v11, "COMPLETE"

    const/4 v12, 0x5

    const-string v13, "complete"

    invoke-direct {v9, v11, v12, v13}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->COMPLETE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v11, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v13, "MUTE"

    const/4 v14, 0x6

    const-string v15, "mute"

    invoke-direct {v11, v13, v14, v15}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->MUTE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v13, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "UNMUTE"

    const/4 v14, 0x7

    const-string v12, "unmute"

    invoke-direct {v13, v15, v14, v12}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->UNMUTE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v12, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "PAUSE"

    const/16 v14, 0x8

    const-string v10, "pause"

    invoke-direct {v12, v15, v14, v10}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->PAUSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v10, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "REWIND"

    const/16 v14, 0x9

    const-string v8, "rewind"

    invoke-direct {v10, v15, v14, v8}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->REWIND:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v8, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "RESUME"

    const/16 v14, 0xa

    const-string v6, "resume"

    invoke-direct {v8, v15, v14, v6}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->RESUME:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v6, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "FULL_SCREEN"

    const/16 v14, 0xb

    const-string v4, "fullscreen"

    invoke-direct {v6, v15, v14, v4}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->FULL_SCREEN:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "EXIT_FULL_SCREEN"

    const/16 v14, 0xc

    const-string v2, "exitFullscreen"

    invoke-direct {v4, v15, v14, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->EXIT_FULL_SCREEN:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "EXPAND"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "expand"

    invoke-direct {v2, v15, v14, v4}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->EXPAND:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "COLLAPSE"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "collapse"

    invoke-direct {v4, v15, v14, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->COLLAPSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "ACCEPT_INVITATION_LINEAR"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "acceptInvitationLinear"

    invoke-direct {v2, v15, v14, v4}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->ACCEPT_INVITATION_LINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "CLOSE_LINEAR"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "closeLinear"

    invoke-direct {v4, v15, v14, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->CLOSE_LINEAR:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "SKIP"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "skip"

    invoke-direct {v2, v15, v14, v4}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->SKIP:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "PROGRESS"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "progress"

    invoke-direct {v4, v15, v14, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->PROGRESS:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "AD_EXPAND"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "adExpand"

    invoke-direct {v2, v15, v14, v4}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->AD_EXPAND:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "AD_COLLAPSE"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "adCollapse"

    invoke-direct {v4, v15, v14, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->AD_COLLAPSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "MINIMIZE"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "minimize"

    invoke-direct {v2, v15, v14, v4}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->MINIMIZE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v15, "OVERLAY_VIEW_DURATION"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "overlayViewDuration"

    invoke-direct {v4, v15, v14, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->OVERLAY_VIEW_DURATION:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v14, "CLOSE"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "close"

    invoke-direct {v2, v14, v15, v4}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->CLOSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v14, "OTHER_AD_INTERACTION"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string v2, "otherAdInteraction"

    invoke-direct {v4, v14, v15, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->OTHER_AD_INTERACTION:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v14, "LOADED"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "loaded"

    invoke-direct {v2, v14, v15, v4}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->LOADED:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v14, "PLAYER_EXPAND"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const-string v2, "playerExpand"

    invoke-direct {v4, v14, v15, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->PLAYER_EXPAND:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v14, "PLAYER_COLLAPSE"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const-string v4, "playerCollapse"

    invoke-direct {v2, v14, v15, v4}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->PLAYER_COLLAPSE:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    new-instance v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const-string v14, "NOT_USED"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const-string v2, "notUsed"

    invoke-direct {v4, v14, v15, v2}, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->NOT_USED:Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const/16 v2, 0x1d

    new-array v2, v2, [Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v4, v2, v0

    sput-object v2, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->b:[Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->b:[Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/video/vastmodels/POBVastCreative$POBEventTypes;->a:Ljava/lang/String;

    return-object v0
.end method
