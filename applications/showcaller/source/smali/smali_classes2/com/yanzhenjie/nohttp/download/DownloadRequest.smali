.class public Lcom/yanzhenjie/nohttp/download/DownloadRequest;
.super Lcom/yanzhenjie/nohttp/BasicRequest;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yanzhenjie/nohttp/BasicRequest<",
        "Lcom/yanzhenjie/nohttp/download/DownloadRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATUS_FINISH:I = 0x2

.field public static final STATUS_RESTART:I = 0x0

.field public static final STATUS_RESUME:I = 0x1


# instance fields
.field private final isDeleteOld:Z

.field private final isRange:Z

.field private final mFileDir:Ljava/lang/String;

.field private final mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/nohttp/BasicRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;)V

    .line 3
    iput-object p3, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->mFileDir:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->mFileName:Ljava/lang/String;

    .line 5
    iput-boolean p5, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->isRange:Z

    .line 6
    iput-boolean p6, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->isDeleteOld:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;ZZ)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/yanzhenjie/nohttp/download/DownloadRequest;-><init>(Ljava/lang/String;Lcom/yanzhenjie/nohttp/RequestMethod;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public checkBeforeStatus()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->isRange:Z

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->mFileDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->isDeleteOld:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->mFileDir:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".nohttp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->mFileDir:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public isDeleteOld()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->isDeleteOld:Z

    return v0
.end method

.method public isRange()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/download/DownloadRequest;->isRange:Z

    return v0
.end method
