.class public final enum Lcom/telguarder/features/advertisements/AdvertNetworkName;
.super Ljava/lang/Enum;
.source "AdvertNetworkName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/advertisements/AdvertNetworkName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/advertisements/AdvertNetworkName;

.field public static final enum ADMOB:Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "admob"
    .end annotation
.end field

.field public static final enum ADMOB_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "admob_banner"
    .end annotation
.end field

.field public static final enum AD_MANAGER_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ad_manager_banner"
    .end annotation
.end field

.field public static final enum FACEBOOK:Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebook"
    .end annotation
.end field

.field public static final enum FACEBOOK_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebook_banner"
    .end annotation
.end field

.field public static final enum PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pm_openwrap_dfp"
    .end annotation
.end field

.field public static final enum PM_OPENWRAP_NOADSERVER:Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pm_openwrap_noadserver"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 13
    new-instance v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    const-string v1, "ADMOB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    .line 16
    new-instance v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    const-string v3, "FACEBOOK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/features/advertisements/AdvertNetworkName;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    .line 19
    new-instance v3, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    const-string v5, "ADMOB_BANNER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/features/advertisements/AdvertNetworkName;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    .line 22
    new-instance v5, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    const-string v7, "FACEBOOK_BANNER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/telguarder/features/advertisements/AdvertNetworkName;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    .line 25
    new-instance v7, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    const-string v9, "AD_MANAGER_BANNER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/telguarder/features/advertisements/AdvertNetworkName;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/telguarder/features/advertisements/AdvertNetworkName;->AD_MANAGER_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    .line 28
    new-instance v9, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    const-string v11, "PM_OPENWRAP_NOADSERVER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/telguarder/features/advertisements/AdvertNetworkName;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_NOADSERVER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    .line 31
    new-instance v11, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    const-string v13, "PM_OPENWRAP_DFP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/telguarder/features/advertisements/AdvertNetworkName;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/telguarder/features/advertisements/AdvertNetworkName;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 11
    sput-object v13, Lcom/telguarder/features/advertisements/AdvertNetworkName;->$VALUES:[Lcom/telguarder/features/advertisements/AdvertNetworkName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .locals 1

    .line 11
    const-class v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/advertisements/AdvertNetworkName;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/advertisements/AdvertNetworkName;
    .locals 1

    .line 11
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->$VALUES:[Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, [Lcom/telguarder/features/advertisements/AdvertNetworkName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/advertisements/AdvertNetworkName;

    return-object v0
.end method
