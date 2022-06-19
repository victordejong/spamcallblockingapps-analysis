.class public final Lcom/twitter/sdk/android/core/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/internal/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/l;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/twitter/sdk/android/core/internal/d$a;

.field private final b:Lcom/twitter/sdk/android/core/internal/f;

.field private final c:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Lcom/twitter/sdk/android/core/internal/e;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/internal/f;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/d$a;Lcom/twitter/sdk/android/core/internal/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/m<",
            "TT;>;",
            "Lcom/twitter/sdk/android/core/internal/f;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/d$a;",
            "Lcom/twitter/sdk/android/core/internal/e;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/d;->b:Lcom/twitter/sdk/android/core/internal/f;

    .line 56
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/d;->c:Lcom/twitter/sdk/android/core/m;

    .line 57
    iput-object p3, p0, Lcom/twitter/sdk/android/core/internal/d;->d:Ljava/util/concurrent/ExecutorService;

    .line 58
    iput-object p4, p0, Lcom/twitter/sdk/android/core/internal/d;->a:Lcom/twitter/sdk/android/core/internal/d$a;

    .line 59
    iput-object p5, p0, Lcom/twitter/sdk/android/core/internal/d;->e:Lcom/twitter/sdk/android/core/internal/e;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/m;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/e;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/m<",
            "TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/twitter/sdk/android/core/internal/e<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    new-instance v2, Lcom/twitter/sdk/android/core/internal/f;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/internal/f;-><init>()V

    new-instance v4, Lcom/twitter/sdk/android/core/internal/d$a;

    invoke-direct {v4}, Lcom/twitter/sdk/android/core/internal/d$a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/d;-><init>(Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/internal/f;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/d$a;Lcom/twitter/sdk/android/core/internal/e;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/d;->c:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/l;

    move-result-object v0

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/d;->a:Lcom/twitter/sdk/android/core/internal/d$a;

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/d$a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/d;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/twitter/sdk/android/core/internal/-$$Lambda$k_jA5ssYmNToZ9dDmtxUkMgCSUA;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/core/internal/-$$Lambda$k_jA5ssYmNToZ9dDmtxUkMgCSUA;-><init>(Lcom/twitter/sdk/android/core/internal/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method protected final b()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/d;->c:Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/m;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/l;

    .line 92
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/d;->e:Lcom/twitter/sdk/android/core/internal/e;

    invoke-interface {v2, v1}, Lcom/twitter/sdk/android/core/internal/e;->a(Lcom/twitter/sdk/android/core/l;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/d;->a:Lcom/twitter/sdk/android/core/internal/d$a;

    .line 2029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/internal/d$a;->b(J)V

    return-void
.end method
