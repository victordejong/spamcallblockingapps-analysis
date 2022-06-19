.class public Ld2/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/n1;->b:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ld2/n1;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Ld2/n1;->b:Ld2/f1;

    .line 2
    iget-object p2, p2, Ld2/f1;->c:Ld2/g2;

    .line 3
    iget-boolean v0, p2, Ld2/g2;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Ld2/g2;->c(Z)V

    .line 5
    :cond_0
    sput-object p1, Ld2/t;->a:Landroid/content/Context;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    sput-boolean p1, Ld2/t;->d:Z

    .line 2
    iget-object v0, p0, Ld2/n1;->b:Ld2/f1;

    .line 3
    iget-object v0, v0, Ld2/f1;->c:Ld2/g2;

    .line 4
    invoke-virtual {v0, p1}, Ld2/g2;->d(Z)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/n1;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Ld2/t;->d:Z

    .line 3
    sput-object p1, Ld2/t;->a:Landroid/content/Context;

    .line 4
    iget-object v1, p0, Ld2/n1;->b:Ld2/f1;

    invoke-virtual {v1}, Ld2/f1;->p()Ld2/h0;

    move-result-object v1

    .line 5
    iget-object v1, v1, Ld2/h0;->d:Ld2/d2;

    .line 6
    sget-object v2, Ld2/t;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 7
    iget-object v3, p0, Ld2/n1;->b:Ld2/f1;

    .line 8
    iget-object v3, v3, Ld2/f1;->c:Ld2/g2;

    .line 9
    iget-boolean v3, v3, Ld2/g2;->d:Z

    if-eqz v3, :cond_0

    .line 10
    instance-of v3, v2, Ld2/w;

    if-eqz v3, :cond_0

    check-cast v2, Ld2/w;

    iget-boolean v2, v2, Ld2/w;->d:Z

    if-nez v2, :cond_0

    return-void

    .line 11
    :cond_0
    sput-object p1, Ld2/t;->a:Landroid/content/Context;

    .line 12
    iget-object v2, p0, Ld2/n1;->b:Ld2/f1;

    .line 13
    iget-object v2, v2, Ld2/f1;->s:Ld2/t0;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 14
    iget-object v2, v2, Ld2/t0;->b:Ld2/f4;

    const-string v4, "m_origin"

    .line 15
    invoke-virtual {v2, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    .line 16
    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 17
    iget-object v2, p0, Ld2/n1;->b:Ld2/f1;

    .line 18
    iget-object v2, v2, Ld2/f1;->s:Ld2/t0;

    .line 19
    iget-object v4, v2, Ld2/t0;->b:Ld2/f4;

    .line 20
    invoke-virtual {v2, v4}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v2

    invoke-virtual {v2}, Ld2/t0;->b()V

    .line 21
    :cond_1
    iget-object v2, p0, Ld2/n1;->b:Ld2/f1;

    .line 22
    iput-object v3, v2, Ld2/f1;->s:Ld2/t0;

    .line 23
    :cond_2
    iget-object v2, p0, Ld2/n1;->b:Ld2/f1;

    const/4 v4, 0x0

    .line 24
    iput-boolean v4, v2, Ld2/f1;->B:Z

    .line 25
    iget-object v5, v2, Ld2/f1;->c:Ld2/g2;

    .line 26
    iput-boolean v4, v5, Ld2/g2;->j:Z

    .line 27
    iget-boolean v2, v2, Ld2/f1;->E:Z

    if-eqz v2, :cond_3

    .line 28
    iget-boolean v2, v5, Ld2/g2;->f:Z

    if-nez v2, :cond_3

    .line 29
    invoke-virtual {v5, v0}, Ld2/g2;->c(Z)V

    .line 30
    :cond_3
    iget-object v2, p0, Ld2/n1;->b:Ld2/f1;

    .line 31
    iget-object v2, v2, Ld2/f1;->c:Ld2/g2;

    .line 32
    invoke-virtual {v2, v0}, Ld2/g2;->d(Z)V

    .line 33
    iget-object v0, p0, Ld2/n1;->b:Ld2/f1;

    .line 34
    iget-object v0, v0, Ld2/f1;->e:Ld2/e2;

    .line 35
    iget-object v2, v0, Ld2/e2;->a:Ld2/t0;

    if-eqz v2, :cond_4

    .line 36
    invoke-virtual {v0, v2}, Ld2/e2;->a(Ld2/t0;)V

    .line 37
    iput-object v3, v0, Ld2/e2;->a:Ld2/t0;

    :cond_4
    if-eqz v1, :cond_5

    .line 38
    iget-object v0, v1, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_5

    .line 39
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    :cond_5
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 42
    iget-object v0, v0, Ld2/f1;->r:Ld2/l;

    .line 43
    invoke-static {p1, v0}, Ld2/b;->b(Landroid/content/Context;Ld2/l;)V

    :cond_6
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ld2/n1;->b:Ld2/f1;

    .line 2
    iget-object p1, p1, Ld2/f1;->c:Ld2/g2;

    .line 3
    iget-boolean v0, p1, Ld2/g2;->g:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 4
    iput-boolean v1, p1, Ld2/g2;->g:Z

    .line 5
    iput-boolean v1, p1, Ld2/g2;->h:Z

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/n1;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Ld2/n1;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Ld2/n1;->b:Ld2/f1;

    .line 4
    iget-object p1, p1, Ld2/f1;->c:Ld2/g2;

    .line 5
    iget-boolean v0, p1, Ld2/g2;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Ld2/g2;->g:Z

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p1, Ld2/g2;->h:Z

    .line 8
    invoke-virtual {p1, v0}, Ld2/g2;->a(Z)V

    :cond_0
    return-void
.end method
