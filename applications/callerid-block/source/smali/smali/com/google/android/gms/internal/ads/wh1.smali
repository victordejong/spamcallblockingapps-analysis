.class public final Lcom/google/android/gms/internal/ads/wh1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/qi1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/a70<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/u30;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/qi1<",
        "TR;TAdT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qi1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qi1<",
            "TR;TAdT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/qi1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qi1<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/bi1<",
            "TAdT;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/ads/zn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zn1<",
            "TAdT;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/ads/a70;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qi1;Lcom/google/android/gms/internal/ads/qi1;Lcom/google/android/gms/internal/ads/zn1;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/qi1<",
            "TR;TAdT;>;",
            "Lcom/google/android/gms/internal/ads/qi1<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/bi1<",
            "TAdT;>;>;",
            "Lcom/google/android/gms/internal/ads/zn1<",
            "TAdT;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wh1;->a:Lcom/google/android/gms/internal/ads/qi1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wh1;->b:Lcom/google/android/gms/internal/ads/qi1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wh1;->c:Lcom/google/android/gms/internal/ads/zn1;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/wh1;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final f(Lcom/google/android/gms/internal/ads/ln1;Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ln1<",
            "TAdT;>;",
            "Lcom/google/android/gms/internal/ads/ri1;",
            "Lcom/google/android/gms/internal/ads/pi1<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TAdT;>;"
        }
    .end annotation

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ri1;->b:Lcom/google/android/gms/internal/ads/oi1;

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/pi1;->a(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/z60;

    move-result-object p3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ln1;->c:Lcom/google/android/gms/internal/ads/u30;

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/z60;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/a70;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/a70;->f()Lcom/google/android/gms/internal/ads/ni1;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/ln1;->c:Lcom/google/android/gms/internal/ads/u30;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/u30;->e()Lcom/google/android/gms/internal/ads/ni1;

    move-result-object p3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/a70;->f()Lcom/google/android/gms/internal/ads/ni1;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/ni1;->m(Lcom/google/android/gms/internal/ads/ni1;)V

    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ln1;->c:Lcom/google/android/gms/internal/ads/u30;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/kz1;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ln1;->b:Lcom/google/android/gms/internal/ads/ml1;

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/z60;->i(Lcom/google/android/gms/internal/ads/ml1;)Lcom/google/android/gms/internal/ads/z60;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wh1;->a:Lcom/google/android/gms/internal/ads/qi1;

    new-instance v0, Lcom/google/android/gms/internal/ads/sh1;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/sh1;-><init>(Lcom/google/android/gms/internal/ads/z60;)V

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/qi1;->a(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wh1;->a:Lcom/google/android/gms/internal/ads/qi1;

    check-cast p2, Lcom/google/android/gms/internal/ads/gi1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/gi1;->b()Lcom/google/android/gms/internal/ads/a70;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wh1;->d:Lcom/google/android/gms/internal/ads/a70;

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ri1;",
            "Lcom/google/android/gms/internal/ads/pi1<",
            "TR;>;)",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/ri1;->b:Lcom/google/android/gms/internal/ads/oi1;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/pi1;->a(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/z60;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/z60;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/a70;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/a70;->zza()Lcom/google/android/gms/internal/ads/sl1;

    move-result-object v0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/sl1;->d:Lcom/google/android/gms/internal/ads/zzys;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/sl1;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/sl1;->j:Lcom/google/android/gms/internal/ads/zzzd;

    new-instance v0, Lcom/google/android/gms/internal/ads/vh1;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/wh1;->e:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/vh1;-><init>(Lcom/google/android/gms/internal/ads/pi1;Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/internal/ads/mn1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wh1;->b:Lcom/google/android/gms/internal/ads/qi1;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/qi1;->a(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/bz1;->E(Lcom/google/android/gms/internal/ads/rz1;)Lcom/google/android/gms/internal/ads/bz1;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/rh1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/rh1;-><init>(Lcom/google/android/gms/internal/ads/wh1;Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/vh1;Lcom/google/android/gms/internal/ads/pi1;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/wh1;->e:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/kz1;->h(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Lcom/google/android/gms/internal/ads/a70;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wh1;->d:Lcom/google/android/gms/internal/ads/a70;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/wh1;->b()Lcom/google/android/gms/internal/ads/a70;

    move-result-object v0

    return-object v0
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/pi1;Lcom/google/android/gms/internal/ads/wn1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/wn1;->a:Lcom/google/android/gms/internal/ads/ln1;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/wn1;->b:Lcom/google/android/gms/internal/ads/yn1;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/ow2;->E()Lcom/google/android/gms/internal/ads/hw2;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/gw2;->E()Lcom/google/android/gms/internal/ads/fw2;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzuy;->c:Lcom/google/android/gms/internal/ads/zzuy;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/fw2;->q(Lcom/google/android/gms/internal/ads/zzuy;)Lcom/google/android/gms/internal/ads/fw2;

    invoke-static {}, Lcom/google/android/gms/internal/ads/lw2;->E()Lcom/google/android/gms/internal/ads/jw2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/fw2;->r(Lcom/google/android/gms/internal/ads/jw2;)Lcom/google/android/gms/internal/ads/fw2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/hw2;->q(Lcom/google/android/gms/internal/ads/fw2;)Lcom/google/android/gms/internal/ads/hw2;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ow2;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/wn1;->a:Lcom/google/android/gms/internal/ads/ln1;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ln1;->a:Lcom/google/android/gms/internal/ads/y40;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/y40;->d()Lcom/google/android/gms/internal/ads/nc0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/nc0;->P(Lcom/google/android/gms/internal/ads/ow2;)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/wn1;->a:Lcom/google/android/gms/internal/ads/ln1;

    check-cast v0, Lcom/google/android/gms/internal/ads/vh1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vh1;->b:Lcom/google/android/gms/internal/ads/ri1;

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/wh1;->f(Lcom/google/android/gms/internal/ads/ln1;Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcql;

    const/4 p2, 0x1

    const-string v0, "Empty prefetch"

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcql;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/vh1;Lcom/google/android/gms/internal/ads/pi1;Lcom/google/android/gms/internal/ads/bi1;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 9

    if-eqz p4, :cond_2

    iget-object v7, p4, Lcom/google/android/gms/internal/ads/bi1;->a:Lcom/google/android/gms/internal/ads/mn1;

    new-instance v8, Lcom/google/android/gms/internal/ads/vh1;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/vh1;->a:Lcom/google/android/gms/internal/ads/pi1;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/vh1;->b:Lcom/google/android/gms/internal/ads/ri1;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/vh1;->c:Lcom/google/android/gms/internal/ads/zzys;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/vh1;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/vh1;->e:Ljava/util/concurrent/Executor;

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/vh1;->f:Lcom/google/android/gms/internal/ads/zzzd;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/vh1;-><init>(Lcom/google/android/gms/internal/ads/pi1;Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/zzys;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzzd;Lcom/google/android/gms/internal/ads/mn1;)V

    iget-object p2, p4, Lcom/google/android/gms/internal/ads/bi1;->c:Lcom/google/android/gms/internal/ads/ln1;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wh1;->d:Lcom/google/android/gms/internal/ads/a70;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wh1;->c:Lcom/google/android/gms/internal/ads/zn1;

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zn1;->a(Lcom/google/android/gms/internal/ads/yn1;)V

    iget-object p2, p4, Lcom/google/android/gms/internal/ads/bi1;->c:Lcom/google/android/gms/internal/ads/ln1;

    invoke-direct {p0, p2, p1, p3}, Lcom/google/android/gms/internal/ads/wh1;->f(Lcom/google/android/gms/internal/ads/ln1;Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wh1;->c:Lcom/google/android/gms/internal/ads/zn1;

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zn1;->b(Lcom/google/android/gms/internal/ads/yn1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ri1;->b:Lcom/google/android/gms/internal/ads/oi1;

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/pi1;->a(Lcom/google/android/gms/internal/ads/oi1;)Lcom/google/android/gms/internal/ads/z60;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/z60;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/a70;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wh1;->d:Lcom/google/android/gms/internal/ads/a70;

    new-instance p1, Lcom/google/android/gms/internal/ads/th1;

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/th1;-><init>(Lcom/google/android/gms/internal/ads/wh1;Lcom/google/android/gms/internal/ads/pi1;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/wh1;->e:Ljava/util/concurrent/Executor;

    invoke-static {p2, p1, p3}, Lcom/google/android/gms/internal/ads/kz1;->h(Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/uy1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wh1;->c:Lcom/google/android/gms/internal/ads/zn1;

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/zn1;->a(Lcom/google/android/gms/internal/ads/yn1;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/ri1;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ri1;->b:Lcom/google/android/gms/internal/ads/oi1;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/bi1;->b:Lcom/google/android/gms/internal/ads/zzawc;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/ri1;-><init>(Lcom/google/android/gms/internal/ads/oi1;Lcom/google/android/gms/internal/ads/zzawc;)V

    move-object p1, p2

    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wh1;->a:Lcom/google/android/gms/internal/ads/qi1;

    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/qi1;->a(Lcom/google/android/gms/internal/ads/ri1;Lcom/google/android/gms/internal/ads/pi1;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/wh1;->a:Lcom/google/android/gms/internal/ads/qi1;

    check-cast p2, Lcom/google/android/gms/internal/ads/gi1;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/gi1;->b()Lcom/google/android/gms/internal/ads/a70;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/wh1;->d:Lcom/google/android/gms/internal/ads/a70;

    return-object p1
.end method
