.class public interface abstract Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onDownloadFinish(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method
