.class public Lcom/adcolony/sdk/AdColonyAdViewActivity;
.super Ld2/w;
.source "SourceFile"


# instance fields
.field public j:Ld2/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld2/w;-><init>()V

    .line 2
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 4
    iget-object v0, v0, Ld2/f1;->n:Ld2/j;

    .line 5
    :goto_0
    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->j:Ld2/j;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/w;->a:Ld2/j0;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Ld2/w;->a:Ld2/j0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->j:Ld2/j;

    .line 4
    iget-boolean v1, v0, Ld2/j;->k:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Ld2/j;->n:Z

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->c()F

    move-result v1

    .line 6
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, v0, Ld2/j;->c:Ld2/h;

    .line 7
    iget v4, v3, Ld2/h;->a:I

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    .line 8
    iget v3, v3, Ld2/h;->b:I

    int-to-float v3, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    .line 9
    invoke-direct {v2, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 10
    iget-object v1, v0, Ld2/j;->a:Ld2/j0;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {v0}, Ld2/j;->getWebView()Ld2/x3;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    new-instance v2, Ld2/t0;

    const/4 v3, 0x0

    const-string v4, "WebView.set_bounds"

    invoke-direct {v2, v4, v3}, Ld2/t0;-><init>(Ljava/lang/String;I)V

    .line 13
    new-instance v3, Ld2/f4;

    invoke-direct {v3}, Ld2/f4;-><init>()V

    .line 14
    iget v4, v1, Ld2/x3;->n:I

    const-string v5, "x"

    .line 15
    invoke-static {v3, v5, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 16
    iget v4, v1, Ld2/x3;->p:I

    const-string v5, "y"

    .line 17
    invoke-static {v3, v5, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 18
    iget v4, v1, Ld2/x3;->r:I

    const-string v5, "width"

    .line 19
    invoke-static {v3, v5, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 20
    iget v4, v1, Ld2/x3;->t:I

    const-string v5, "height"

    .line 21
    invoke-static {v3, v5, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 22
    iput-object v3, v2, Ld2/t0;->b:Ld2/f4;

    .line 23
    invoke-virtual {v1, v2}, Ld2/x3;->i(Ld2/t0;)V

    .line 24
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 25
    iget-object v2, v0, Ld2/j;->d:Ljava/lang/String;

    const-string v3, "ad_session_id"

    invoke-static {v1, v3, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    new-instance v2, Ld2/t0;

    iget-object v3, v0, Ld2/j;->a:Ld2/j0;

    .line 27
    iget v3, v3, Ld2/j0;->k:I

    const-string v4, "MRAID.on_close"

    .line 28
    invoke-direct {v2, v4, v3, v1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v2}, Ld2/t0;->b()V

    .line 29
    :cond_2
    iget-object v1, v0, Ld2/j;->h:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 30
    iget-object v2, v0, Ld2/j;->a:Ld2/j0;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 31
    iget-object v1, v0, Ld2/j;->a:Ld2/j0;

    iget-object v2, v0, Ld2/j;->h:Landroid/widget/ImageView;

    .line 32
    iget-object v1, v1, Ld2/j0;->x:Landroid/support/v4/media/a;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 33
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/support/v4/media/a;->K(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 34
    :cond_3
    :goto_0
    iget-object v1, v0, Ld2/j;->a:Ld2/j0;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 35
    iget-object v1, v0, Ld2/j;->b:Ld2/k;

    if-eqz v1, :cond_4

    .line 36
    invoke-virtual {v1, v0}, Ld2/k;->b(Ld2/j;)V

    .line 37
    :cond_4
    :goto_1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    iput-object v1, v0, Ld2/f1;->n:Ld2/j;

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/adcolony/sdk/AdColonyAdViewActivity;->f()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->j:Ld2/j;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ld2/j;->getOrientation()I

    move-result v0

    iput v0, p0, Ld2/w;->b:I

    .line 3
    invoke-super {p0, p1}, Ld2/w;->onCreate(Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->j:Ld2/j;

    invoke-virtual {p1}, Ld2/j;->a()Z

    .line 5
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->j:Ld2/j;

    invoke-virtual {p1}, Ld2/j;->getListener()Ld2/k;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdViewActivity;->j:Ld2/j;

    invoke-virtual {p1, v0}, Ld2/k;->d(Ld2/j;)V

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    iput-object v0, p1, Ld2/f1;->n:Ld2/j;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
