.class final Lcom/google/android/gms/internal/ads/csh;
.super Lcom/google/android/gms/internal/ads/cra;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cra",
        "<TV;>;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private volatile a:Lcom/google/android/gms/internal/ads/crp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crp",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cqr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cqr",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cra;-><init>()V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/csg;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/csg;-><init>(Lcom/google/android/gms/internal/ads/csh;Lcom/google/android/gms/internal/ads/cqr;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/csh;->a:Lcom/google/android/gms/internal/ads/crp;

    .line 8
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cra;-><init>()V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/csi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/csi;-><init>(Lcom/google/android/gms/internal/ads/csh;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/csh;->a:Lcom/google/android/gms/internal/ads/crp;

    .line 5
    return-void
.end method

.method static a(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/csh;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/android/gms/internal/ads/csh",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/csh;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/csh;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/csh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Lcom/google/android/gms/internal/ads/csh",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/csh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/csh;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csh;->a:Lcom/google/android/gms/internal/ads/crp;

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "task=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/cra;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/cra;->b()V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csh;->a:Lcom/google/android/gms/internal/ads/crp;

    .line 17
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/crp;->e()V

    .line 19
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/csh;->a:Lcom/google/android/gms/internal/ads/crp;

    .line 20
    return-void
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/csh;->a:Lcom/google/android/gms/internal/ads/crp;

    .line 10
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/crp;->run()V

    .line 12
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/csh;->a:Lcom/google/android/gms/internal/ads/crp;

    .line 13
    return-void
.end method
