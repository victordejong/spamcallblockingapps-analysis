.class public final Lcom/google/android/gms/internal/ads/sj0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/util/a1;

.field private final b:Lcom/google/android/gms/internal/ads/sl1;

.field private final c:Lcom/google/android/gms/internal/ads/yi0;

.field private final d:Lcom/google/android/gms/internal/ads/si0;

.field private final e:Lcom/google/android/gms/internal/ads/ek0;

.field private final f:Lcom/google/android/gms/internal/ads/mk0;

.field private final g:Ljava/util/concurrent/Executor;

.field private final h:Ljava/util/concurrent/Executor;

.field private final i:Lcom/google/android/gms/internal/ads/zzagy;

.field private final j:Lcom/google/android/gms/internal/ads/pi0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/a1;Lcom/google/android/gms/internal/ads/sl1;Lcom/google/android/gms/internal/ads/yi0;Lcom/google/android/gms/internal/ads/si0;Lcom/google/android/gms/internal/ads/ek0;Lcom/google/android/gms/internal/ads/mk0;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/pi0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sj0;->a:Lcom/google/android/gms/ads/internal/util/a1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sj0;->b:Lcom/google/android/gms/internal/ads/sl1;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/sl1;->i:Lcom/google/android/gms/internal/ads/zzagy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sj0;->i:Lcom/google/android/gms/internal/ads/zzagy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sj0;->c:Lcom/google/android/gms/internal/ads/yi0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/sj0;->e:Lcom/google/android/gms/internal/ads/ek0;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/sj0;->f:Lcom/google/android/gms/internal/ads/mk0;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/sj0;->g:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/sj0;->h:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/sj0;->j:Lcom/google/android/gms/internal/ads/pi0;

    return-void
.end method

.method private static g(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 5

    const/16 v0, 0x9

    const/16 v1, 0xa

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    const/16 v3, 0xb

    const/16 v4, 0xc

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/pj0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/pj0;-><init>(Lcom/google/android/gms/internal/ads/sj0;Lcom/google/android/gms/internal/ads/ok0;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->e:Lcom/google/android/gms/internal/ads/ek0;

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->w4()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->c:Lcom/google/android/gms/internal/ads/yi0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yi0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->w4()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->e:Lcom/google/android/gms/internal/ads/ek0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ek0;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbgq; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "web view can not be obtained"

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/y0;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->M4()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj0;->c:Lcom/google/android/gms/internal/ads/yi0;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/yi0;->a:Lcom/google/android/gms/internal/ads/al1;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/k0;->i(Landroid/content/Context;Lcom/google/android/gms/internal/ads/al1;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_2

    const-string p1, "Activity context is needed for policy validator."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj0;->f:Lcom/google/android/gms/internal/ads/mk0;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->w4()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->w4()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj0;->f:Lcom/google/android/gms/internal/ads/mk0;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/mk0;->a(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/k0;->j()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbgq; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "web view can not be obtained"

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/y0;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final d(Landroid/view/ViewGroup;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->f()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/m3;->T1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/16 v2, 0x11

    if-eqz v1, :cond_2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method final synthetic e(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/si0;->f()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/si0;->X()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/si0;->X()I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->X()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->a:Lcom/google/android/gms/ads/internal/util/a1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj0;->b:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    const-string v2, "2"

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/a1;->N0(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->a:Lcom/google/android/gms/ads/internal/util/a1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj0;->b:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    const-string v2, "1"

    :goto_1
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/a1;->N0(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->a:Lcom/google/android/gms/ads/internal/util/a1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj0;->b:Lcom/google/android/gms/internal/ads/sl1;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/si0;->X()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method final synthetic f(Lcom/google/android/gms/internal/ads/ok0;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->c:Lcom/google/android/gms/internal/ads/yi0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yi0;->e()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->c:Lcom/google/android/gms/internal/ads/yi0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yi0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v3

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "1098"

    aput-object v5, v4, v1

    const-string v5, "3011"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_0

    aget-object v6, v4, v5

    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/ok0;->P(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    check-cast v6, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :goto_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->M4()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/si0;->a0()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->a0()Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/sj0;->i:Lcom/google/android/gms/internal/ads/zzagy;

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    if-nez v6, :cond_7

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzagy;->f:I

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/sj0;->g(Landroid/widget/RelativeLayout$LayoutParams;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/si0;->Z()Lcom/google/android/gms/internal/ads/z5;

    move-result-object v5

    instance-of v5, v5, Lcom/google/android/gms/internal/ads/p5;

    if-nez v5, :cond_5

    move-object v0, v3

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/si0;->Z()Lcom/google/android/gms/internal/ads/z5;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/p5;

    if-nez v6, :cond_6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/p5;->i()I

    move-result v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/sj0;->g(Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_6
    new-instance v7, Lcom/google/android/gms/internal/ads/zzags;

    invoke-direct {v7, v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzags;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/p5;Landroid/widget/RelativeLayout$LayoutParams;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/m3;->R1:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v0, v7

    :cond_7
    :goto_3
    const/4 v4, -0x1

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_a
    new-instance v5, Lcom/google/android/gms/ads/formats/zza;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->M4()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/ads/formats/zza;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->w4()Landroid/widget/FrameLayout;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_b
    :goto_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->p()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v0, v2}, Lcom/google/android/gms/internal/ads/ok0;->g3(Ljava/lang/String;Landroid/view/View;Z)V

    :goto_5
    sget-object v0, Lcom/google/android/gms/internal/ads/oj0;->o:Lcom/google/android/gms/internal/ads/zzede;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :cond_c
    if-ge v1, v2, :cond_d

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/ok0;->P(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_c

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_6

    :cond_d
    move-object v5, v3

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->h:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/qj0;

    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/internal/ads/qj0;-><init>(Lcom/google/android/gms/internal/ads/sj0;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-nez v5, :cond_e

    goto/16 :goto_a

    :cond_e
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/sj0;->d(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->o()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj0;->d:Lcom/google/android/gms/internal/ads/si0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/si0;->o()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/rj0;

    invoke-direct {v1, p0, p1, v5}, Lcom/google/android/gms/internal/ads/rj0;-><init>(Lcom/google/android/gms/internal/ads/sj0;Lcom/google/android/gms/internal/ads/ok0;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/jt;->q0(Lcom/google/android/gms/internal/ads/t5;)V

    return-void

    :cond_f
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->M4()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_7

    :cond_10
    move-object v0, v3

    :goto_7
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj0;->j:Lcom/google/android/gms/internal/ads/pi0;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pi0;->a()Lcom/google/android/gms/internal/ads/d6;

    move-result-object v1

    if-eqz v1, :cond_14

    :try_start_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/d6;->g()Lcom/google/android/gms/dynamic/a;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ok0;->q()Lcom/google/android/gms/dynamic/a;

    move-result-object v3

    :cond_11
    if-eqz v3, :cond_13

    sget-object p1, Lcom/google/android/gms/internal/ads/m3;->M3:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_8

    :cond_12
    invoke-static {v3}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView$ScaleType;

    goto :goto_9

    :cond_13
    :goto_8
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    :goto_9
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :catch_0
    const-string p1, "Could not get main image drawable"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/po;->f(Ljava/lang/String;)V

    :cond_14
    :goto_a
    return-void
.end method
