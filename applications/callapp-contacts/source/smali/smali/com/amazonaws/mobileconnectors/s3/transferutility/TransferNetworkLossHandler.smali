.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final c:Lcom/amazonaws/logging/Log;

.field private static e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;


# instance fields
.field final a:Landroid/net/ConnectivityManager;

.field b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field private d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "connectivity"

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    .line 72
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    invoke-direct {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 73
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    return-void
.end method

.method public static declared-synchronized a()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException;
        }
    .end annotation

    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 104
    monitor-exit v0

    return-object v1

    .line 101
    :cond_0
    :try_start_1
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/logging/Log;

    const-string v2, "TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving"

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 102
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException;

    const-string v2, "TransferNetworkLossHandler is not created. Please call `TransferNetworkLossHandler.getInstance(Context)` to instantiate it before retrieving"

    invoke-direct {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    .locals 2

    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    invoke-direct {v1, p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 86
    :cond_0
    sget-object p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()V

    return-void
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 11

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 156
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 160
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/logging/Log;

    const-string v4, "Loading transfers from database..."

    invoke-interface {v2, v4}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 165
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 169
    :try_start_1
    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->ANY:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-static {v5, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;[Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v1, 0x0

    .line 170
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "_id"

    .line 171
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 174
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v6, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v6

    if-nez v6, :cond_0

    .line 175
    new-instance v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    invoke-direct {v6, v5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;-><init>(I)V

    .line 176
    invoke-virtual {v6, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a(Landroid/database/Cursor;)V

    .line 177
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v7, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V

    add-int/lit8 v1, v1, 0x1

    .line 180
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 184
    :try_start_2
    sget-object v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/logging/Log;

    const-string v6, "Closing the cursor for resumeAllTransfers"

    invoke-interface {v5, v6}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 185
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    :cond_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 192
    invoke-static {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 195
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(I)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 196
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a()Z

    move-result v6

    if-nez v6, :cond_3

    .line 197
    iget-object v6, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v8, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    .line 1179
    invoke-virtual {v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1322
    iget v9, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->g:I

    if-nez v9, :cond_4

    sget-object v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iget-object v10, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v9, v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_3

    .line 1181
    invoke-virtual {v4, v7, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1182
    iget-object v8, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    sget-object v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->DOWNLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    invoke-virtual {v8, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1183
    new-instance v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;

    invoke-direct {v6, v4, v5, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)V

    .line 1184
    invoke-static {v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    iput-object v5, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->K:Ljava/util/concurrent/Future;

    goto :goto_1

    .line 1186
    :cond_5
    new-instance v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)V

    .line 1187
    invoke-static {v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    iput-object v5, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->K:Ljava/util/concurrent/Future;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 202
    :try_start_4
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in resuming the transfers."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/amazonaws/logging/Log;->e(Ljava/lang/Object;)V

    .line 205
    :cond_6
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " transfers are loaded from database."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 206
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_7

    .line 184
    :try_start_5
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/logging/Log;

    const-string v3, "Closing the cursor for resumeAllTransfers"

    invoke-interface {v1, v3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 185
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_7
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 5

    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 213
    iget v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/S3ClientReference;->a(Ljava/lang/Integer;)Lcom/amazonaws/services/s3/AmazonS3;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 214
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    .line 2229
    invoke-virtual {v1, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 2231
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-static {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2232
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2233
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->K:Ljava/util/concurrent/Future;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 217
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v2, v1, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->a(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final b()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c:Lcom/amazonaws/logging/Log;

    const-string p2, "Network connectivity changed detected."

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->b()Z

    move-result p2

    .line 113
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Network connected: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 119
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;

    invoke-direct {p2, p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
