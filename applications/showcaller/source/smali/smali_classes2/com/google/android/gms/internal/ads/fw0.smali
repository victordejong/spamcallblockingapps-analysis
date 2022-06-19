.class public final Lcom/google/android/gms/internal/ads/fw0;
.super Lcom/google/android/gms/internal/ads/xy0;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final i:Landroid/view/View;

.field private final j:Lcom/google/android/gms/internal/ads/wn0;

.field private final k:Lcom/google/android/gms/internal/ads/hj2;

.field private final l:I

.field private final m:Z

.field private final n:Z

.field private final o:Lcom/google/android/gms/internal/ads/xv0;

.field private p:Lcom/google/android/gms/internal/ads/pl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/wy0;Landroid/view/View;Lcom/google/android/gms/internal/ads/wn0;Lcom/google/android/gms/internal/ads/hj2;IZZLcom/google/android/gms/internal/ads/xv0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/xy0;-><init>(Lcom/google/android/gms/internal/ads/wy0;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fw0;->i:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fw0;->j:Lcom/google/android/gms/internal/ads/wn0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/fw0;->k:Lcom/google/android/gms/internal/ads/hj2;

    iput p5, p0, Lcom/google/android/gms/internal/ads/fw0;->l:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/fw0;->m:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/fw0;->n:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/fw0;->o:Lcom/google/android/gms/internal/ads/xv0;

    return-void
.end method


# virtual methods
.method public final g()Lcom/google/android/gms/internal/ads/hj2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xy0;->b:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ej2;->r:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fw0;->k:Lcom/google/android/gms/internal/ads/hj2;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bk2;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/hj2;)Lcom/google/android/gms/internal/ads/hj2;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw0;->i:Landroid/view/View;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/fw0;->l:I

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fw0;->m:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fw0;->n:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw0;->j:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw0;->j:Lcom/google/android/gms/internal/ads/wn0;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->c0()Lcom/google/android/gms/internal/ads/jp0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jp0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw0;->j:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wn0;->L0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n(Lcom/google/android/gms/internal/ads/el;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw0;->j:Lcom/google/android/gms/internal/ads/wn0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/wn0;->R0(Lcom/google/android/gms/internal/ads/el;)V

    return-void
.end method

.method public final o(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw0;->o:Lcom/google/android/gms/internal/ads/xv0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/xv0;->a(JI)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/pl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fw0;->p:Lcom/google/android/gms/internal/ads/pl;

    return-void
.end method

.method public final q()Lcom/google/android/gms/internal/ads/pl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fw0;->p:Lcom/google/android/gms/internal/ads/pl;

    return-object v0
.end method
