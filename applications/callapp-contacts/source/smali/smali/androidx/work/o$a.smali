.class public final Landroidx/work/o$a;
.super Landroidx/work/v$a;
.source "SourceFile"


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
        "Landroidx/work/v$a<",
        "Landroidx/work/o$a;",
        "Landroidx/work/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1}, Landroidx/work/v$a;-><init>(Ljava/lang/Class;)V

    .line 97
    iget-object p1, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1}, Landroidx/work/v$a;-><init>(Ljava/lang/Class;)V

    .line 150
    iget-object p1, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/model/WorkSpec;

    .line 151
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    .line 152
    invoke-virtual {p7, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p4

    .line 150
    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/time/Duration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1}, Landroidx/work/v$a;-><init>(Ljava/lang/Class;)V

    .line 118
    iget-object p1, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;",
            "Ljava/time/Duration;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Landroidx/work/v$a;-><init>(Ljava/lang/Class;)V

    .line 181
    iget-object p1, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide p2

    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    return-void
.end method


# virtual methods
.method final bridge synthetic a()Landroidx/work/v$a;
    .locals 0

    return-object p0
.end method

.method final synthetic b()Landroidx/work/v;
    .locals 2

    .line 2186
    iget-boolean v0, p0, Landroidx/work/o$a;->a:Z

    const/16 v1, 0x17

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 3138
    iget-boolean v0, v0, Landroidx/work/b;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2189
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2192
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/model/WorkSpec;

    iget-boolean v0, v0, Landroidx/work/impl/model/WorkSpec;->runInForeground:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroidx/work/o$a;->c:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 4138
    iget-boolean v0, v0, Landroidx/work/b;->d:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 2195
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot run in foreground with an idle mode constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2198
    :cond_3
    :goto_1
    new-instance v0, Landroidx/work/o;

    invoke-direct {v0, p0}, Landroidx/work/o;-><init>(Landroidx/work/o$a;)V

    return-object v0
.end method
