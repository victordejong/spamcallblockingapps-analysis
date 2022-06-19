.class public abstract Landroidx/work/ListenableWorker;
.super Ljava/lang/Object;
.source "ListenableWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/ListenableWorker$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/work/WorkerParameters;

.field private volatile c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BanKeepAnnotation"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Application Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    if-nez p2, :cond_1

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "WorkerParameters is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iput-object p1, p0, Landroidx/work/ListenableWorker;->a:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Landroidx/work/ListenableWorker;->b:Landroidx/work/WorkerParameters;

    .line 90
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroidx/work/ListenableWorker;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroidx/work/ListenableWorker;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->a()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroidx/work/e;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Landroidx/work/ListenableWorker;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->b()Landroidx/work/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Lcom/google/a/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/a/a",
            "<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/ListenableWorker;->c:Z

    .line 245
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->f()V

    .line 246
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Landroidx/work/ListenableWorker;->d:Z

    return v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/ListenableWorker;->d:Z

    .line 280
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Landroidx/work/ListenableWorker;->e:Z

    return v0
.end method

.method public j()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroidx/work/ListenableWorker;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public k()Landroidx/work/impl/utils/b/a;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroidx/work/ListenableWorker;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->d()Landroidx/work/impl/utils/b/a;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroidx/work/v;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroidx/work/ListenableWorker;->b:Landroidx/work/WorkerParameters;

    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->e()Landroidx/work/v;

    move-result-object v0

    return-object v0
.end method
