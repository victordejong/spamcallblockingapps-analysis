.class public final Landroidx/work/o$a;
.super Landroidx/work/u$a;
.source "PeriodicWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/u$a",
        "<",
        "Landroidx/work/o$a;",
        "Landroidx/work/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroidx/work/u$a;-><init>(Ljava/lang/Class;)V

    .line 97
    iget-object v0, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/b/p;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/work/impl/b/p;->a(J)V

    .line 98
    return-void
.end method


# virtual methods
.method a()Landroidx/work/o;
    .locals 2

    .prologue
    const/16 v1, 0x17

    .line 188
    iget-boolean v0, p0, Landroidx/work/o$a;->a:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/b/p;

    iget-object v0, v0, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 190
    invoke-virtual {v0}, Landroidx/work/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/b/p;

    iget-boolean v0, v0, Landroidx/work/impl/b/p;->q:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/b/p;

    iget-object v0, v0, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 196
    invoke-virtual {v0}, Landroidx/work/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot run in foreground with an idle mode constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    new-instance v0, Landroidx/work/o;

    invoke-direct {v0, p0}, Landroidx/work/o;-><init>(Landroidx/work/o$a;)V

    return-object v0
.end method

.method b()Landroidx/work/o$a;
    .locals 0

    .prologue
    .line 205
    return-object p0
.end method

.method synthetic c()Landroidx/work/u$a;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Landroidx/work/o$a;->b()Landroidx/work/o$a;

    move-result-object v0

    return-object v0
.end method

.method synthetic d()Landroidx/work/u;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Landroidx/work/o$a;->a()Landroidx/work/o;

    move-result-object v0

    return-object v0
.end method
