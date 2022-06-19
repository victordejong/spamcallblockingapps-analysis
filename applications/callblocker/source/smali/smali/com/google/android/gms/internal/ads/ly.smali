.class public final Lcom/google/android/gms/internal/ads/ly;
.super Lcom/google/android/gms/internal/ads/lh;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/mediation/w;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/w;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lh;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/w;->a(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V
    .locals 4

    .prologue
    .line 57
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 59
    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 60
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 62
    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/gms/ads/mediation/w;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 10

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->b()Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/b/c$b;

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/bh;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->b()Landroid/net/Uri;

    move-result-object v3

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->c()D

    move-result-wide v4

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->d()I

    move-result v6

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->e()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/bh;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 15
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_0
    return-object v8
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/w;->b(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/bu;
    .locals 8

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->d()Lcom/google/android/gms/ads/b/c$b;

    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    new-instance v1, Lcom/google/android/gms/internal/ads/bh;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->c()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->d()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/gms/ads/b/c$b;->e()I

    move-result v7

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/bh;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    .line 25
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()D
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->g()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->g()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->j()Lcom/google/android/gms/ads/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->j()Lcom/google/android/gms/ads/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/p;->a()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/google/android/gms/internal/ads/bn;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->l()Landroid/view/View;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final m()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->m()Landroid/view/View;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->q()Ljava/lang/Object;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final o()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->r()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->s()Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->t()Z

    move-result v0

    return v0
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->u()V

    .line 54
    return-void
.end method

.method public final s()F
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->n()F

    move-result v0

    return v0
.end method

.method public final t()F
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->o()F

    move-result v0

    return v0
.end method

.method public final u()F
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ly;->a:Lcom/google/android/gms/ads/mediation/w;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/w;->p()F

    move-result v0

    return v0
.end method
