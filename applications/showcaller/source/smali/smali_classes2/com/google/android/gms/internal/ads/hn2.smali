.class public final Lcom/google/android/gms/internal/ads/hn2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/r03<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/android/gms/internal/ads/rn2;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/rn2;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/in2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/rn2;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/r03;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hn2;->c:Lcom/google/android/gms/internal/ads/rn2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hn2;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hn2;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qn2;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/qn2<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hn2;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->o(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/i03;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/fn2;->a:Ljava/util/concurrent/Callable;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/qi0;->f:Lcom/google/android/gms/internal/ads/s03;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/i03;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v7

    new-instance v1, Lcom/google/android/gms/internal/ads/qn2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hn2;->c:Lcom/google/android/gms/internal/ads/rn2;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/hn2;->a:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/hn2;->b:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/rn2;->b(Lcom/google/android/gms/internal/ads/rn2;)Lcom/google/android/gms/internal/ads/s03;

    move-result-object v2

    .line 3
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/i03;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/qn2;-><init>(Lcom/google/android/gms/internal/ads/rn2;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/r03;Ljava/util/List;Lcom/google/android/gms/internal/ads/r03;Lcom/google/android/gms/internal/ads/in2;)V

    return-object v1
.end method
