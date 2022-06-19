.class final Lcom/google/android/gms/internal/ads/cjq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cal<",
        "Lcom/google/android/gms/internal/ads/alb;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cjm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cjm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/alb;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/anp;->a()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/cjm;->b:Lcom/google/android/gms/internal/ads/alb;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjm;->a(Lcom/google/android/gms/internal/ads/cjm;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjm;->a(Lcom/google/android/gms/internal/ads/cjm;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1011
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/alb;->a:Landroid/view/View;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzw()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1013
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/alb;->d:Z

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjm;->b(Lcom/google/android/gms/internal/ads/cjm;)Lcom/google/android/gms/internal/ads/zzbar;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbar;->zzekb:I

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->cY:Lcom/google/android/gms/internal/ads/af;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cjm;->a(Lcom/google/android/gms/internal/ads/cjm;Lcom/google/android/gms/internal/ads/alb;)Lcom/google/android/gms/ads/internal/overlay/zzr;

    move-result-object v0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cjm;->a(Lcom/google/android/gms/internal/ads/alb;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 1019
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/alb;->b:Lcom/google/android/gms/internal/ads/adt;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/alb;->b:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->D()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 2014
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/alb;->e:Z

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 17
    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzap(Z)V

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/cjm;->a(Lcom/google/android/gms/internal/ads/cjm;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cjm;->b(Lcom/google/android/gms/internal/ads/cjm;Lcom/google/android/gms/internal/ads/alb;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjm;->a(Lcom/google/android/gms/internal/ads/cjm;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cjm;->c(Lcom/google/android/gms/internal/ads/cjm;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvt;->heightPixels:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjm;->a(Lcom/google/android/gms/internal/ads/cjm;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cjm;->c(Lcom/google/android/gms/internal/ads/cjm;)Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvt;->widthPixels:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cjm;->d(Lcom/google/android/gms/internal/ads/cjm;)Lcom/google/android/gms/internal/ads/ckb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/aln;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cjq;->a:Lcom/google/android/gms/internal/ads/cjm;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/aln;-><init>(Lcom/google/android/gms/internal/ads/alb;Lcom/google/android/gms/internal/ads/ekw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ckb;->a(Lcom/google/android/gms/internal/ads/egb;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/anp;->h()V

    return-void
.end method
