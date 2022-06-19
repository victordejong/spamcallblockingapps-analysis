.class public final Lcom/google/android/gms/internal/ads/aiq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/app;
.implements Lcom/google/android/gms/internal/ads/aqi;
.implements Lcom/google/android/gms/internal/ads/arg;
.implements Lcom/google/android/gms/internal/ads/dxs;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/chd;

.field private final c:Lcom/google/android/gms/internal/ads/cgr;

.field private final d:Lcom/google/android/gms/internal/ads/clj;

.field private final e:Lcom/google/android/gms/internal/ads/ctl;

.field private final f:Landroid/view/View;

.field private g:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Lcom/google/android/gms/internal/ads/clj;Landroid/view/View;Lcom/google/android/gms/internal/ads/ctl;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aiq;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aiq;->b:Lcom/google/android/gms/internal/ads/chd;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/aiq;->d:Lcom/google/android/gms/internal/ads/clj;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/aiq;->e:Lcom/google/android/gms/internal/ads/ctl;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/aiq;->f:Landroid/view/View;

    .line 8
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    .prologue
    .line 9
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aiq;->g:Z

    if-eqz v0, :cond_0

    .line 10
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->d:Ljava/util/List;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->f:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->d:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiq;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/clj;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;ZLjava/lang/String;Ljava/util/List;)V

    .line 16
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aiq;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    .line 14
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->d:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiq;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgr;->m:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/clj;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->d:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiq;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgr;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/clj;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/qr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->d:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiq;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgr;->h:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/clj;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/util/List;Lcom/google/android/gms/internal/ads/qr;)V

    .line 33
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 20
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aiq;->h:Z

    if-nez v0, :cond_1

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->bq:Lcom/google/android/gms/internal/ads/ect;

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->e:Lcom/google/android/gms/internal/ads/ctl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ctl;->a()Lcom/google/android/gms/internal/ads/cjd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiq;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aiq;->f:Landroid/view/View;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/cjd;->a(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->d:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiq;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/cgr;->d:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/clj;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;ZLjava/lang/String;Ljava/util/List;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/aiq;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    monitor-exit p0

    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->d:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiq;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgr;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/clj;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/util/List;)V

    .line 19
    return-void
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->d:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiq;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgr;->g:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/clj;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aiq;->d:Lcom/google/android/gms/internal/ads/clj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aiq;->b:Lcom/google/android/gms/internal/ads/chd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/aiq;->c:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cgr;->i:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/clj;->a(Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cgr;Ljava/util/List;)V

    .line 37
    return-void
.end method
