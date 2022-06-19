.class Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->close(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;


# direct methods
.method constructor <init>(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    move-result-object v0

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    const-string v1, "loading"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->b(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    move-result-object v0

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    const-string v1, "expanded"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "resized"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 364
    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    move-result-object v0

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    .line 363
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    move-result-object v0

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/support/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    .line 372
    instance-of v1, v0, Lcom/verizon/ads/webview/MRAIDExpandedActivity;

    if-eqz v1, :cond_3

    .line 373
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 377
    :cond_3
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    instance-of v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;

    if-eqz v0, :cond_4

    .line 378
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    check-cast v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;

    .line 2385
    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->f()V

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->c(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 386
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    move-result-object v0

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;)V

    .line 390
    :cond_5
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/support/utils/ViewUtils;->removeFromParent(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->c(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/verizon/ads/support/utils/ViewUtils;->getActivityForView(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 395
    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    .line 396
    invoke-virtual {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/content/MutableContextWrapper;

    .line 398
    invoke-virtual {v1, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 401
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->d(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 402
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->d(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->setTranslationX(F)V

    .line 403
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->d(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->setTranslationY(F)V

    .line 406
    :cond_6
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->c(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v1, v1, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    iget-object v2, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v2, v2, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v2}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->e(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    :cond_7
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 411
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 412
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 413
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 416
    :cond_8
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->a(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->a(Ljava/lang/String;)V

    .line 419
    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-static {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->f(Lcom/verizon/ads/webview/VASAdsMRAIDWebView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    instance-of v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$TwoPartExpandWebView;

    if-nez v0, :cond_a

    .line 424
    iget-object v0, p0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID$1;->a:Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;

    iget-object v0, v0, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$JSBridgeMRAID;->n:Lcom/verizon/ads/webview/VASAdsMRAIDWebView;

    invoke-virtual {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView;->d()Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/verizon/ads/webview/VASAdsMRAIDWebView$VASAdsMRAIDWebViewListener;->close()V

    :cond_a
    return-void
.end method
