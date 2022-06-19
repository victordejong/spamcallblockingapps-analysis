.class public Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/AdPlacementReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uploader"
.end annotation


# static fields
.field private static volatile scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$500()V
    .locals 0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->start()V

    return-void
.end method

.method public static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->storeSiteId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->storeEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Ljava/io/File;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setEventAsCompleted(Ljava/io/File;Z)Z

    move-result p0

    return p0
.end method

.method private static buildRequest([Ljava/io/File;)Ljava/lang/String;
    .locals 10

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, p0, v6

    invoke-static {v7}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->retrieveEvent(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "request_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_0
    const-string v9, "display_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    const-string v9, "click_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_4

    const-string p0, "req"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_5

    const-string p0, "display"

    invoke-virtual {v0, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_6

    const-string p0, "click"

    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_8

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No reporting events added to the request"

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v4

    :cond_8
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    :try_start_1
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated report.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to format report with indentation"

    invoke-static {p0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error creating SSP reporting request"

    invoke-static {v0, v1, p0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method public static clearNow()V
    .locals 2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting is clearing events"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->getEventsToUpload()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->deleteUploadedEvents([Ljava/io/File;)V

    :cond_1
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    return-void
.end method

.method private static countQueuedEvents()V
    .locals 8

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5, v2}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setEventAsCompleted(Ljava/io/File;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private static deleteUploadedEvents([Ljava/io/File;)V
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete reporting file <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method private static getEventsToUpload()[Ljava/io/File;
    .locals 2

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$1;

    invoke-direct {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method private static incrementQueuedEventsCount()V
    .locals 4

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$400()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchSize()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Reporting batch size limit detected -- requesting upload"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->UPLOADING:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/millennialmedia/internal/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v0, v1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error opening file <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_2
    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    throw p0

    :cond_0
    :goto_3
    return-object v1
.end method

.method private static retrieveEvent(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing reporting file <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static retrieveSiteId()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v1

    const-string v2, "siteid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveToFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1, p1}, Lcom/millennialmedia/internal/utils/IOUtils;->write(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    move-result p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing to file <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    move-result p0

    :goto_1
    return p0

    :goto_2
    invoke-static {v0}, Lcom/millennialmedia/internal/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    throw p0
.end method

.method private static setEventAsCompleted(Ljava/io/File;Z)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".tmp"

    const-string v3, ".json"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, ">"

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target file already exists + <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->incrementQueuedEventsCount()V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to rename temp file <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting temp file <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V
    .locals 3

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$400()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    move-result-object v1

    if-ne p0, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$402(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/millennialmedia/internal/AdPlacementReporter$1;->$SwitchMap$com$millennialmedia$internal$AdPlacementReporter$UploadState:[I

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$400()Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Reporting upload state set to CLEARING"

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object p0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz p0, :cond_3

    sget-object p0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {p0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    :cond_3
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->clearNow()V

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Reporting upload state set to ERROR_SENDING_TO_SERVER"

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance p0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$5;

    invoke-direct {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$5;-><init>()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Reporting upload state set to ERROR_NETWORK_UNAVAILABLE"

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$4;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$4;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Reporting upload state set to UPLOADING"

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    sget-object p0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    if-eqz p0, :cond_a

    sget-object p0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {p0}, Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    :cond_a
    invoke-static {}, Lcom/millennialmedia/internal/task/TaskFactory;->createAdPlacementReporterTask()Lcom/millennialmedia/internal/task/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/millennialmedia/internal/task/Task;->execute()V

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Reporting upload state set to IDLE"

    invoke-static {p0, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    new-instance p0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$3;

    invoke-direct {p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$3;-><init>()V

    :goto_0
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchFrequency()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object p0

    sput-object p0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static start()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getMillennialDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/.reporting/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$002(Ljava/io/File;)Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to creating reporting directory"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->countQueuedEvents()V

    new-instance v0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$2;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader$2;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->scheduledRunnable:Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    return-void
.end method

.method private static storeEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/io/File;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p0, ".json"

    goto :goto_0

    :cond_1
    const-string p0, ".tmp"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->saveToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->incrementQueuedEventsCount()V

    :cond_2
    return-object p1
.end method

.method private static storeSiteId(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$000()Ljava/io/File;

    move-result-object v1

    const-string v2, "siteid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->saveToFile(Ljava/io/File;Ljava/lang/String;)Z

    return-void
.end method

.method public static uploadNow()V
    .locals 5

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting is starting upload"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->getEventsToUpload()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting found no events to upload"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBaseUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to determine base url for request"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    return-void

    :cond_3
    const-string v2, "/admax/sdk/report/4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->retrieveSiteId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to upload report -- siteId has not been set"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    return-void

    :cond_4
    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->buildRequest([Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?dcn="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    invoke-static {v1, v3, v2}, Lcom/millennialmedia/internal/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v1

    iget v2, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_7

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isDeviceIdle()Z

    move-result v0

    const-string v2, "Reporting failed to upload with response code <"

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "> while in Doze mode"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    :goto_1
    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reporting failed to upload because network is unavailable"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->ERROR_NETWORK_UNAVAILABLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->code:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    goto :goto_0

    :goto_2
    return-void

    :cond_7
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Report successfully uploaded"

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->deleteUploadedEvents([Ljava/io/File;)V

    invoke-static {}, Lcom/millennialmedia/internal/AdPlacementReporter;->access$200()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {}, Lcom/millennialmedia/internal/Handshake;->getReportingBatchSize()I

    move-result v1

    if-lt v0, v1, :cond_9

    invoke-static {}, Lcom/millennialmedia/internal/task/TaskFactory;->createAdPlacementReporterTask()Lcom/millennialmedia/internal/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/task/Task;->execute()V

    return-void

    :cond_9
    sget-object v0, Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;->IDLE:Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;

    invoke-static {v0}, Lcom/millennialmedia/internal/AdPlacementReporter$Uploader;->setUploadState(Lcom/millennialmedia/internal/AdPlacementReporter$UploadState;)V

    return-void
.end method
