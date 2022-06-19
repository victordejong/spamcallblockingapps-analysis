.class public Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;
.super Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;


# instance fields
.field aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

.field aT:Landroid/widget/FrameLayout;

.field aU:Lcom/a/a/a/a/a/c;

.field aV:Ljava/lang/String;

.field aW:Landroid/os/Handler;

.field aX:Z

.field aY:Z

.field private bi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;-><init>()V

    const-string v0, "rewarded_video"

    .line 51
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aV:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aX:Z

    .line 54
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aY:Z

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->bi:Z

    return-void
.end method

.method private V()V
    .locals 2

    .line 90
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->bi:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->bi:Z

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/a/a/a/a/a/c;
    .locals 2

    .line 567
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aV:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/a/a/a/a/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)Lcom/a/a/a/a/a/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;
    .locals 3

    const/4 v0, 0x0

    .line 574
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 575
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 576
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    if-eqz v2, :cond_0

    .line 577
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;[F)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a([F)V

    return-void
.end method

.method private a([F)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result v0

    .line 122
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 123
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget p1, p1, v3

    .line 124
    invoke-virtual {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    .line 125
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aV:Ljava/lang/String;

    invoke-direct {v0, p0, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    .line 126
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setExpressVideoListenerProxy(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/g;)V

    .line 127
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;)V

    .line 128
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 129
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aT:Landroid/widget/FrameLayout;

    .line 130
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->s:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->i()V

    .line 132
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->n()Z

    move-result p1

    if-nez p1, :cond_0

    .line 133
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g(Z)V

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->j()V

    return-void
.end method

.method private g(Z)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->W:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSkip(Z)V

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowSound(Z)V

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowDislike(Z)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->setShowDislike(Z)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 152
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->h:Landroid/widget/RelativeLayout;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 153
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ay:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    return-void

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->h:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    .line 156
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ay:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ag;->a(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method protected M()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Z

    .line 66
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->M()V

    return-void
.end method

.method public N()V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->a()V

    :cond_0
    return-void
.end method

.method public O()J
    .locals 3

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetCurrentPlayTime mVideoCurrent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aL:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTRewardExpressVideoActivity"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aL:J

    return-wide v0
.end method

.method public P()I
    .locals 2

    .line 410
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    .line 413
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aY:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 419
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    .line 422
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->u()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_4

    :cond_4
    return v1
.end method

.method public Q()V
    .locals 0

    .line 431
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->K()V

    return-void
.end method

.method public R()V
    .locals 1

    .line 445
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->R()V

    .line 446
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->h()V

    :cond_0
    return-void
.end method

.method protected a(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 10

    if-eqz p1, :cond_4

    .line 501
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 504
    :cond_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)Lcom/a/a/a/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aU:Lcom/a/a/a/a/a/c;

    .line 505
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    .line 506
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Landroid/view/ViewGroup;)Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 508
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->i:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 509
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    .line 512
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$a;)V

    .line 532
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$5;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->i:Landroid/content/Context;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aV:Ljava/lang/String;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Ljava/lang/String;)I

    move-result v7

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    .line 539
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 540
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aU:Lcom/a/a/a/a/a/c;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/a/a/a/a/a/c;)V

    .line 541
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "rit_scene"

    if-nez v2, :cond_2

    .line 542
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 543
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ag:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Ljava/util/Map;)V

    .line 546
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;)V

    .line 548
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$6;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->i:Landroid/content/Context;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aV:Ljava/lang/String;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Ljava/lang/String;)I

    move-result v9

    move-object v4, v1

    move-object v5, p0

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    .line 555
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 556
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ag:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 557
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 558
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ag:Ljava/lang/String;

    invoke-interface {p1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Ljava/util/Map;)V

    .line 561
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aU:Lcom/a/a/a/a/a/c;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/a/a/a/a/a/c;)V

    .line 562
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;)V

    const/4 p1, 0x0

    .line 563
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->setNeedCheckingShow(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(JZ)Z
    .locals 15

    move-object v0, p0

    .line 162
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->getVideoFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aT:Landroid/widget/FrameLayout;

    .line 163
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/g;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->i:Landroid/content/Context;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aT:Landroid/widget/FrameLayout;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/g;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    .line 166
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 167
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->n()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "dynamic_show_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->ag:Ljava/lang/String;

    const-string v3, "rit_scene"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_1
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/util/Map;)V

    .line 172
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;)V

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c$a;)V

    .line 304
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->B()Lcom/bytedance/sdk/openadsdk/core/e/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/o;->h()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 305
    :goto_0
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->B:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 306
    new-instance v3, Ljava/io/File;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->B:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_3

    .line 308
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->B:Ljava/lang/String;

    .line 309
    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->D:Z

    :cond_3
    move-object v6, v2

    .line 312
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "videoUrl:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wzj"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-nez v2, :cond_4

    const/4 v1, 0x0

    return v1

    .line 316
    :cond_4
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x12c

    .line 317
    iput v3, v2, Landroid/os/Message;->what:I

    .line 318
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 319
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->L:Lcom/bytedance/sdk/openadsdk/utils/ah;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/ah;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 320
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->P()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aT:Landroid/widget/FrameLayout;

    .line 321
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aT:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v11

    iget-boolean v14, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->R:Z

    move-wide/from16 v12, p1

    .line 320
    invoke-interface/range {v5 .. v14}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->a(Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/lang/String;JZ)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez p3, :cond_5

    .line 323
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->i:Landroid/content/Context;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const-string v5, "rewarded_video"

    invoke-static {v3, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/util/Map;)V

    .line 324
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->R()V

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aZ:I

    :cond_5
    return v2
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    const-string v4, "onPause throw Exception :"

    const-string v5, "TTRewardExpressVideoActivity"

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->t()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(JZ)Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 386
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    if-eqz p1, :cond_4

    .line 387
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->l()V

    const/4 p1, 0x0

    .line 388
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    :cond_4
    :goto_1
    return-void

    .line 378
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->u()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 379
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 369
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->t()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 370
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->G:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_8
    return-void

    :catchall_1
    move-exception p1

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 362
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->t()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->u()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    .line 365
    :cond_a
    invoke-virtual {p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(JZ)Z

    :cond_b
    :goto_2
    return-void
.end method

.method protected e()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->e()V

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->m()V

    .line 73
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->R:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->l()V

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->r()V

    .line 76
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->k()V

    const-string v0, "reward_endcard"

    .line 77
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->p()V

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->b(Lcom/bytedance/sdk/openadsdk/core/e/i;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 80
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Z

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->V:I

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->h()V

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->s()V

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->d(Z)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->R:Z

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g:Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TopProxyLayout;->b()V

    :cond_0
    return-void
.end method

.method public onAdClicked(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->l()V

    .line 493
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->onDestroy()V

    .line 494
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aW:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x1

    .line 453
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Z

    .line 454
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->h()V

    .line 455
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aW:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 456
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aW:Landroid/os/Handler;

    .line 458
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aW:Landroid/os/Handler;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 2

    .line 469
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->f()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->w:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 473
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->g(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 475
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->d(Z)V

    .line 476
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aI:Z

    .line 477
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->h()V

    .line 478
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->A:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(JZ)Z

    move-result p1

    if-nez p1, :cond_2

    .line 480
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->s()V

    .line 481
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 482
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "vbtt_skip_type"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aV:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 351
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;->onResume()V

    .line 352
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->V()V

    .line 353
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;->aS:Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/FullRewardExpressView;->j()V

    :cond_0
    return-void
.end method
