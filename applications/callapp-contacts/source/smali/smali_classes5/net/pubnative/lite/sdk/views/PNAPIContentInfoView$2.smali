.class Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->setIconUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$2;->this$0:Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onDownloadFinish(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView$2;->this$0:Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;->access$000(Lnet/pubnative/lite/sdk/views/PNAPIContentInfoView;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
