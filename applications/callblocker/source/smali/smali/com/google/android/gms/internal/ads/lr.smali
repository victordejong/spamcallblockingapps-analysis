.class public final Lcom/google/android/gms/internal/ads/lr;
.super Lcom/google/android/gms/internal/ads/lc;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/mediation/s;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/s;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/lc;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    .line 3
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/s;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/q;->c(Landroid/view/View;)V

    .line 31
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V
    .locals 4

    .prologue
    .line 34
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 36
    invoke-static {p3}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 37
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 39
    invoke-virtual {v3, v2, v0, v1}, Lcom/google/android/gms/ads/mediation/q;->a(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 10

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/s;->j()Ljava/util/List;

    move-result-object v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

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

    :cond_0
    move-object v0, v8

    .line 18
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/q;->a(Landroid/view/View;)V

    .line 33
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/s;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/google/android/gms/dynamic/a;)V
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/mediation/q;->b(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public final d()Lcom/google/android/gms/internal/ads/bu;
    .locals 8

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/s;->l()Lcom/google/android/gms/ads/b/c$b;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/s;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/s;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->e()V

    .line 29
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->a()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->b()Z

    move-result v0

    return v0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->d()Landroid/view/View;

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

.method public final l()Lcom/google/android/gms/internal/ads/eba;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->g()Lcom/google/android/gms/ads/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->g()Lcom/google/android/gms/ads/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/p;->a()Lcom/google/android/gms/internal/ads/eba;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Lcom/google/android/gms/internal/ads/bn;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/ads/mediation/s;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/q;->f()Landroid/view/View;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final o()Lcom/google/android/gms/dynamic/a;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method
