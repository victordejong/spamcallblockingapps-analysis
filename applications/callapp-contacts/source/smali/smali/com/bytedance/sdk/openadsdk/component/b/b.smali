.class public Lcom/bytedance/sdk/openadsdk/component/b/b;
.super Lcom/bytedance/sdk/openadsdk/component/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd;


# instance fields
.field private m:Z

.field private n:Landroid/graphics/Bitmap;

.field private o:I

.field private p:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/b/c;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;I)V

    const-string p1, "embeded_ad"

    .line 31
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)Z
    .locals 3

    .line 93
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->c(I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v2, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    .line 98
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x2

    if-ne v2, p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/t;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_3
    :goto_0
    return v0
.end method

.method private g()V
    .locals 2

    .line 115
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->o:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 116
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->o:I

    return-void

    :cond_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    .line 118
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->o:I

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/bytedance/sdk/openadsdk/multipro/b/a;
    .locals 1

    .line 23
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/b/c;->a()Lcom/bytedance/sdk/openadsdk/multipro/b/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(II)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/b/c;->a(II)V

    return-void
.end method

.method public bridge synthetic a(JJ)V
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/b/c;->a(JJ)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/b/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c()V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/b/c;->c()V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/b/c;->d()V

    return-void
.end method

.method public bridge synthetic d_()V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/b/c;->d_()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/b/c;->e()V

    return-void
.end method

.method public bridge synthetic f()V
    .locals 0

    .line 23
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/b/c;->f()V

    return-void
.end method

.method public getAdView()Landroid/view/View;
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->d(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 41
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/b/b$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/b/b$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/b/b;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a;)V

    .line 51
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdLoadListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$c;)V

    .line 52
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$b;)V

    .line 53
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result v2

    .line 54
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/b/b;->a(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/h/e;->a(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V

    .line 56
    move-object v2, v0

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->m:Z

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;->setCanInterruptVideoPlay(Z)V

    .line 57
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->n:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 58
    move-object v3, v0

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->o:I

    invoke-virtual {v3, v2, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;->a(Landroid/graphics/Bitmap;I)V

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->p:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setDrawVideoListener(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-object v0, v1

    .line 66
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->h:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->d(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->a(JZZ)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public bridge synthetic getVideoDuration()D
    .locals 2

    .line 23
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/component/b/c;->getVideoDuration()D

    move-result-wide v0

    return-wide v0
.end method

.method public setCanInterruptVideoPlay(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->m:Z

    return-void
.end method

.method public setDrawVideoListener(Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->p:Lcom/bytedance/sdk/openadsdk/TTDrawFeedAd$DrawVideoListener;

    return-void
.end method

.method public setPauseIcon(Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->n:Landroid/graphics/Bitmap;

    .line 81
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/b/b;->o:I

    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/b/b;->g()V

    return-void
.end method

.method public bridge synthetic setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/b/c;->setVideoAdListener(Lcom/bytedance/sdk/openadsdk/TTFeedAd$VideoAdListener;)V

    return-void
.end method
