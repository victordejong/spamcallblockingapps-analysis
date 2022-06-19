.class public final Lcom/google/android/gms/internal/ads/bev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 18
    .line 19
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 20
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    move-object v2, v0

    .line 21
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 35
    :goto_1
    return-object v0

    :cond_1
    move-object v0, p0

    .line 23
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    invoke-virtual {v3, p1, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 28
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v3, v6, v6, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 29
    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 30
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 31
    const-string/jumbo v3, "Displaying the 1x1 popup off the screen."

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 32
    :try_start_0
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 35
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->b:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 17
    :cond_0
    :goto_0
    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bev;->a:Landroid/content/Context;

    .line 11
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bev;->b:Landroid/widget/PopupWindow;

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 15
    :cond_3
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bev;->a:Landroid/content/Context;

    .line 16
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/bev;->b:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/m;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/m;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    :goto_0
    return-void

    .line 4
    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/bev;->b(Landroid/content/Context;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->b:Landroid/widget/PopupWindow;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bev;->b:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    :goto_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bev;->a:Landroid/content/Context;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1
.end method
