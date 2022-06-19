.class abstract Lcom/google/android/gms/internal/ads/dak;
.super Lcom/google/android/gms/internal/ads/dao;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dak$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/dao<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private b:Lcom/google/android/gms/internal/ads/cyt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cyt<",
            "+",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    const-class v0, Lcom/google/android/gms/internal/ads/dak;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dak;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/cyt;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cyt<",
            "+",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cyt;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dao;-><init>(I)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/cyt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dak;->b:Lcom/google/android/gms/internal/ads/cyt;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/dak;->c:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/dak;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dak;)Lcom/google/android/gms/internal/ads/cyt;
    .locals 1

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dak;->b:Lcom/google/android/gms/internal/ads/cyt;

    return-object v0
.end method

.method private final a(ILjava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    .line 59
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dbh;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dak;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dak;->b(Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dak;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dak;ILjava/util/concurrent/Future;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/dak;->a(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/dak;Lcom/google/android/gms/internal/ads/cyt;)V
    .locals 3

    .line 1067
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dao;->k()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 1075
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cyt;->iterator()Ljava/util/Iterator;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/czu;

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 1076
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1077
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/dak;->a(ILjava/util/concurrent/Future;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1080
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dao;->l()V

    .line 1081
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dak;->i()V

    .line 1082
    sget-object p1, Lcom/google/android/gms/internal/ads/dak$a;->zzidc:Lcom/google/android/gms/internal/ads/dak$a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dak;->a(Lcom/google/android/gms/internal/ads/dak$a;)V

    :cond_3
    return-void

    .line 1070
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Less than 0 remaining futures"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_1

    .line 88
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private final b(Ljava/lang/Throwable;)V
    .locals 1

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dak;->c:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/dag;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dao;->j()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dak;->a(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dak;->c(Ljava/lang/Throwable;)V

    return-void

    .line 47
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dak;->c(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static c(Ljava/lang/Throwable;)V
    .locals 7

    .line 50
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    const-string v0, "Input Future failed with Error"

    goto :goto_0

    :cond_0
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_0
    move-object v5, v0

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/ads/dak;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture"

    const-string v4, "log"

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dak;->b:Lcom/google/android/gms/internal/ads/cyt;

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

    const-string v1, "futures="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 18
    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dao;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract a(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method a(Lcom/google/android/gms/internal/ads/dak$a;)V
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dak;->b:Lcom/google/android/gms/internal/ads/cyt;

    return-void
.end method

.method final a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cyg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dag;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcl;->e()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dak;->a(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 3

    .line 6
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/dao;->b()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dak;->b:Lcom/google/android/gms/internal/ads/cyt;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/dak$a;->zzidb:Lcom/google/android/gms/internal/ads/dak$a;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/dak;->a(Lcom/google/android/gms/internal/ads/dak$a;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dag;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dag;->d()Z

    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyt;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/czu;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .line 12
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method final h()V
    .locals 5

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dak;->b:Lcom/google/android/gms/internal/ads/cyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyt;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dak;->i()V

    return-void

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dak;->c:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dak;->b:Lcom/google/android/gms/internal/ads/cyt;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cyt;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/czu;

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dbt;

    add-int/lit8 v3, v0, 0x1

    .line 26
    new-instance v4, Lcom/google/android/gms/internal/ads/dan;

    invoke-direct {v4, p0, v2, v0}, Lcom/google/android/gms/internal/ads/dan;-><init>(Lcom/google/android/gms/internal/ads/dak;Lcom/google/android/gms/internal/ads/dbt;I)V

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/dba;->zzidl:Lcom/google/android/gms/internal/ads/dba;

    .line 28
    invoke-interface {v2, v4, v0}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v3

    goto :goto_0

    :cond_1
    return-void

    .line 31
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dak;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dak;->b:Lcom/google/android/gms/internal/ads/cyt;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 32
    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/dam;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dam;-><init>(Lcom/google/android/gms/internal/ads/dak;Lcom/google/android/gms/internal/ads/cyt;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dak;->b:Lcom/google/android/gms/internal/ads/cyt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cyt;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/czu;

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/dbt;

    .line 35
    sget-object v3, Lcom/google/android/gms/internal/ads/dba;->zzidl:Lcom/google/android/gms/internal/ads/dba;

    .line 36
    invoke-interface {v2, v1, v3}, Lcom/google/android/gms/internal/ads/dbt;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method abstract i()V
.end method
