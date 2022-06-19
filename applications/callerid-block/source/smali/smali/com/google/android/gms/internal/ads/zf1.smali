.class final Lcom/google/android/gms/internal/ads/zf1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/u71;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/u71<",
        "Lcom/google/android/gms/internal/ads/c10;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/ag1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ag1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/ads/c10;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/u30;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ag1;->B6(Lcom/google/android/gms/internal/ads/ag1;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ag1;->B6(Lcom/google/android/gms/internal/ads/ag1;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c10;->h()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->f()Lcom/google/android/gms/ads/internal/util/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/d;->j()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c10;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ag1;->C6(Lcom/google/android/gms/internal/ads/ag1;)Lcom/google/android/gms/internal/ads/zzbbq;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbbq;->d:I

    sget-object v1, Lcom/google/android/gms/internal/ads/m3;->Z2:Lcom/google/android/gms/internal/ads/e3;

    invoke-static {}, Lcom/google/android/gms/internal/ads/c;->c()Lcom/google/android/gms/internal/ads/k3;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/k3;->b(Lcom/google/android/gms/internal/ads/e3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ag1;->D6(Lcom/google/android/gms/internal/ads/ag1;Lcom/google/android/gms/internal/ads/c10;)Lcom/google/android/gms/ads/internal/overlay/zzr;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c10;->l()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_2

    const/16 v2, 0x9

    goto :goto_0

    :cond_2
    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c10;->m()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c10;->k()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzr;->a(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ag1;->B6(Lcom/google/android/gms/internal/ads/ag1;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/c10;->n(Lcom/google/android/gms/internal/ads/lu2;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ag1;->B6(Lcom/google/android/gms/internal/ads/ag1;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ag1;->E6(Lcom/google/android/gms/internal/ads/ag1;)Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzyx;->d:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ag1;->B6(Lcom/google/android/gms/internal/ads/ag1;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ag1;->E6(Lcom/google/android/gms/internal/ads/ag1;)Lcom/google/android/gms/internal/ads/zzyx;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzyx;->g:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ag1;->F6(Lcom/google/android/gms/internal/ads/ag1;)Lcom/google/android/gms/internal/ads/wg1;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/q10;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/q10;-><init>(Lcom/google/android/gms/internal/ads/c10;Lcom/google/android/gms/internal/ads/w;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wg1;->g(Lcom/google/android/gms/internal/ads/su2;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/u30;->a()V

    return-void
.end method

.method public final zza()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zf1;->a:Lcom/google/android/gms/internal/ads/ag1;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/ag1;->l:Lcom/google/android/gms/internal/ads/c10;

    return-void
.end method
