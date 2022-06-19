.class public final enum Lcom/mopub/common/VideoEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/common/VideoEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/common/VideoEvent;

.field public static final enum AD_BUFFER_END:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_BUFFER_START:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_CLICK_THRU:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_COMPLETE:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_FULLSCREEN:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_IMPRESSED:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_NORMAL:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_PAUSED:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_RESUMED:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_SKIPPED:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_VIDEO_MIDPOINT:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/VideoEvent;

.field public static final enum AD_VOLUME_CHANGE:Lcom/mopub/common/VideoEvent;

.field public static final enum RECORD_AD_ERROR:Lcom/mopub/common/VideoEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 8
    new-instance v0, Lcom/mopub/common/VideoEvent;

    const-string v1, "AD_PAUSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/common/VideoEvent;->AD_PAUSED:Lcom/mopub/common/VideoEvent;

    .line 9
    new-instance v1, Lcom/mopub/common/VideoEvent;

    const-string v3, "AD_RESUMED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/common/VideoEvent;->AD_RESUMED:Lcom/mopub/common/VideoEvent;

    .line 10
    new-instance v3, Lcom/mopub/common/VideoEvent;

    const-string v5, "AD_SKIPPED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mopub/common/VideoEvent;->AD_SKIPPED:Lcom/mopub/common/VideoEvent;

    .line 11
    new-instance v5, Lcom/mopub/common/VideoEvent;

    const-string v7, "AD_IMPRESSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mopub/common/VideoEvent;->AD_IMPRESSED:Lcom/mopub/common/VideoEvent;

    .line 13
    new-instance v7, Lcom/mopub/common/VideoEvent;

    const-string v9, "AD_BUFFER_START"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mopub/common/VideoEvent;->AD_BUFFER_START:Lcom/mopub/common/VideoEvent;

    .line 14
    new-instance v9, Lcom/mopub/common/VideoEvent;

    const-string v11, "AD_BUFFER_END"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mopub/common/VideoEvent;->AD_BUFFER_END:Lcom/mopub/common/VideoEvent;

    .line 16
    new-instance v11, Lcom/mopub/common/VideoEvent;

    const-string v13, "AD_VIDEO_FIRST_QUARTILE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mopub/common/VideoEvent;->AD_VIDEO_FIRST_QUARTILE:Lcom/mopub/common/VideoEvent;

    .line 17
    new-instance v13, Lcom/mopub/common/VideoEvent;

    const-string v15, "AD_VIDEO_MIDPOINT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/mopub/common/VideoEvent;->AD_VIDEO_MIDPOINT:Lcom/mopub/common/VideoEvent;

    .line 18
    new-instance v15, Lcom/mopub/common/VideoEvent;

    const-string v14, "AD_VIDEO_THIRD_QUARTILE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/mopub/common/VideoEvent;->AD_VIDEO_THIRD_QUARTILE:Lcom/mopub/common/VideoEvent;

    .line 19
    new-instance v14, Lcom/mopub/common/VideoEvent;

    const-string v12, "AD_COMPLETE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/mopub/common/VideoEvent;->AD_COMPLETE:Lcom/mopub/common/VideoEvent;

    .line 21
    new-instance v12, Lcom/mopub/common/VideoEvent;

    const-string v10, "AD_FULLSCREEN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/mopub/common/VideoEvent;->AD_FULLSCREEN:Lcom/mopub/common/VideoEvent;

    .line 22
    new-instance v10, Lcom/mopub/common/VideoEvent;

    const-string v8, "AD_NORMAL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/mopub/common/VideoEvent;->AD_NORMAL:Lcom/mopub/common/VideoEvent;

    .line 24
    new-instance v8, Lcom/mopub/common/VideoEvent;

    const-string v6, "AD_VOLUME_CHANGE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/mopub/common/VideoEvent;->AD_VOLUME_CHANGE:Lcom/mopub/common/VideoEvent;

    .line 25
    new-instance v6, Lcom/mopub/common/VideoEvent;

    const-string v4, "AD_CLICK_THRU"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/mopub/common/VideoEvent;->AD_CLICK_THRU:Lcom/mopub/common/VideoEvent;

    .line 27
    new-instance v4, Lcom/mopub/common/VideoEvent;

    const-string v2, "RECORD_AD_ERROR"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/mopub/common/VideoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/mopub/common/VideoEvent;->RECORD_AD_ERROR:Lcom/mopub/common/VideoEvent;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/mopub/common/VideoEvent;

    const/16 v16, 0x0

    aput-object v0, v2, v16

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

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 7
    sput-object v2, Lcom/mopub/common/VideoEvent;->$VALUES:[Lcom/mopub/common/VideoEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/common/VideoEvent;
    .locals 1

    .line 7
    const-class v0, Lcom/mopub/common/VideoEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/VideoEvent;

    return-object p0
.end method

.method public static values()[Lcom/mopub/common/VideoEvent;
    .locals 1

    .line 7
    sget-object v0, Lcom/mopub/common/VideoEvent;->$VALUES:[Lcom/mopub/common/VideoEvent;

    invoke-virtual {v0}, [Lcom/mopub/common/VideoEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/common/VideoEvent;

    return-object v0
.end method
