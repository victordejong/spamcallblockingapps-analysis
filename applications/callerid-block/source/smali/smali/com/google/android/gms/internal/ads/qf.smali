.class public final Lcom/google/android/gms/internal/ads/qf;
.super Lcom/google/android/gms/internal/ads/ve;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/ads/mediation/v;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ve;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    return-void
.end method


# virtual methods
.method public final B()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->f()F

    move-result v0

    return v0
.end method

.method public final B2(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/v;->E(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final C()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->k()F

    move-result v0

    return v0
.end method

.method public final D()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->s()V

    return-void
.end method

.method public final K()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->e()F

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->j()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/formats/b;

    new-instance v10, Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/b;->c()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/b;->b()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/b;->d()I

    move-result v8

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/b;->e()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/r5;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public final e()Lcom/google/android/gms/internal/ads/g6;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->i()Lcom/google/android/gms/ads/formats/b;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/r5;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/b;->c()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/b;->b()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/b;->d()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/b;->e()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/r5;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    return-object v8

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h4(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/v;->F(Landroid/view/View;)V

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->o()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->o()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/dynamic/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->J()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final l0(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/v;->q(Landroid/view/View;)V

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/dynamic/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final o()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->g()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lcom/google/android/gms/internal/ads/m1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->I()Lcom/google/android/gms/ads/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->I()Lcom/google/android/gms/ads/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/r;->c()Lcom/google/android/gms/internal/ads/m1;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/ads/z5;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->m()Z

    move-result v0

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->l()Z

    move-result v0

    return v0
.end method

.method public final w()Lcom/google/android/gms/dynamic/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qf;->b:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->K()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method
