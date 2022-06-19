.class Lcom/verizon/ads/webview/MRAIDExpandedActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/webview/MRAIDExpandedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$5;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$5;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$5;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    invoke-static {v0}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->e(Lcom/verizon/ads/webview/MRAIDExpandedActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/support/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 397
    iget-object v0, p0, Lcom/verizon/ads/webview/MRAIDExpandedActivity$5;->a:Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/verizon/ads/webview/MRAIDExpandedActivity;->a(Lcom/verizon/ads/webview/MRAIDExpandedActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    return-void
.end method
