.class public final Lcom/google/android/gms/internal/ads/xs1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zs1;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/zs1;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/s03;

.field private final c:Lcom/google/android/gms/internal/ads/s51;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/s03;Lcom/google/android/gms/internal/ads/s51;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/zs1;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/s03;",
            "Lcom/google/android/gms/internal/ads/s51;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xs1;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xs1;->b:Lcom/google/android/gms/internal/ads/s03;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xs1;->c:Lcom/google/android/gms/internal/ads/s51;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/xs1;)Lcom/google/android/gms/internal/ads/s51;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/xs1;->c:Lcom/google/android/gms/internal/ads/s51;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzcbj;)Lcom/google/android/gms/internal/ads/r03;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcbj;",
            ")",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/rj2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xs1;->c:Lcom/google/android/gms/internal/ads/s51;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/s51;->u(Lcom/google/android/gms/internal/ads/zzcbj;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdym;

    const/4 v1, 0x3

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdym;-><init>(I)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->c(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->R5:Lcom/google/android/gms/internal/ads/cw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/xs1;->a:Ljava/util/Map;

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/pj3;

    if-eqz v4, :cond_0

    new-instance v5, Lcom/google/android/gms/internal/ads/vs1;

    .line 9
    invoke-direct {v5, v4, p1}, Lcom/google/android/gms/internal/ads/vs1;-><init>(Lcom/google/android/gms/internal/ads/pj3;Lcom/google/android/gms/internal/ads/zzcbj;)V

    const-class v4, Lcom/google/android/gms/internal/ads/zzdym;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/xs1;->b:Lcom/google/android/gms/internal/ads/s03;

    .line 10
    invoke-static {v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/k03;->g(Lcom/google/android/gms/internal/ads/r03;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/uz2;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/ws1;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/ws1;-><init>(Lcom/google/android/gms/internal/ads/xs1;)V

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    .line 13
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/k03;->p(Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/f03;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
