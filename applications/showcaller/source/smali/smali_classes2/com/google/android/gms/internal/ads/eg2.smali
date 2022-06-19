.class public final Lcom/google/android/gms/internal/ads/eg2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sg2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/g21<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/sg2<",
        "TR;",
        "Lcom/google/android/gms/internal/ads/cg2<",
        "TR;TAdT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/jl2;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/f03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/f03<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jl2;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/bg2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/bg2;-><init>(Lcom/google/android/gms/internal/ads/eg2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/eg2;->c:Lcom/google/android/gms/internal/ads/f03;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eg2;->a:Lcom/google/android/gms/internal/ads/jl2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eg2;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 0

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/eg2;->b(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/tg2;Lcom/google/android/gms/internal/ads/rg2;Lcom/google/android/gms/internal/ads/g21;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/tg2;",
            "Lcom/google/android/gms/internal/ads/rg2<",
            "TR;>;TR;)",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/cg2<",
            "TR;TAdT;>;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/og2;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/eg2;->a:Lcom/google/android/gms/internal/ads/jl2;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg2;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/og2;-><init>(Lcom/google/android/gms/internal/ads/jl2;Lcom/google/android/gms/internal/ads/g21;Ljava/util/concurrent/Executor;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/og2;->c()Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/a03;->E(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/a03;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zf2;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/zf2;-><init>(Lcom/google/android/gms/internal/ads/eg2;Lcom/google/android/gms/internal/ads/g21;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/eg2;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/k03;->i(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/ag2;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/ag2;-><init>(Lcom/google/android/gms/internal/ads/eg2;)V

    const-class p3, Ljava/lang/Exception;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eg2;->b:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/k03;->f(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/g21;Lcom/google/android/gms/internal/ads/ng2;)Lcom/google/android/gms/internal/ads/r03;
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/ng2;->b:Lcom/google/android/gms/internal/ads/rl2;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ng2;->a:Lcom/google/android/gms/internal/ads/zzcbj;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/eg2;->a:Lcom/google/android/gms/internal/ads/jl2;

    .line 2
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/jl2;->c(Lcom/google/android/gms/internal/ads/rl2;)Lcom/google/android/gms/internal/ads/ql2;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v0, :cond_1

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/g21;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/b01;->g(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eg2;->c:Lcom/google/android/gms/internal/ads/f03;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/eg2;->b:Ljava/util/concurrent/Executor;

    .line 5
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/cg2;

    .line 6
    invoke-direct {p1, v0, p2, v2}, Lcom/google/android/gms/internal/ads/cg2;-><init>(Lcom/google/android/gms/internal/ads/rl2;Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/ql2;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
