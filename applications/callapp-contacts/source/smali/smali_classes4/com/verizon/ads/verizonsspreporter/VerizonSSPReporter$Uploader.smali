.class Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Uploader"
.end annotation


# static fields
.field private static volatile a:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

.field private static b:Ljava/io/File;

.field private static c:Lcom/verizon/ads/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 482
    new-instance v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$1;

    invoke-direct {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$1;-><init>()V

    sput-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->c:Lcom/verizon/ads/Job;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 649
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 651
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "UTF-8"

    .line 652
    invoke-static {v0, v2}, Lcom/verizon/ads/utils/IOUtils;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 657
    :goto_0
    invoke-static {v0}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

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

    .line 655
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error opening file <"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    .line 657
    :goto_2
    invoke-static {v1}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 658
    throw p0

    :cond_0
    :goto_3
    return-object v1
.end method

.method private static a(Ljava/lang/String;[Ljava/io/File;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 615
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 617
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 618
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic a()V
    .locals 5

    .line 1882
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Reporting is starting upload"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1884
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->b()[Ljava/io/File;

    move-result-object v0

    .line 1886
    array-length v1, v0

    if-nez v1, :cond_0

    .line 1888
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Reporting found no events to upload"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1895
    :cond_0
    invoke-static {}, Lcom/verizon/ads/EnvironmentInfo;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1897
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Cannot upload report because network is not available"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "com.verizon.ads.verizonssp"

    const-string v2, "reportingBaseUrl"

    const-string v3, "https://ads.nexage.com"

    .line 1981
    invoke-static {v1, v2, v3}, Lcom/verizon/ads/Configuration;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1906
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Unable to determine base url for request"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1907
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)V

    return-void

    :cond_2
    const-string v2, "/admax/sdk/report/4"

    .line 1911
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1914
    invoke-static {}, Lcom/verizon/ads/VASAds;->getSiteId()Ljava/lang/String;

    move-result-object v2

    .line 1915
    invoke-static {v2}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1916
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Unable to upload report -- siteId has not been set"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1917
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)V

    return-void

    .line 1923
    :cond_3
    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->b([Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?dcn="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/json"

    invoke-static {v1, v3, v2}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromPostRequest(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;

    move-result-object v1

    .line 1932
    iget v2, v1, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_4

    .line 1934
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reporting failed to upload with response code <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/verizon/ads/utils/HttpUtils$Response;->code:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 1936
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->ERROR_SENDING_TO_SERVER:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)V

    return-void

    .line 1941
    :cond_4
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Report successfully uploaded"

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1944
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1945
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to delete report file + "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1951
    :cond_5
    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a([Ljava/io/File;)V

    .line 1955
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->d()I

    move-result v1

    if-lt v0, v1, :cond_6

    .line 1956
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->c:Lcom/verizon/ads/Job;

    invoke-static {v0}, Lcom/verizon/ads/JobScheduler;->schedule(Lcom/verizon/ads/Job;)V

    return-void

    .line 1962
    :cond_6
    :goto_0
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->IDLE:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 2

    .line 1751
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->b:Ljava/io/File;

    .line 1754
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/.com.verizon.ads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1785
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1754
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/.reporting/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1755
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Ljava/io/File;)Ljava/io/File;

    .line 1756
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->b()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 1758
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->b()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1759
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object p0

    const-string v0, "Unable to creating reporting directory"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 1764
    :cond_0
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->c()V

    .line 1770
    new-instance p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$3;

    invoke-direct {p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$3;-><init>()V

    const-wide/16 v0, 0x1388

    invoke-static {p0, v0, v1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    move-result-object p0

    sput-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    return-void
.end method

.method static a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)V
    .locals 2

    .line 803
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 805
    :try_start_0
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->e()Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 806
    monitor-exit v0

    return-void

    .line 809
    :cond_0
    invoke-static {p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    .line 810
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$4;->a:[I

    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->e()Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 862
    :cond_1
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object p0

    const-string v0, "Reporting upload state set to CLEARING"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 865
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    if-eqz p0, :cond_2

    .line 866
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {p0}, Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 868
    :cond_2
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->f()V

    :goto_0
    return-void

    .line 840
    :cond_3
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object p0

    const-string v0, "Reporting upload state set to ERROR_SENDING_TO_SERVER"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 848
    new-instance p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$5;

    invoke-direct {p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$5;-><init>()V

    .line 857
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->e()J

    move-result-wide v0

    .line 848
    invoke-static {p0, v0, v1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    move-result-object p0

    sput-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    return-void

    .line 830
    :cond_4
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object p0

    const-string v0, "Reporting upload state set to UPLOADING"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 832
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    if-eqz p0, :cond_5

    .line 833
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    invoke-interface {p0}, Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;->cancel()V

    .line 835
    :cond_5
    sget-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->c:Lcom/verizon/ads/Job;

    invoke-static {p0}, Lcom/verizon/ads/JobScheduler;->schedule(Lcom/verizon/ads/Job;)V

    return-void

    .line 814
    :cond_6
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object p0

    const-string v0, "Reporting upload state set to IDLE"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 817
    new-instance p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$4;

    invoke-direct {p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$4;-><init>()V

    .line 825
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->e()J

    move-result-wide v0

    .line 817
    invoke-static {p0, v0, v1}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    move-result-object p0

    sput-object p0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a:Lcom/verizon/ads/utils/ThreadUtils$ScheduledRunnable;

    return-void

    :catchall_0
    move-exception p0

    .line 810
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 673
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".json"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 676
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->b()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1726
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->d()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    .line 1727
    :try_start_0
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 1731
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->e()Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    move-result-object v0

    sget-object v1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->IDLE:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    if-ne v0, v1, :cond_0

    .line 1733
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->d()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1734
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object p1

    const-string v0, "Reporting batch size limit detected -- requesting upload"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1735
    sget-object p1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->UPLOADING:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    invoke-static {p1}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)V

    .line 1738
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method private static a([Ljava/io/File;)V
    .locals 7

    .line 529
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 530
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 531
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to delete reporting file <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :cond_1
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 632
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 633
    :try_start_1
    invoke-static {v1, p1}, Lcom/verizon/ads/utils/IOUtils;->write(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    invoke-static {v1}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

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

    .line 635
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing to file <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 637
    invoke-static {v0}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    move-result p0

    :goto_1
    return p0

    :goto_2
    invoke-static {v0}, Lcom/verizon/ads/utils/IOUtils;->closeStream(Ljava/io/Closeable;)Z

    .line 638
    throw p0
.end method

.method private static b([Ljava/io/File;)Ljava/io/File;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "VerizonSSPReport"

    .line 544
    invoke-static {v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 546
    :try_start_1
    new-instance v2, Lcom/verizon/ads/utils/JSONWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/verizon/ads/utils/JSONWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v3, "request_"

    .line 548
    invoke-static {v3, p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Ljava/lang/String;[Ljava/io/File;)Ljava/util/Set;

    move-result-object v3

    const-string v4, "display_"

    .line 549
    invoke-static {v4, p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Ljava/lang/String;[Ljava/io/File;)Ljava/util/Set;

    move-result-object v4

    const-string v5, "click_"

    .line 550
    invoke-static {v5, p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Ljava/lang/String;[Ljava/io/File;)Ljava/util/Set;

    move-result-object p0

    .line 552
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_0

    .line 601
    :try_start_3
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    .line 557
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->beginObject()V

    .line 559
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "req"

    .line 560
    invoke-virtual {v2, v5}, Lcom/verizon/ads/utils/JSONWriter;->name(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->beginArray()V

    .line 562
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 563
    invoke-static {v6}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->b(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v6

    .line 564
    invoke-virtual {v2, v6}, Lcom/verizon/ads/utils/JSONWriter;->write(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->endArray()V

    .line 570
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "display"

    .line 571
    invoke-virtual {v2, v5}, Lcom/verizon/ads/utils/JSONWriter;->name(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->beginArray()V

    .line 573
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 574
    invoke-static {v6}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->b(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v6

    .line 575
    invoke-virtual {v2, v6}, Lcom/verizon/ads/utils/JSONWriter;->write(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 577
    :cond_3
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->endArray()V

    .line 581
    :cond_4
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "click"

    .line 582
    invoke-virtual {v2, v5}, Lcom/verizon/ads/utils/JSONWriter;->name(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->beginArray()V

    .line 584
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 585
    invoke-static {v6}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->b(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v6

    .line 586
    invoke-virtual {v2, v6}, Lcom/verizon/ads/utils/JSONWriter;->write(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 588
    :cond_5
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->endArray()V

    .line 591
    :cond_6
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->endObject()V

    .line 592
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->close()V

    .line 594
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    add-int/2addr v3, p0

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result p0

    add-int/2addr v3, p0

    if-nez v3, :cond_7

    .line 595
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object p0

    const-string v1, "No reporting events added to the request"

    invoke-virtual {p0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 601
    :try_start_5
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->close()V

    return-object v0

    :cond_7
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object v1

    :catchall_0
    move-exception p0

    .line 546
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    .line 601
    :try_start_7
    invoke-virtual {v2}, Lcom/verizon/ads/utils/JSONWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    :try_start_8
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    .line 602
    :try_start_9
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Error creating SSP reporting request"

    invoke-virtual {v1, v2, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    .line 607
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    const-string v2, "Could not create the SSP report file."

    invoke-virtual {v1, v2, p0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static b(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 4

    .line 688
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-static {p0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 691
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 693
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error parsing reporting file <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static b()[Ljava/io/File;
    .locals 2

    .line 509
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->b()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$2;

    invoke-direct {v1}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method private static c()V
    .locals 6

    .line 705
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 709
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 710
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 717
    :cond_2
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->c()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private static d()I
    .locals 3

    const-string v0, "com.verizon.ads.verizonssp"

    const-string v1, "reportingBatchSize"

    const/4 v2, 0x5

    .line 744
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static e()J
    .locals 3

    const-string v0, "com.verizon.ads.verizonssp"

    const-string v1, "reportingBatchFrequency"

    const v2, 0x1d4c0

    .line 876
    invoke-static {v0, v1, v2}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static f()V
    .locals 2

    .line 968
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter;->a()Lcom/verizon/ads/Logger;

    move-result-object v0

    const-string v1, "Reporting is clearing events"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->b()[Ljava/io/File;

    move-result-object v0

    .line 971
    array-length v1, v0

    if-lez v1, :cond_0

    .line 972
    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a([Ljava/io/File;)V

    .line 975
    :cond_0
    sget-object v0, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;->IDLE:Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;

    invoke-static {v0}, Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$Uploader;->a(Lcom/verizon/ads/verizonsspreporter/VerizonSSPReporter$UploadState;)V

    return-void
.end method
