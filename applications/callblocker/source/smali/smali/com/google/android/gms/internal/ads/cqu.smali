.class final Lcom/google/android/gms/internal/ads/cqu;
.super Lcom/google/android/gms/internal/ads/cqn;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cqn",
        "<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/cqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cqw",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cpb;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpb",
            "<+",
            "Lcom/google/android/gms/internal/ads/crt",
            "<*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/cqn;-><init>(Lcom/google/android/gms/internal/ads/cpb;ZZ)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cqx;

    invoke-direct {v0, p0, p4, p3}, Lcom/google/android/gms/internal/ads/cqx;-><init>(Lcom/google/android/gms/internal/ads/cqu;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqu;->a:Lcom/google/android/gms/internal/ads/cqw;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqn;->h()V

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cqu;Lcom/google/android/gms/internal/ads/cqw;)Lcom/google/android/gms/internal/ads/cqw;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqu;->a:Lcom/google/android/gms/internal/ads/cqw;

    return-object v0
.end method


# virtual methods
.method final a(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 5
    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/cqn$a;)V
    .locals 1

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cqn;->a(Lcom/google/android/gms/internal/ads/cqn$a;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/cqn$a;->a:Lcom/google/android/gms/internal/ads/cqn$a;

    if-ne p1, v0, :cond_0

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqu;->a:Lcom/google/android/gms/internal/ads/cqw;

    .line 13
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqu;->a:Lcom/google/android/gms/internal/ads/cqw;

    .line 15
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/crp;->e()V

    .line 17
    :cond_0
    return-void
.end method

.method final i()V
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqu;->a:Lcom/google/android/gms/internal/ads/cqw;

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqw;->b()V

    .line 9
    :cond_0
    return-void
.end method
