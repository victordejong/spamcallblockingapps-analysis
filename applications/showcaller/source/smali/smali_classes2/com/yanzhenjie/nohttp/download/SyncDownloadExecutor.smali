.class public final enum Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;
.super Ljava/lang/Enum;
.source "SyncDownloadExecutor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

.field public static final enum AsyncRequestExecutor:Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

.field public static final enum INSTANCE:Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;


# instance fields
.field private mDownloader:Lcom/yanzhenjie/nohttp/download/Downloader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;->INSTANCE:Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    .line 2
    new-instance v1, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    const-string v3, "AsyncRequestExecutor"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;->AsyncRequestExecutor:Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;->$VALUES:[Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance p1, Lcom/yanzhenjie/nohttp/download/Downloader;

    invoke-static {}, Lcom/yanzhenjie/nohttp/NoHttp;->getInitializeConfig()Lcom/yanzhenjie/nohttp/InitializationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yanzhenjie/nohttp/InitializationConfig;->getNetworkExecutor()Lcom/yanzhenjie/nohttp/NetworkExecutor;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/yanzhenjie/nohttp/download/Downloader;-><init>(Lcom/yanzhenjie/nohttp/NetworkExecutor;)V

    iput-object p1, p0, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;->mDownloader:Lcom/yanzhenjie/nohttp/download/Downloader;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;
    .locals 1

    .line 1
    const-class v0, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    return-object p0
.end method

.method public static values()[Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;
    .locals 1

    .line 1
    sget-object v0, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;->$VALUES:[Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    invoke-virtual {v0}, [Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;

    return-object v0
.end method


# virtual methods
.method public execute(ILcom/yanzhenjie/nohttp/download/DownloadRequest;Lcom/yanzhenjie/nohttp/download/DownloadListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/SyncDownloadExecutor;->mDownloader:Lcom/yanzhenjie/nohttp/download/Downloader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yanzhenjie/nohttp/download/Downloader;->download(ILcom/yanzhenjie/nohttp/download/DownloadRequest;Lcom/yanzhenjie/nohttp/download/DownloadListener;)V

    return-void
.end method
