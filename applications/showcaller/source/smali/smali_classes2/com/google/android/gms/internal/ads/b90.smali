.class public final Lcom/google/android/gms/internal/ads/b90;
.super Lcom/google/android/gms/internal/ads/g80;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/ads/mediation/v;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/g80;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    return-void
.end method


# virtual methods
.method public final K()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->e()F

    move-result v0

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->j()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
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

    new-instance v10, Lcom/google/android/gms/internal/ads/ry;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/b;->c()Landroid/net/Uri;

    move-result-object v5

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/b;->b()D

    move-result-wide v6

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/b;->d()I

    move-result v8

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/b;->e()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/ry;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 9
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public final f()Lcom/google/android/gms/internal/ads/gz;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->i()Lcom/google/android/gms/ads/formats/b;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/ry;

    .line 2
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

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/ry;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    return-object v8

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g0(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/v;->q(Landroid/view/View;)V

    return-void
.end method

.method public final h()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->o()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->o()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->J()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final k2(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/v;->F(Landroid/view/View;)V

    return-void
.end method

.method public final l()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/ju;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->I()Lcom/google/android/gms/ads/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->I()Lcom/google/android/gms/ads/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/s;->c()Lcom/google/android/gms/internal/ads/ju;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/internal/ads/yy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->g()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final q()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->k()F

    move-result v0

    return v0
.end method

.method public final s()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->K()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final u()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->f()F

    move-result v0

    return v0
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->s()V

    return-void
.end method

.method public final y1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->J0(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/v;->E(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->m()Z

    move-result v0

    return v0
.end method

.method public final zzu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/b90;->d:Lcom/google/android/gms/ads/mediation/v;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/v;->l()Z

    move-result v0

    return v0
.end method
