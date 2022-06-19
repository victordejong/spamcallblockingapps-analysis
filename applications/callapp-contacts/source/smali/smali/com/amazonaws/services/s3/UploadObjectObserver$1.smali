.class Lcom/amazonaws/services/s3/UploadObjectObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/services/s3/UploadObjectObserver;->a(Lcom/amazonaws/services/s3/internal/PartCreationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazonaws/services/s3/model/UploadPartResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/amazonaws/services/s3/OnFileDelete;

.field final synthetic d:Lcom/amazonaws/services/s3/UploadObjectObserver;


# direct methods
.method constructor <init>(Lcom/amazonaws/services/s3/UploadObjectObserver;Lcom/amazonaws/services/s3/model/UploadPartRequest;Ljava/io/File;Lcom/amazonaws/services/s3/OnFileDelete;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->d:Lcom/amazonaws/services/s3/UploadObjectObserver;

    iput-object p2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    iput-object p3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    iput-object p4, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 5

    const-string v0, " which has already been uploaded"

    const-string v1, "Ignoring failure to delete file "

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->d:Lcom/amazonaws/services/s3/UploadObjectObserver;

    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 1239
    iget-object v2, v2, Lcom/amazonaws/services/s3/UploadObjectObserver;->a:Lcom/amazonaws/services/s3/internal/S3DirectSpi;

    invoke-interface {v2, v3}, Lcom/amazonaws/services/s3/internal/S3DirectSpi;->a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Lcom/amazonaws/services/s3/OnFileDelete;->a()V

    :cond_1
    :goto_0
    return-object v2

    :catchall_0
    move-exception v2

    .line 157
    iget-object v3, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    iget-object v0, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->c:Lcom/amazonaws/services/s3/OnFileDelete;

    if-eqz v0, :cond_3

    .line 163
    invoke-interface {v0}, Lcom/amazonaws/services/s3/OnFileDelete;->a()V

    goto :goto_1

    .line 158
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->b:Ljava/io/File;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 165
    :cond_3
    :goto_1
    throw v2
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Lcom/amazonaws/services/s3/UploadObjectObserver$1;->a()Lcom/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v0

    return-object v0
.end method
