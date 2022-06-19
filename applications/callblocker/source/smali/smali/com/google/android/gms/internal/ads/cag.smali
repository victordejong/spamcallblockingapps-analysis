.class public final Lcom/google/android/gms/internal/ads/cag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/cah",
            "<+",
            "Lcom/google/android/gms/internal/ads/cae",
            "<TT;>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/ads/cah",
            "<+",
            "Lcom/google/android/gms/internal/ads/cae",
            "<TT;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cag;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cag;->a:Ljava/util/Set;

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cag;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cag;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cah;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cah;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v4

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v6

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/caj;

    invoke-direct {v1, v0, v6, v7}, Lcom/google/android/gms/internal/ads/caj;-><init>(Lcom/google/android/gms/internal/ads/cah;J)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 12
    invoke-interface {v4, v1, v0}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 13
    :cond_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/crg;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/crm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/cai;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/ads/cai;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cag;->b:Ljava/util/concurrent/Executor;

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 17
    return-object v0
.end method
