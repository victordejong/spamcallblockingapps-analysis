.class public final Lcom/google/android/gms/internal/ads/zo1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/android/gms/internal/ads/ip1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ip1;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/xo1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zo1;->c:Lcom/google/android/gms/internal/ads/ip1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zo1;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zo1;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/hp1;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/hp1<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zo1;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kz1;->n(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/jz1;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/yo1;->a:Ljava/util/concurrent/Callable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zo;->f:Lcom/google/android/gms/internal/ads/sz1;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/jz1;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v7

    new-instance v1, Lcom/google/android/gms/internal/ads/hp1;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zo1;->c:Lcom/google/android/gms/internal/ads/ip1;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zo1;->a:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zo1;->b:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/ip1;->d(Lcom/google/android/gms/internal/ads/ip1;)Lcom/google/android/gms/internal/ads/sz1;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/jz1;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/hp1;-><init>(Lcom/google/android/gms/internal/ads/ip1;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/rz1;Ljava/util/List;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/xo1;)V

    return-object v1
.end method
