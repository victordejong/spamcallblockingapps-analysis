.class Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/mraid/MRAIDView;->expandCreative(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

.field final synthetic val$finalUrl:Ljava/lang/String;

.field final synthetic val$isCustomExpand:Z


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;ZLjava/lang/String;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iput-boolean p2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->val$isCustomExpand:Z

    iput-object p3, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->val$finalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "hz-m MRAIDView - expand - url loading thread"

    .line 641
    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;)V

    .line 642
    iget-boolean v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->val$isCustomExpand:Z

    const-string v1, "Could not load part 2 expanded content for URL: "

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$1;

    invoke-direct {v1, p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$1;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->e(Ljava/lang/String;)V

    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->val$finalUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$1600(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 669
    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;

    invoke-direct {v2, p0, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5$2;-><init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 687
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$5;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->e(Ljava/lang/String;)V

    return-void
.end method
