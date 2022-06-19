.class Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;
.super Lnet/pubnative/lite/sdk/views/PNWebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDView-WebView"


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Landroid/content/Context;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-direct {p0, p2}, Lnet/pubnative/lite/sdk/views/PNWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 353
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/views/PNWebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "portrait"

    goto :goto_0

    :cond_0
    const-string p1, "landscape"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MRAIDView-WebView"

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 356
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$500(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_1

    .line 358
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$600(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 347
    invoke-super/range {p0 .. p5}, Lnet/pubnative/lite/sdk/views/PNWebView;->onLayout(ZIIII)V

    .line 348
    iget-object v0, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$300(Lnet/pubnative/lite/sdk/mraid/MRAIDView;Landroid/webkit/WebView;ZIIII)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 365
    invoke-super {p0, p1, p2}, Lnet/pubnative/lite/sdk/views/PNWebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onVisibilityChanged "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$700(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MRAIDView-WebView"

    invoke-static {v0, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1, p2}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$800(Lnet/pubnative/lite/sdk/mraid/MRAIDView;I)V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .line 374
    invoke-super {p0, p1}, Lnet/pubnative/lite/sdk/views/PNWebView;->onWindowVisibilityChanged(I)V

    .line 375
    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;->getVisibility()I

    move-result v0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowVisibilityChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$700(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (actual "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-static {v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$700(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MRAIDView-WebView"

    .line 376
    invoke-static {v1, p1}, Lnet/pubnative/lite/sdk/mraid/internal/MRAIDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$400(Lnet/pubnative/lite/sdk/mraid/MRAIDView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lnet/pubnative/lite/sdk/mraid/MRAIDView$2;->this$0:Lnet/pubnative/lite/sdk/mraid/MRAIDView;

    invoke-static {p1, v0}, Lnet/pubnative/lite/sdk/mraid/MRAIDView;->access$800(Lnet/pubnative/lite/sdk/mraid/MRAIDView;I)V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 389
    invoke-super {p0}, Lnet/pubnative/lite/sdk/views/PNWebView;->performClick()Z

    move-result v0

    return v0
.end method
