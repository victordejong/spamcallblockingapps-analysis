.class public final Lcom/millennialmedia/internal/utils/IOUtils$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/IOUtils;->downloadFile(Ljava/lang/String;Ljava/lang/Integer;Ljava/io/File;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$connectionTimeout:Ljava/lang/Integer;

.field public final synthetic val$downloadListener:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

.field public final synthetic val$file:Ljava/io/File;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$file:Ljava/io/File;

    iput-object p2, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$connectionTimeout:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$downloadListener:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$file:Ljava/io/File;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "_mm_"

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$file:Ljava/io/File;

    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$connectionTimeout:Ljava/lang/Integer;

    new-instance v4, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;

    invoke-direct {v4, v0}, Lcom/millennialmedia/internal/utils/IOUtils$FileStreamer;-><init>(Ljava/io/File;)V

    invoke-static {v1, v2, v2, v3, v4}, Lcom/millennialmedia/internal/utils/HttpUtils;->sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/millennialmedia/internal/utils/HttpUtils$ResponseStreamer;)Lcom/millennialmedia/internal/utils/HttpUtils$Response;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/internal/utils/HttpUtils$Response;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$downloadListener:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;->onDownloadSucceeded(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$downloadListener:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Error creating file"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;->onDownloadFailed(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/millennialmedia/internal/utils/IOUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occurred downloading file from url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/utils/IOUtils$1;->val$downloadListener:Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;

    invoke-interface {v1, v0}, Lcom/millennialmedia/internal/utils/IOUtils$DownloadListener;->onDownloadFailed(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
