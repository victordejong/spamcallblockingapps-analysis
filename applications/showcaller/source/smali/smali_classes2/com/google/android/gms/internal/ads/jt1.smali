.class public final Lcom/google/android/gms/internal/ads/jt1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s03;

.field private final b:Lcom/google/android/gms/internal/ads/rs1;

.field private final c:Lcom/google/android/gms/internal/ads/vi3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/vi3<",
            "Lcom/google/android/gms/internal/ads/bu1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/s03;Lcom/google/android/gms/internal/ads/rs1;Lcom/google/android/gms/internal/ads/vi3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/s03;",
            "Lcom/google/android/gms/internal/ads/rs1;",
            "Lcom/google/android/gms/internal/ads/vi3<",
            "Lcom/google/android/gms/internal/ads/bu1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jt1;->a:Lcom/google/android/gms/internal/ads/s03;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jt1;->b:Lcom/google/android/gms/internal/ads/rs1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jt1;->c:Lcom/google/android/gms/internal/ads/vi3;

    return-void
.end method

.method private final g(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/it1;Lcom/google/android/gms/internal/ads/it1;Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RetT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            "Lcom/google/android/gms/internal/ads/it1<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/it1<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/uz2<",
            "Ljava/io/InputStream;",
            "TRetT;>;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TRetT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcbj;->g:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->d()Lcom/google/android/gms/ads/internal/util/c2;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/c2;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeap;

    const/4 v0, 0x1

    .line 3
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzeap;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/it1;->a(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    const-class v0, Ljava/util/concurrent/ExecutionException;

    sget-object v1, Lcom/google/android/gms/internal/ads/at1;->a:Lcom/google/android/gms/internal/ads/uz2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jt1;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 5
    invoke-static {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->g(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    .line 6
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/a03;->E(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/a03;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt1;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 7
    invoke-static {p2, p4, v0}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/bt1;

    .line 8
    invoke-direct {v0, p0, p3, p1, p4}, Lcom/google/android/gms/internal/ads/bt1;-><init>(Lcom/google/android/gms/internal/ads/jt1;Lcom/google/android/gms/internal/ads/it1;Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/uz2;)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzeap;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/jt1;->a:Lcom/google/android/gms/internal/ads/s03;

    .line 9
    invoke-static {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/k03;->g(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ct1;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ct1;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jt1;->b:Lcom/google/android/gms/internal/ads/rs1;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dt1;->b(Lcom/google/android/gms/internal/ads/rs1;)Lcom/google/android/gms/internal/ads/it1;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/et1;

    .line 2
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/et1;-><init>(Lcom/google/android/gms/internal/ads/jt1;)V

    .line 3
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/jt1;->g(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/it1;Lcom/google/android/gms/internal/ads/it1;Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcbj;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/t0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdym;

    const/4 v0, 0x2

    const-string v1, "Pool key missing from removeUrl call."

    .line 2
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/ft1;->a:Lcom/google/android/gms/internal/ads/uz2;

    new-instance v1, Lcom/google/android/gms/internal/ads/gt1;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/gt1;-><init>(Lcom/google/android/gms/internal/ads/jt1;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/ht1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/ht1;-><init>(Lcom/google/android/gms/internal/ads/jt1;)V

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/jt1;->g(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/it1;Lcom/google/android/gms/internal/ads/it1;Lcom/google/android/gms/internal/ads/uz2;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt1;->c:Lcom/google/android/gms/internal/ads/vi3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vi3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bu1;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/ey;->d:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->k:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->m:Ljava/lang/String;

    .line 5
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bu1;->G6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt1;->b:Lcom/google/android/gms/internal/ads/rs1;

    sget-object v1, Lcom/google/android/gms/internal/ads/ey;->d:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->k:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcbj;->m:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/rs1;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic e(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jt1;->c:Lcom/google/android/gms/internal/ads/vi3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/vi3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bu1;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/bu1;->F6(Lcom/google/android/gms/internal/ads/zzcbj;I)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic f(Lcom/google/android/gms/internal/ads/it1;Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/uz2;Lcom/google/android/gms/internal/ads/zzeap;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/it1;->a(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/jt1;->a:Lcom/google/android/gms/internal/ads/s03;

    invoke-static {p1, p3, p2}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
