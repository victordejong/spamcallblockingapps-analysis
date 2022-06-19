.class public abstract Lcom/yanzhenjie/nohttp/BasicBinary;
.super Ljava/lang/Object;
.source "BasicBinary.java"

# interfaces
.implements Lcom/yanzhenjie/nohttp/Binary;
.implements Lcom/yanzhenjie/nohttp/able/Startable;
.implements Lcom/yanzhenjie/nohttp/able/Finishable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;
    }
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private isCancel:Z

.field private isFinish:Z

.field private isStarted:Z

.field private mUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

.field private mimeType:Ljava/lang/String;

.field private what:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->isStarted:Z

    .line 3
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->isCancel:Z

    .line 4
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->isFinish:Z

    .line 5
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->fileName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->isCancel:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->isCancel:Z

    .line 3
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->postCancel()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->isFinish:Z

    return-void
.end method

.method public abstract getBinaryLength()J
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->fileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->fileName:Ljava/lang/String;

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getInputStream()Ljava/io/InputStream;
.end method

.method public final getLength()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->getBinaryLength()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mimeType:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mimeType:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->isCancel:Z

    return v0
.end method

.method public isFinished()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->isFinish:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->isStarted:Z

    return v0
.end method

.method public onWriteBinary(Ljava/io/OutputStream;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->postFinish()V

    return-void

    .line 5
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->start()V

    .line 7
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->postStart()V

    .line 8
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->getLength()J

    move-result-wide v1

    const/16 v3, 0x1000

    new-array v3, v3, [B

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v7, v4

    const/4 v9, 0x0

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 10
    invoke-virtual {p1, v3, v6, v10}, Ljava/io/OutputStream;->write([BII)V

    cmp-long v11, v1, v4

    if-eqz v11, :cond_1

    .line 11
    iget-object v11, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

    if-eqz v11, :cond_1

    int-to-long v10, v10

    add-long/2addr v7, v10

    const-wide/16 v10, 0x64

    mul-long v10, v10, v7

    .line 12
    div-long/2addr v10, v1

    long-to-int v11, v10

    .line 13
    rem-int/lit8 v10, v11, 0x3

    if-eqz v10, :cond_2

    rem-int/lit8 v10, v11, 0x5

    if-eqz v10, :cond_2

    rem-int/lit8 v10, v11, 0x7

    if-nez v10, :cond_1

    :cond_2
    if-eq v9, v11, :cond_1

    .line 14
    invoke-virtual {p0, v11}, Lcom/yanzhenjie/nohttp/BasicBinary;->postProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v11

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    :try_start_2
    invoke-static {p1}, Lcom/yanzhenjie/nohttp/Logger;->e(Ljava/lang/Throwable;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/nohttp/BasicBinary;->postError(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :cond_3
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 18
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->postFinish()V

    goto :goto_2

    .line 19
    :goto_1
    invoke-static {v0}, Lcom/yanzhenjie/nohttp/tools/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 20
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->postFinish()V

    throw p1

    .line 21
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/yanzhenjie/nohttp/BasicBinary;->finish()V

    return-void
.end method

.method protected postCancel()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;

    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->what:I

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;-><init>(Lcom/yanzhenjie/nohttp/BasicBinary;ILcom/yanzhenjie/nohttp/OnUploadListener;)V

    .line 2
    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->cancel()V

    .line 3
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected postError(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;

    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->what:I

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;-><init>(Lcom/yanzhenjie/nohttp/BasicBinary;ILcom/yanzhenjie/nohttp/OnUploadListener;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->error(Ljava/lang/Exception;)V

    .line 3
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected postFinish()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;

    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->what:I

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;-><init>(Lcom/yanzhenjie/nohttp/BasicBinary;ILcom/yanzhenjie/nohttp/OnUploadListener;)V

    .line 2
    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->finish()V

    .line 3
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected postProgress(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;

    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->what:I

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;-><init>(Lcom/yanzhenjie/nohttp/BasicBinary;ILcom/yanzhenjie/nohttp/OnUploadListener;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->progress(I)V

    .line 3
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected postStart()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;

    iget v1, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->what:I

    iget-object v2, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;-><init>(Lcom/yanzhenjie/nohttp/BasicBinary;ILcom/yanzhenjie/nohttp/OnUploadListener;)V

    .line 2
    invoke-virtual {v0}, Lcom/yanzhenjie/nohttp/BasicBinary$UploadPoster;->start()V

    .line 3
    invoke-static {}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->getInstance()Lcom/yanzhenjie/nohttp/HandlerDelivery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/nohttp/HandlerDelivery;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUploadListener(ILcom/yanzhenjie/nohttp/OnUploadListener;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->what:I

    .line 2
    iput-object p2, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->mUploadListener:Lcom/yanzhenjie/nohttp/OnUploadListener;

    return-void
.end method

.method public start()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/yanzhenjie/nohttp/BasicBinary;->isStarted:Z

    return-void
.end method
