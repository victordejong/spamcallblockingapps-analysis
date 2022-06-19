.class public final Lcom/google/android/gms/internal/ads/zzcig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private zzgkf:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzd(Landroid/content/Context;Landroid/view/View;)Landroid/widget/PopupWindow;
    .locals 5

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {p0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, p1, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    new-instance p0, Landroid/widget/PopupWindow;

    const/4 p1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, p1, p1, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const-string p1, "Displaying the 1x1 popup off the screen."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzdy(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    :goto_1
    return-object v1
.end method


# virtual methods
.method public final zzapr()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->context:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzgkf:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->context:Landroid/content/Context;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzgkf:Landroid/widget/PopupWindow;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzgkf:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzgkf:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final zzc(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcig;->zzd(Landroid/content/Context;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcig;->zzgkf:Landroid/widget/PopupWindow;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcig;->context:Landroid/content/Context;

    :cond_2
    :goto_1
    return-void
.end method
