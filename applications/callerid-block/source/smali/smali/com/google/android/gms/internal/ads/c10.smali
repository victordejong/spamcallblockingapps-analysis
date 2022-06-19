.class public final Lcom/google/android/gms/internal/ads/c10;
.super Lcom/google/android/gms/internal/ads/u30;
.source ""


# instance fields
.field private final i:Landroid/view/View;

.field private final j:Lcom/google/android/gms/internal/ads/jt;

.field private final k:Lcom/google/android/gms/internal/ads/bl1;

.field private final l:I

.field private final m:Z

.field private final n:Z

.field private final o:Lcom/google/android/gms/internal/ads/u00;

.field private p:Lcom/google/android/gms/internal/ads/wu2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/t30;Landroid/view/View;Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/internal/ads/bl1;IZZLcom/google/android/gms/internal/ads/u00;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/u30;-><init>(Lcom/google/android/gms/internal/ads/t30;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/c10;->i:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/c10;->j:Lcom/google/android/gms/internal/ads/jt;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/c10;->k:Lcom/google/android/gms/internal/ads/bl1;

    iput p5, p0, Lcom/google/android/gms/internal/ads/c10;->l:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/c10;->m:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/c10;->n:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/c10;->o:Lcom/google/android/gms/internal/ads/u00;

    return-void
.end method


# virtual methods
.method public final g()Lcom/google/android/gms/internal/ads/bl1;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u30;->b:Lcom/google/android/gms/internal/ads/al1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/al1;->q:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c10;->k:Lcom/google/android/gms/internal/ads/bl1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/wl1;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/bl1;)Lcom/google/android/gms/internal/ads/bl1;

    move-result-object v0

    return-object v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c10;->i:Landroid/view/View;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/c10;->l:I

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/c10;->m:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/c10;->n:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c10;->j:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->b1()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c10;->j:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->b1()Lcom/google/android/gms/internal/ads/wu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/wu;->c()Z

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c10;->j:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->r0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n(Lcom/google/android/gms/internal/ads/lu2;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c10;->j:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/jt;->v0(Lcom/google/android/gms/internal/ads/lu2;)V

    return-void
.end method

.method public final o(JI)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c10;->o:Lcom/google/android/gms/internal/ads/u00;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/u00;->a(JI)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/wu2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c10;->p:Lcom/google/android/gms/internal/ads/wu2;

    return-void
.end method

.method public final q()Lcom/google/android/gms/internal/ads/wu2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c10;->p:Lcom/google/android/gms/internal/ads/wu2;

    return-object v0
.end method
