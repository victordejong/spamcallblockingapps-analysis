.class public Lnet/pubnative/lite/sdk/visibility/TrackingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ITEM_VALIDITY_TIME:J = 0x1b7740L

.field protected static final SHARED_FAILED_LIST:Ljava/lang/String; = "failed"

.field protected static final SHARED_PENDING_LIST:Ljava/lang/String; = "pending"

.field private static final SHARED_PREFERENCES:Ljava/lang/String; = "TrackingManager"

.field private static final TAG:Ljava/lang/String; = "TrackingManager"

.field private static sIsTracking:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 38
    sput-boolean p0, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->sIsTracking:Z

    return p0
.end method

.method protected static dequeueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/TrackingUrlModel;
    .locals 3

    .line 133
    invoke-static {p0, p1}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->getList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;

    .line 136
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    invoke-static {p0, p1, v0}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->setList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method protected static enqueueFailedList(Landroid/content/Context;)V
    .locals 4

    const-string v0, "failed"

    .line 117
    invoke-static {p0, v0}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->getList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "pending"

    .line 118
    invoke-static {p0, v2}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->getList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 119
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-static {p0, v2, v3}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->setList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 121
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 122
    invoke-static {p0, v0, v1}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->setList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected static enqueueItem(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/models/TrackingUrlModel;)V
    .locals 1

    .line 126
    invoke-static {p0, p1}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->getList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {p0, p1, v0}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->setList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method protected static getList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/TrackingUrlModel;",
            ">;"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-static {p0}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x0

    .line 151
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 155
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 156
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 157
    new-instance v1, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method protected static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "TrackingManager"

    const/4 v1, 0x0

    .line 193
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method protected static setList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/pubnative/lite/sdk/models/TrackingUrlModel;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-static {p0}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 169
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-nez p2, :cond_0

    .line 171
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 173
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 175
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;

    .line 177
    :try_start_0
    invoke-virtual {v1}, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static declared-synchronized track(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lnet/pubnative/lite/sdk/visibility/TrackingManager;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 58
    :try_start_0
    sget-object p0, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->TAG:Ljava/lang/String;

    const-string p1, "track - ERROR: Context parameter is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 59
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    sget-object p0, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->TAG:Ljava/lang/String;

    const-string p1, "track - ERROR: url parameter is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    .line 63
    :cond_1
    :try_start_2
    invoke-static {p0}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->enqueueFailedList(Landroid/content/Context;)V

    .line 65
    new-instance v1, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;

    invoke-direct {v1}, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;-><init>()V

    .line 66
    iput-object p1, v1, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;->url:Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;->startTimestamp:J

    const-string p1, "pending"

    .line 68
    invoke-static {p0, p1, v1}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->enqueueItem(Landroid/content/Context;Ljava/lang/String;Lnet/pubnative/lite/sdk/models/TrackingUrlModel;)V

    .line 70
    invoke-static {p0}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->trackNextItem(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected static declared-synchronized trackNextItem(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lnet/pubnative/lite/sdk/visibility/TrackingManager;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-boolean v1, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->sIsTracking:Z

    if-eqz v1, :cond_0

    .line 80
    sget-object p0, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->TAG:Ljava/lang/String;

    const-string v1, "trackNextItem - Currently tracking, dropping the call, will be resumed soon"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 82
    :try_start_1
    sput-boolean v1, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->sIsTracking:Z

    const-string v1, "pending"

    .line 84
    invoke-static {p0, v1}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->dequeueItem(Landroid/content/Context;Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/TrackingUrlModel;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 86
    sput-boolean v2, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->sIsTracking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    .line 88
    :cond_1
    :try_start_2
    iget-wide v3, v1, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;->startTimestamp:J

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    .line 89
    sput-boolean v2, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->sIsTracking:Z

    .line 90
    invoke-static {p0}, Lnet/pubnative/lite/sdk/visibility/TrackingManager;->trackNextItem(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    .line 92
    :cond_2
    :try_start_3
    iget-object v2, v1, Lnet/pubnative/lite/sdk/models/TrackingUrlModel;->url:Ljava/lang/String;

    new-instance v3, Lnet/pubnative/lite/sdk/visibility/TrackingManager$1;

    invoke-direct {v3, p0, v1}, Lnet/pubnative/lite/sdk/visibility/TrackingManager$1;-><init>(Landroid/content/Context;Lnet/pubnative/lite/sdk/models/TrackingUrlModel;)V

    const/4 v1, 0x0

    invoke-static {p0, v2, v1, v1, v3}, Lnet/pubnative/lite/sdk/network/PNHttpClient;->makeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lnet/pubnative/lite/sdk/network/PNHttpClient$Listener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
