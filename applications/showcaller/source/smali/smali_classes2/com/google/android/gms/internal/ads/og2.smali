.class final Lcom/google/android/gms/internal/ads/og2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/g21<",
        "+",
        "Lcom/google/android/gms/internal/ads/xy0;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/jl2;

.field private final b:Lcom/google/android/gms/internal/ads/g21;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/Executor;

.field private d:Lcom/google/android/gms/internal/ads/ng2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jl2;Lcom/google/android/gms/internal/ads/g21;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/jl2;",
            "TR;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/og2;->a:Lcom/google/android/gms/internal/ads/jl2;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/og2;->b:Lcom/google/android/gms/internal/ads/g21;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/og2;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/og2;Lcom/google/android/gms/internal/ads/ng2;)Lcom/google/android/gms/internal/ads/ng2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/og2;->d:Lcom/google/android/gms/internal/ads/ng2;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/og2;)Lcom/google/android/gms/internal/ads/ng2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/og2;->d:Lcom/google/android/gms/internal/ads/ng2;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/og2;)Lcom/google/android/gms/internal/ads/rl2;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/og2;->e()Lcom/google/android/gms/internal/ads/rl2;

    move-result-object p0

    return-object p0
.end method

.method private final e()Lcom/google/android/gms/internal/ads/rl2;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/og2;->b:Lcom/google/android/gms/internal/ads/g21;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g21;->Q()Lcom/google/android/gms/internal/ads/xj2;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/xj2;->d:Lcom/google/android/gms/internal/ads/zzbdg;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/xj2;->f:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->j:Lcom/google/android/gms/internal/ads/zzbdr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/og2;->a:Lcom/google/android/gms/internal/ads/jl2;

    .line 2
    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/jl2;->b(Lcom/google/android/gms/internal/ads/zzbdg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdr;)Lcom/google/android/gms/internal/ads/rl2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/ads/r03;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/ng2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/og2;->d:Lcom/google/android/gms/internal/ads/ng2;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/ey;->a:Lcom/google/android/gms/internal/ads/nx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nx;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/ng2;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/og2;->e()Lcom/google/android/gms/internal/ads/rl2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/ng2;-><init>(Lcom/google/android/gms/internal/ads/zzcbj;Lcom/google/android/gms/internal/ads/rl2;Lcom/google/android/gms/internal/ads/mg2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/og2;->d:Lcom/google/android/gms/internal/ads/ng2;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/og2;->b:Lcom/google/android/gms/internal/ads/g21;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/g21;->o()Lcom/google/android/gms/internal/ads/b01;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/og2;->a:Lcom/google/android/gms/internal/ads/jl2;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/jl2;->a()Lcom/google/android/gms/internal/ads/zzfcj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/b01;->f(Lcom/google/android/gms/internal/ads/zzfcj;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/a03;->E(Lcom/google/android/gms/internal/ads/r03;)Lcom/google/android/gms/internal/ads/a03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/lg2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/lg2;-><init>(Lcom/google/android/gms/internal/ads/og2;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/og2;->c:Ljava/util/concurrent/Executor;

    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/kg2;

    .line 8
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/kg2;-><init>(Lcom/google/android/gms/internal/ads/og2;)V

    const-class v2, Lcom/google/android/gms/internal/ads/zzeap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/og2;->c:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/k03;->f(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 10
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/jg2;->a:Lcom/google/android/gms/internal/ads/nu2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/og2;->c:Ljava/util/concurrent/Executor;

    .line 11
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/k03;->j(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/nu2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0

    .line 12
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
