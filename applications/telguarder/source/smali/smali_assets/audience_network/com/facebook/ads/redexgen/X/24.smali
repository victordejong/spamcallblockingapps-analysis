.class public final Lcom/facebook/ads/redexgen/X/24;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/24;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Q2DZPMAW2yeQLbmmbfWH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FQ0yrAaGYgr4mdqTvnLCAfi7gpajL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1hQSRsoeRQ52OVueqemqWssHdomhD1Oc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dcU3JA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DGXXVImbyRvx6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DMg70IVEwE3Kkzjo7dV3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "yfZMPiXEj5vSY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/24;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A01(Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4375
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4376
    return-void

    .line 4377
    :cond_0
    invoke-static {}, Lcom/facebook/ads/AdSDKNotificationManager;->getNotificationListeners()Ljava/util/List;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/24;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/24;->A00:[Ljava/lang/String;

    const-string v1, "Q3BRtsM78nh668lUBovm00cqFaVNU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "8lw9HG008tWyg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    monitor-enter v3

    .line 4378
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/AdSDKNotificationManager;->getNotificationListeners()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4379
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/AdSDKNotificationListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4380
    new-instance v0, Lcom/facebook/ads/redexgen/X/23;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/23;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Le;->A00(Ljava/lang/Runnable;)V

    .line 4381
    return-void

    .line 4382
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/AdSDKNotificationListener;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
