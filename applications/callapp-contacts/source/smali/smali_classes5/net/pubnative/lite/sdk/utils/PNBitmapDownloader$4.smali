.class Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;Ljava/lang/Exception;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$4;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$4;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 217
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$4;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->access$200(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;)Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$4;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->access$202(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;)Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$4;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->access$000(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$4;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;->onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
