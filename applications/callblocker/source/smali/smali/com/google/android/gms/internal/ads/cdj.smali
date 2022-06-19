.class final Lcom/google/android/gms/internal/ads/cdj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bto;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bto",
        "<",
        "Lcom/google/android/gms/internal/ads/ake;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cdf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cdf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    .line 3
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/ake;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/amh;->k()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/cdf;->a:Lcom/google/android/gms/internal/ads/ake;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cdf;->a(Lcom/google/android/gms/internal/ads/cdf;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cdf;->a(Lcom/google/android/gms/internal/ads/cdf;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ake;->b()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/vj;->b()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ake;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cdf;->b(Lcom/google/android/gms/internal/ads/cdf;)Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/yd;->c:I

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cp:Lcom/google/android/gms/internal/ads/ect;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cdf;->a(Lcom/google/android/gms/internal/ads/cdf;Lcom/google/android/gms/internal/ads/ake;)Lcom/google/android/gms/ads/internal/overlay/q;

    move-result-object v1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cdf;->a(Lcom/google/android/gms/internal/ads/ake;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ake;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ake;->e()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/q;->a(Z)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cdf;->a(Lcom/google/android/gms/internal/ads/cdf;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cdf;->b(Lcom/google/android/gms/internal/ads/cdf;Lcom/google/android/gms/internal/ads/ake;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cdf;->a(Lcom/google/android/gms/internal/ads/cdf;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cdf;->c(Lcom/google/android/gms/internal/ads/cdf;)Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/dyd;->c:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cdf;->a(Lcom/google/android/gms/internal/ads/cdf;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cdf;->c(Lcom/google/android/gms/internal/ads/cdf;)Lcom/google/android/gms/internal/ads/dyd;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/dyd;->f:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cdf;->d(Lcom/google/android/gms/internal/ads/cdf;)Lcom/google/android/gms/internal/ads/cdn;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/akg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cdj;->a:Lcom/google/android/gms/internal/ads/cdf;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/akg;-><init>(Lcom/google/android/gms/internal/ads/ake;Lcom/google/android/gms/internal/ads/dzn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cdn;->a(Lcom/google/android/gms/internal/ads/dvd;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/amh;->g_()V

    .line 24
    return-void

    .line 17
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
