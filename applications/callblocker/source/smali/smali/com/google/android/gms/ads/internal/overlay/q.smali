.class public final Lcom/google/android/gms/ads/internal/overlay/q;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/widget/ImageButton;

.field private final b:Lcom/google/android/gms/ads/internal/overlay/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/ads/internal/overlay/y;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/q;->b:Lcom/google/android/gms/ads/internal/overlay/y;

    .line 3
    invoke-virtual {p0, p0}, Lcom/google/android/gms/ads/internal/overlay/q;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/widget/ImageButton;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/widget/ImageButton;

    const v1, 0x1080017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/widget/ImageButton;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget v1, p2, Lcom/google/android/gms/ads/internal/overlay/p;->a:I

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v1

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget v3, p2, Lcom/google/android/gms/ads/internal/overlay/p;->b:I

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v3

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget v4, p2, Lcom/google/android/gms/ads/internal/overlay/p;->d:I

    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v4

    .line 13
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/widget/ImageButton;

    const-string/jumbo v1, "Interstitial close button"

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/widget/ImageButton;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget v2, p2, Lcom/google/android/gms/ads/internal/overlay/p;->e:I

    iget v3, p2, Lcom/google/android/gms/ads/internal/overlay/p;->a:I

    add-int/2addr v2, v3

    iget v3, p2, Lcom/google/android/gms/ads/internal/overlay/p;->b:I

    add-int/2addr v2, v3

    .line 17
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v2

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->a()Lcom/google/android/gms/internal/ads/xr;

    iget v3, p2, Lcom/google/android/gms/ads/internal/overlay/p;->e:I

    iget v4, p2, Lcom/google/android/gms/ads/internal/overlay/p;->d:I

    add-int/2addr v3, v4

    .line 19
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/xr;->a(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/ads/internal/overlay/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 25
    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->b:Lcom/google/android/gms/ads/internal/overlay/y;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/q;->b:Lcom/google/android/gms/ads/internal/overlay/y;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/y;->j_()V

    .line 24
    :cond_0
    return-void
.end method
