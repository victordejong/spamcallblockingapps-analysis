.class public final enum Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/POBDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POBVideoAdEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICKED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field public static final enum COMPLETE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field public static final enum FIRST_QUARTILE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field public static final enum ICON_CLICKED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field public static final enum MID_POINT:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field public static final enum MUTE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field public static final enum PAUSE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field public static final enum RESUME:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field public static final enum SKIPPED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field public static final enum THIRD_QUARTILE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field public static final enum UNMUTE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

.field private static final synthetic a:[Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v1, "FIRST_QUARTILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->FIRST_QUARTILE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    new-instance v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v3, "MID_POINT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->MID_POINT:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    new-instance v3, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v5, "THIRD_QUARTILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->THIRD_QUARTILE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    new-instance v5, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v7, "COMPLETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->COMPLETE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    new-instance v7, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v9, "SKIPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->SKIPPED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    new-instance v9, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v11, "MUTE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->MUTE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    new-instance v11, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v13, "UNMUTE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->UNMUTE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    new-instance v13, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v15, "CLICKED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->CLICKED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    new-instance v15, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v14, "PAUSE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->PAUSE:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    new-instance v14, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v12, "RESUME"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->RESUME:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    new-instance v12, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const-string v10, "ICON_CLICKED"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->ICON_CLICKED:Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->a:[Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->a:[Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/common/POBDataType$POBVideoAdEventType;

    return-object v0
.end method
