.class synthetic Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;
.super Ljava/lang/Object;
.source "PostcallAdvertProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 89
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->values()[Lcom/telguarder/features/advertisements/AdvertNetworkName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->AD_MANAGER_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_NOADSERVER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy$2;->$SwitchMap$com$telguarder$features$advertisements$AdvertNetworkName:[I

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
