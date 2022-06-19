.class public final Lcom/google/android/gms/ads/internal/overlay/zzq;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final d:Landroid/widget/ImageButton;

.field private final e:Lcom/google/android/gms/ads/internal/overlay/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/ads/internal/overlay/y;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzq;->e:Lcom/google/android/gms/ads/internal/overlay/y;

    .line 2
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/widget/ImageButton;

    .line 3
    invoke-direct {p3, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzq;->d:Landroid/widget/ImageButton;

    const v0, 0x1080017

    .line 4
    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 6
    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget v1, p2, Lcom/google/android/gms/ads/internal/overlay/p;->a:I

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/xh0;->q(Landroid/content/Context;I)I

    move-result v1

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/xh0;->q(Landroid/content/Context;I)I

    move-result v0

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/p;->b:I

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/xh0;->q(Landroid/content/Context;I)I

    move-result v2

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget v3, p2, Lcom/google/android/gms/ads/internal/overlay/p;->c:I

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/xh0;->q(Landroid/content/Context;I)I

    move-result v3

    .line 11
    invoke-virtual {p3, v1, v0, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    const-string v0, "Interstitial close button"

    .line 12
    invoke-virtual {p3, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget v1, p2, Lcom/google/android/gms/ads/internal/overlay/p;->d:I

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/p;->a:I

    iget v3, p2, Lcom/google/android/gms/ads/internal/overlay/p;->b:I

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    .line 14
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/xh0;->q(Landroid/content/Context;I)I

    move-result v1

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->a()Lcom/google/android/gms/internal/ads/xh0;

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/p;->d:I

    iget p2, p2, Lcom/google/android/gms/ads/internal/overlay/p;->c:I

    add-int/2addr v2, p2

    .line 16
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/xh0;->q(Landroid/content/Context;I)I

    move-result p1

    const/16 p2, 0x11

    invoke-direct {v0, v1, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 17
    invoke-virtual {p0, p3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzq;->d:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzq;->d:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzq;->e:Lcom/google/android/gms/ads/internal/overlay/y;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/y;->e()V

    :cond_0
    return-void
.end method
