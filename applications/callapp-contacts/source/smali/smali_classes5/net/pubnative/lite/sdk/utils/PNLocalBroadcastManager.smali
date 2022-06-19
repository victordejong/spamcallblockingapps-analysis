.class public final Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$BroadcastRecord;,
        Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList<",
            "Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 107
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 108
    new-instance v0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$1;-><init>(Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .locals 10

    .line 294
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 297
    monitor-exit v0

    return-void

    .line 299
    :cond_1
    new-array v2, v1, [Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$BroadcastRecord;

    .line 300
    iget-object v3, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 301
    iget-object v3, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 303
    aget-object v4, v2, v3

    .line 304
    iget-object v5, v4, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    .line 306
    iget-object v7, v4, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;

    .line 307
    iget-boolean v8, v7, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->dead:Z

    if-nez v8, :cond_2

    .line 308
    iget-object v7, v7, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v9, v4, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, v8, v9}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 302
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;
    .locals 2

    .line 98
    sget-object v0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mInstance:Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mInstance:Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;

    .line 102
    :cond_0
    sget-object p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mInstance:Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 6

    .line 130
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 131
    :try_start_0
    new-instance v1, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;

    invoke-direct {v1, p2, p1}, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 132
    iget-object v2, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    iget-object v4, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 138
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 139
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v4, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    iget-object v5, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 147
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final sendBroadcast(Landroid/content/Intent;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 200
    iget-object v2, v1, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v2

    .line 201
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 202
    iget-object v3, v1, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 202
    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v14

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    if-eqz v16, :cond_1

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Resolving type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    :cond_1
    iget-object v3, v1, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/util/ArrayList;

    if-eqz v8, :cond_b

    if-eqz v16, :cond_2

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action list: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v3, 0x0

    move-object v7, v3

    const/4 v6, 0x0

    .line 219
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_8

    .line 220
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;

    if-eqz v16, :cond_3

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Matching against filter "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    :cond_3
    iget-boolean v3, v5, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v3, :cond_4

    move/from16 v18, v6

    move-object/from16 v20, v8

    move-object/from16 v19, v10

    move-object/from16 v21, v11

    const/4 v11, 0x1

    move-object v10, v7

    goto :goto_3

    .line 230
    :cond_4
    iget-object v3, v5, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v17, "LocalBroadcastManager"

    move-object v4, v10

    move-object v15, v5

    move-object v5, v11

    move/from16 v18, v6

    move-object v6, v13

    move-object/from16 v19, v10

    move-object v10, v7

    move-object v7, v12

    move-object/from16 v20, v8

    move-object v8, v14

    move-object/from16 v21, v11

    const/4 v11, 0x1

    move-object/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    if-eqz v16, :cond_5

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  Filter matched!  match=0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-nez v10, :cond_6

    .line 236
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_6
    move-object v7, v10

    .line 238
    :goto_2
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iput-boolean v11, v15, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_4

    :cond_7
    :goto_3
    move-object v7, v10

    :goto_4
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v10, v19

    move-object/from16 v8, v20

    move-object/from16 v11, v21

    const/4 v9, 0x1

    goto :goto_1

    :cond_8
    move-object v10, v7

    const/4 v11, 0x1

    if-eqz v10, :cond_b

    const/4 v3, 0x0

    .line 266
    :goto_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 267
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 269
    :cond_9
    iget-object v3, v1, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v4, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$BroadcastRecord;

    invoke-direct {v4, v0, v10}, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, v1, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 271
    iget-object v0, v1, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 273
    :cond_a
    monitor-exit v2

    return v11

    .line 276
    :cond_b
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final sendBroadcastSync(Landroid/content/Intent;)V
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->executePendingBroadcasts()V

    :cond_0
    return-void
.end method

.method public final unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 11

    .line 159
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 162
    monitor-exit v0

    return-void

    .line 164
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_5

    .line 165
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;

    .line 166
    iput-boolean v3, v4, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->dead:Z

    const/4 v5, 0x0

    .line 167
    :goto_1
    iget-object v6, v4, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 168
    iget-object v6, v4, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    .line 169
    iget-object v7, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    .line 171
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_2
    if-ltz v8, :cond_2

    .line 172
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;

    .line 173
    iget-object v10, v9, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v10, p1, :cond_1

    .line 174
    iput-boolean v3, v9, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager$ReceiverRecord;->dead:Z

    .line 175
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 178
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 179
    iget-object v7, p0, Lnet/pubnative/lite/sdk/utils/PNLocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 184
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
