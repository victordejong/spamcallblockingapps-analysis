.class public final Lcom/google/android/gms/internal/ads/y42;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/q42;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/q42<",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vj2;

.field private final b:Lcom/google/android/gms/internal/ads/sp0;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/n42;

.field private e:Lcom/google/android/gms/internal/ads/lz0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sp0;Landroid/content/Context;Lcom/google/android/gms/internal/ads/n42;Lcom/google/android/gms/internal/ads/vj2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y42;->b:Lcom/google/android/gms/internal/ads/sp0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/y42;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/y42;->d:Lcom/google/android/gms/internal/ads/n42;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/y42;->a:Lcom/google/android/gms/internal/ads/vj2;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/n42;->c()Lcom/google/android/gms/internal/ads/a42;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/vj2;->j(Lcom/google/android/gms/internal/ads/a42;)Lcom/google/android/gms/internal/ads/vj2;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/y42;)Lcom/google/android/gms/internal/ads/sp0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/y42;->b:Lcom/google/android/gms/internal/ads/sp0;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/y42;)Lcom/google/android/gms/internal/ads/n42;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/y42;->d:Lcom/google/android/gms/internal/ads/n42;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/o42;Lcom/google/android/gms/internal/ads/p42;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbdg;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/o42;",
            "Lcom/google/android/gms/internal/ads/p42<",
            "-",
            "Lcom/google/android/gms/internal/ads/xy0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y42;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbdg;->v:Lcom/google/android/gms/internal/ads/zzbcx;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y42;->b:Lcom/google/android/gms/internal/ads/sp0;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sp0;->h()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/t42;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/t42;-><init>(Lcom/google/android/gms/internal/ads/y42;)V

    .line 4
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y42;->b:Lcom/google/android/gms/internal/ads/sp0;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/sp0;->h()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/u42;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/u42;-><init>(Lcom/google/android/gms/internal/ads/y42;)V

    .line 7
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y42;->c:Landroid/content/Context;

    .line 8
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzbdg;->i:Z

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/nk2;->b(Landroid/content/Context;Z)V

    .line 9
    sget-object p2, Lcom/google/android/gms/internal/ads/kw;->p6:Lcom/google/android/gms/internal/ads/cw;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p2

    .line 11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzbdg;->i:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y42;->b:Lcom/google/android/gms/internal/ads/sp0;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/sp0;->C()Lcom/google/android/gms/internal/ads/lq1;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/lq1;->c(Z)V

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/r42;

    iget p2, p3, Lcom/google/android/gms/internal/ads/r42;->a:I

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/y42;->a:Lcom/google/android/gms/internal/ads/vj2;

    .line 13
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/vj2;->G(Lcom/google/android/gms/internal/ads/zzbdg;)Lcom/google/android/gms/internal/ads/vj2;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/vj2;->b(I)Lcom/google/android/gms/internal/ads/vj2;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/vj2;->l()Lcom/google/android/gms/internal/ads/xj2;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/xj2;->n:Lcom/google/android/gms/internal/ads/at;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y42;->d:Lcom/google/android/gms/internal/ads/n42;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/n42;->c()Lcom/google/android/gms/internal/ads/a42;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/xj2;->n:Lcom/google/android/gms/internal/ads/at;

    .line 14
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/a42;->v(Lcom/google/android/gms/internal/ads/at;)V

    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y42;->b:Lcom/google/android/gms/internal/ads/sp0;

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/sp0;->u()Lcom/google/android/gms/internal/ads/ed1;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/h21;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/h21;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y42;->c:Landroid/content/Context;

    .line 16
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/h21;->e(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/h21;

    .line 17
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/h21;->f(Lcom/google/android/gms/internal/ads/xj2;)Lcom/google/android/gms/internal/ads/h21;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/h21;->h()Lcom/google/android/gms/internal/ads/j21;

    move-result-object p1

    .line 18
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ed1;->k(Lcom/google/android/gms/internal/ads/j21;)Lcom/google/android/gms/internal/ads/ed1;

    new-instance p1, Lcom/google/android/gms/internal/ads/n81;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/n81;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/y42;->d:Lcom/google/android/gms/internal/ads/n42;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/n42;->c()Lcom/google/android/gms/internal/ads/a42;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y42;->b:Lcom/google/android/gms/internal/ads/sp0;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sp0;->h()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/google/android/gms/internal/ads/n81;->w(Lcom/google/android/gms/internal/ads/bb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/n81;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/n81;->c()Lcom/google/android/gms/internal/ads/p81;

    move-result-object p1

    .line 20
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ed1;->j(Lcom/google/android/gms/internal/ads/p81;)Lcom/google/android/gms/internal/ads/ed1;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y42;->d:Lcom/google/android/gms/internal/ads/n42;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/n42;->b()Lcom/google/android/gms/internal/ads/zc1;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ed1;->f(Lcom/google/android/gms/internal/ads/zc1;)Lcom/google/android/gms/internal/ads/ed1;

    new-instance p1, Lcom/google/android/gms/internal/ads/uw0;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/uw0;-><init>(Landroid/view/ViewGroup;)V

    .line 22
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/ed1;->e(Lcom/google/android/gms/internal/ads/uw0;)Lcom/google/android/gms/internal/ads/ed1;

    .line 23
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/ed1;->zza()Lcom/google/android/gms/internal/ads/fd1;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y42;->b:Lcom/google/android/gms/internal/ads/sp0;

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/sp0;->B()Lcom/google/android/gms/internal/ads/pk2;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/pk2;->a(I)V

    new-instance p2, Lcom/google/android/gms/internal/ads/lz0;

    .line 25
    sget-object p3, Lcom/google/android/gms/internal/ads/qi0;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 26
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/kj3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y42;->b:Lcom/google/android/gms/internal/ads/sp0;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/sp0;->i()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/fd1;->a()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/b01;->c()Lcom/google/android/gms/internal/ads/r03;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/b01;->d(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v2

    invoke-direct {p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/lz0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/r03;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/y42;->e:Lcom/google/android/gms/internal/ads/lz0;

    new-instance p3, Lcom/google/android/gms/internal/ads/x42;

    .line 28
    invoke-direct {p3, p0, p4, p1}, Lcom/google/android/gms/internal/ads/x42;-><init>(Lcom/google/android/gms/internal/ads/y42;Lcom/google/android/gms/internal/ads/p42;Lcom/google/android/gms/internal/ads/fd1;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/lz0;->a(Lcom/google/android/gms/internal/ads/f03;)V

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y42;->e:Lcom/google/android/gms/internal/ads/lz0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lz0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y42;->d:Lcom/google/android/gms/internal/ads/n42;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/n42;->e()Lcom/google/android/gms/internal/ads/b31;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/b31;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method

.method final synthetic f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y42;->d:Lcom/google/android/gms/internal/ads/n42;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/n42;->e()Lcom/google/android/gms/internal/ads/b31;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/sk2;->d(ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbcz;)Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/b31;->O(Lcom/google/android/gms/internal/ads/zzbcz;)V

    return-void
.end method
