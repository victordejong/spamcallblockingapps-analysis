.class public Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sUsedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->sUsedEvents:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 51
    sget-object v0, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->sUsedEvents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public static declared-synchronized post(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-class v0, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->sUsedEvents:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 32
    monitor-exit v0

    return-void

    .line 34
    :cond_0
    :try_start_1
    sget-object v1, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->sUsedEvents:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 37
    new-instance v7, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker$1;

    invoke-direct {v7}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker$1;-><init>()V

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static postEventByType(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;

    .line 24
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/vpaid/models/vast/Tracking;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/EventTracker;->post(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
