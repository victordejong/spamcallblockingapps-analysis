.class public interface abstract Lcom/yanzhenjie/nohttp/download/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"


# virtual methods
.method public abstract onCancel(I)V
.end method

.method public abstract onDownloadError(ILjava/lang/Exception;)V
.end method

.method public abstract onFinish(ILjava/lang/String;)V
.end method

.method public abstract onProgress(IIJJ)V
.end method

.method public abstract onStart(IZJLcom/yanzhenjie/nohttp/Headers;J)V
.end method
