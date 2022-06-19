.class abstract Lcom/google/android/gms/internal/ads/cqn;
.super Lcom/google/android/gms/internal/ads/cqq;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/cqn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cqq",
        "<TOutputT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private b:Lcom/google/android/gms/internal/ads/cpb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cpb",
            "<+",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TInputT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private final c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/google/android/gms/internal/ads/cqn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cqn;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/cpb;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpb",
            "<+",
            "Lcom/google/android/gms/internal/ads/crt",
            "<+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cpb;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cqq;-><init>(I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqn;->b:Lcom/google/android/gms/internal/ads/cpb;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/cqn;->c:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/cqn;->d:Z

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cqn;Lcom/google/android/gms/internal/ads/cpb;)Lcom/google/android/gms/internal/ads/cpb;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqn;->b:Lcom/google/android/gms/internal/ads/cpb;

    return-object v0
.end method

.method private final a(ILjava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future",
            "<+TInputT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/cqn;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cqn;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 65
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cqn;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/cpb;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/ads/cpb;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpb",
            "<+",
            "Ljava/util/concurrent/Future",
            "<+TInputT;>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqq;->k()I

    move-result v2

    .line 68
    if-ltz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v3, "Less than 0 remaining futures"

    .line 69
    if-nez v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    .line 71
    :cond_1
    if-nez v2, :cond_4

    .line 73
    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cpb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpy;

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 76
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 77
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/cqn;->a(ILjava/util/concurrent/Future;)V

    .line 78
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqq;->l()V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqn;->i()V

    .line 82
    sget-object v0, Lcom/google/android/gms/internal/ads/cqn$a;->b:Lcom/google/android/gms/internal/ads/cqn$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqn;->a(Lcom/google/android/gms/internal/ads/cqn$a;)V

    .line 83
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cqn;ILjava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/cqn;->a(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private static a(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 87
    :goto_0
    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_1
    return v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cqn;Lcom/google/android/gms/internal/ads/cpb;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cqn;->a(Lcom/google/android/gms/internal/ads/cpb;)V

    return-void
.end method

.method private final b(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cqn;->c:Z

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cqf;->a(Ljava/lang/Throwable;)Z

    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqq;->j()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cqn;->a(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cqn;->c(Ljava/lang/Throwable;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cqn;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 50
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v4, "Input Future failed with Error"

    .line 53
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cqn;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "com.google.common.util.concurrent.AggregateFuture"

    const-string/jumbo v3, "log"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void

    .line 52
    :cond_0
    const-string/jumbo v4, "Got more than one input Future failure. Logging failures after the first"

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqn;->b:Lcom/google/android/gms/internal/ads/cpb;

    .line 16
    if-eqz v0, :cond_0

    .line 17
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "futures="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/cqq;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method abstract a(ILjava/lang/Object;)V
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method a(Lcom/google/android/gms/internal/ads/cqn$a;)V
    .locals 1

    .prologue
    .line 84
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqn;->b:Lcom/google/android/gms/internal/ads/cpb;

    .line 86
    return-void
.end method

.method final a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/csj;->e()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cqn;->a(Ljava/util/Set;Ljava/lang/Throwable;)Z

    .line 58
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 6
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/cqq;->b()V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqn;->b:Lcom/google/android/gms/internal/ads/cpb;

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/cqn$a;->a:Lcom/google/android/gms/internal/ads/cqn$a;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/cqn;->a(Lcom/google/android/gms/internal/ads/cqn$a;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->isCancelled()Z

    move-result v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqf;->d()Z

    move-result v2

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cpb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpy;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 12
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    .line 9
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 14
    :cond_1
    return-void
.end method

.method final h()V
    .locals 5

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqn;->b:Lcom/google/android/gms/internal/ads/cpb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cqn;->i()V

    .line 38
    :cond_0
    return-void

    .line 22
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cqn;->c:Z

    if-eqz v0, :cond_2

    .line 23
    const/4 v1, 0x0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqn;->b:Lcom/google/android/gms/internal/ads/cpb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpy;

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/crt;

    .line 25
    add-int/lit8 v3, v2, 0x1

    .line 26
    new-instance v4, Lcom/google/android/gms/internal/ads/cqm;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/android/gms/internal/ads/cqm;-><init>(Lcom/google/android/gms/internal/ads/cqn;Lcom/google/android/gms/internal/ads/crt;I)V

    .line 27
    sget-object v2, Lcom/google/android/gms/internal/ads/cqz;->a:Lcom/google/android/gms/internal/ads/cqz;

    .line 28
    invoke-interface {v1, v4, v2}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v2, v3

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cqn;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqn;->b:Lcom/google/android/gms/internal/ads/cpb;

    .line 32
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/cqo;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/cqo;-><init>(Lcom/google/android/gms/internal/ads/cqn;Lcom/google/android/gms/internal/ads/cpb;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqn;->b:Lcom/google/android/gms/internal/ads/cpb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cpb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cpy;

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/crt;

    .line 35
    sget-object v3, Lcom/google/android/gms/internal/ads/cqz;->a:Lcom/google/android/gms/internal/ads/cqz;

    .line 36
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/crt;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    .line 31
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract i()V
.end method
