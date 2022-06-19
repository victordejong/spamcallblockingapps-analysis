.class Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/mraid/MRAIDView;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 569
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget v0, v0, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 576
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeFromResized()V

    :cond_1
    return-void

    .line 570
    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1000(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 571
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1000(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDViewCloseLayoutListener;->onClose()V

    return-void

    .line 573
    :cond_3
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$4;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-virtual {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->closeFromExpanded()V

    return-void
.end method
