.class public Ld2/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static X:Ljava/lang/String; = "https://adc3-launch.adcolony.com/v4/launch"

.field public static volatile Y:Ljava/lang/String; = ""


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:I

.field public M:I

.field public N:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public O:Ld2/m;

.field public P:Ld2/f4;

.field public Q:J

.field public R:J

.field public S:Z

.field public T:J

.field public U:J

.field public V:J

.field public W:I

.field public a:Ld2/u0;

.field public b:Ld2/p2;

.field public c:Ld2/g2;

.field public d:Ld2/k0;

.field public e:Ld2/e2;

.field public f:Ld2/h3;

.field public g:Ld2/e3;

.field public h:Ld2/o2;

.field public i:Ld2/h0;

.field public j:Ld2/b2;

.field public k:Ld2/d1;

.field public l:Ld2/j0;

.field public m:Ld2/j3;

.field public n:Ld2/j;

.field public o:Ld2/q;

.field public p:Ld2/r;

.field public q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ld2/n;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ld2/l;

.field public s:Ld2/t0;

.field public t:Ld2/f4;

.field public u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ld2/s;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ld2/x3;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld2/f1;->q:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld2/f1;->u:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld2/f1;->v:Ljava/util/HashMap;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Ld2/f1;->z:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Ld2/f1;->M:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ld2/f1;->O:Ld2/m;

    .line 8
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    iput-object v0, p0, Ld2/f1;->P:Ld2/f4;

    const-wide/16 v0, 0x1f4

    .line 9
    iput-wide v0, p0, Ld2/f1;->Q:J

    .line 10
    iput-wide v0, p0, Ld2/f1;->R:J

    const-wide/16 v0, 0x4e20

    .line 11
    iput-wide v0, p0, Ld2/f1;->T:J

    const-wide/32 v0, 0x493e0

    .line 12
    iput-wide v0, p0, Ld2/f1;->U:J

    const-wide/16 v0, 0x3a98

    .line 13
    iput-wide v0, p0, Ld2/f1;->V:J

    return-void
.end method


# virtual methods
.method public a()Ld2/g2;
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/f1;->c:Ld2/g2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/g2;

    invoke-direct {v0}, Ld2/g2;-><init>()V

    iput-object v0, p0, Ld2/f1;->c:Ld2/g2;

    .line 3
    new-instance v1, Ld2/f2;

    invoke-direct {v1, v0}, Ld2/f2;-><init>(Ld2/g2;)V

    const-string v2, "SessionInfo.stopped"

    invoke-static {v2, v1}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 4
    new-instance v1, Ld2/k2;

    invoke-direct {v1, v0}, Ld2/k2;-><init>(Ld2/g2;)V

    iput-object v1, v0, Ld2/g2;->k:Ld2/k2;

    .line 5
    :cond_0
    iget-object v0, p0, Ld2/f1;->c:Ld2/g2;

    return-object v0
.end method

.method public b()Ld2/o2;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f1;->h:Ld2/o2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/o2;

    invoke-direct {v0}, Ld2/o2;-><init>()V

    iput-object v0, p0, Ld2/f1;->h:Ld2/o2;

    .line 3
    invoke-virtual {v0}, Ld2/o2;->a()Z

    .line 4
    :cond_0
    iget-object v0, p0, Ld2/f1;->h:Ld2/o2;

    return-object v0
.end method

.method public c()Ld2/e3;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f1;->g:Ld2/e3;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/e3;

    invoke-direct {v0}, Ld2/e3;-><init>()V

    iput-object v0, p0, Ld2/f1;->g:Ld2/e3;

    .line 3
    invoke-virtual {v0}, Ld2/e3;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Ld2/f1;->g:Ld2/e3;

    return-object v0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ld2/f1;->D:Z

    .line 2
    iget-object v0, p0, Ld2/f1;->d:Ld2/k0;

    invoke-virtual {v0}, Ld2/k0;->f()V

    .line 3
    iget-object v0, p0, Ld2/f1;->r:Ld2/l;

    .line 4
    iget-object v0, v0, Ld2/l;->d:Ld2/f4;

    const-string v1, "force_ad_id"

    .line 5
    invoke-virtual {v0, v1}, Ld2/f4;->n(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 7
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Ld2/f1;->e()V

    .line 9
    :cond_1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    .line 10
    iget-object v1, p0, Ld2/f1;->r:Ld2/l;

    invoke-static {v0, v1}, Ld2/b;->b(Landroid/content/Context;Ld2/l;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Ld2/f1;->h(I)Z

    .line 12
    iget-object v0, p0, Ld2/f1;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 13
    iget-object v0, p0, Ld2/f1;->a:Ld2/u0;

    invoke-virtual {v0}, Ld2/u0;->b()V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/f1;->d:Ld2/k0;

    .line 2
    iget-object v0, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ld2/f1;->d:Ld2/k0;

    .line 5
    iget-object v1, v1, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/q;

    .line 7
    invoke-virtual {v2}, Ld2/q;->c()Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Ld2/f1;->d:Ld2/k0;

    .line 9
    iget-object v1, v1, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->a()Ld2/g2;

    move-result-object v0

    .line 2
    iget-boolean v0, v0, Ld2/g2;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Ld2/f1;->L:I

    add-int/2addr v0, v1

    iput v0, p0, Ld2/f1;->L:I

    .line 4
    iget v1, p0, Ld2/f1;->M:I

    mul-int v1, v1, v0

    const/16 v0, 0x78

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ld2/f1;->M:I

    .line 5
    new-instance v0, Ld2/f1$n;

    invoke-direct {v0, p0}, Ld2/f1$n;-><init>(Ld2/f1;)V

    invoke-static {v0}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "Max launch server download attempts hit, or AdColony is no longer"

    const-string v2, " active."

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 7
    invoke-static {v2, v1, v0, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public g(Ld2/l;Z)V
    .locals 7

    .line 1
    iput-boolean p2, p0, Ld2/f1;->C:Z

    .line 2
    iput-object p1, p0, Ld2/f1;->r:Ld2/l;

    .line 3
    new-instance v0, Ld2/u0;

    invoke-direct {v0}, Ld2/u0;-><init>()V

    iput-object v0, p0, Ld2/f1;->a:Ld2/u0;

    .line 4
    new-instance v0, Ld2/p1;

    invoke-direct {v0}, Ld2/p1;-><init>()V

    .line 5
    new-instance v0, Ld2/b2;

    invoke-direct {v0}, Ld2/b2;-><init>()V

    iput-object v0, p0, Ld2/f1;->j:Ld2/b2;

    .line 6
    invoke-virtual {v0}, Ld2/b2;->a()V

    .line 7
    new-instance v0, Ld2/p2;

    invoke-direct {v0}, Ld2/p2;-><init>()V

    iput-object v0, p0, Ld2/f1;->b:Ld2/p2;

    .line 8
    iget-object v1, v0, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 9
    new-instance v1, Ld2/l2;

    invoke-direct {v1, v0}, Ld2/l2;-><init>(Ld2/p2;)V

    const-string v3, "WebServices.download"

    invoke-static {v3, v1}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 10
    new-instance v1, Ld2/m2;

    invoke-direct {v1, v0}, Ld2/m2;-><init>(Ld2/p2;)V

    const-string v3, "WebServices.get"

    invoke-static {v3, v1}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 11
    new-instance v1, Ld2/n2;

    invoke-direct {v1, v0}, Ld2/n2;-><init>(Ld2/p2;)V

    const-string v0, "WebServices.post"

    invoke-static {v0, v1}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 12
    new-instance v0, Ld2/g2;

    invoke-direct {v0}, Ld2/g2;-><init>()V

    iput-object v0, p0, Ld2/f1;->c:Ld2/g2;

    .line 13
    new-instance v1, Ld2/f2;

    invoke-direct {v1, v0}, Ld2/f2;-><init>(Ld2/g2;)V

    const-string v3, "SessionInfo.stopped"

    invoke-static {v3, v1}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 14
    new-instance v1, Ld2/k2;

    invoke-direct {v1, v0}, Ld2/k2;-><init>(Ld2/g2;)V

    iput-object v1, v0, Ld2/g2;->k:Ld2/k2;

    .line 15
    new-instance v0, Ld2/k0;

    invoke-direct {v0}, Ld2/k0;-><init>()V

    iput-object v0, p0, Ld2/f1;->d:Ld2/k0;

    .line 16
    invoke-virtual {v0}, Ld2/k0;->g()V

    .line 17
    new-instance v0, Ld2/e2;

    invoke-direct {v0}, Ld2/e2;-><init>()V

    iput-object v0, p0, Ld2/f1;->e:Ld2/e2;

    .line 18
    new-instance v0, Ld2/h3;

    invoke-direct {v0}, Ld2/h3;-><init>()V

    iput-object v0, p0, Ld2/f1;->f:Ld2/h3;

    .line 19
    invoke-virtual {v0}, Ld2/h3;->f()V

    .line 20
    new-instance v0, Ld2/h0;

    invoke-direct {v0}, Ld2/h0;-><init>()V

    iput-object v0, p0, Ld2/f1;->i:Ld2/h0;

    .line 21
    invoke-virtual {v0}, Ld2/h0;->d()V

    .line 22
    new-instance v0, Ld2/o2;

    invoke-direct {v0}, Ld2/o2;-><init>()V

    iput-object v0, p0, Ld2/f1;->h:Ld2/o2;

    .line 23
    invoke-virtual {v0}, Ld2/o2;->a()Z

    .line 24
    new-instance v0, Ld2/e3;

    invoke-direct {v0}, Ld2/e3;-><init>()V

    iput-object v0, p0, Ld2/f1;->g:Ld2/e3;

    .line 25
    invoke-virtual {v0}, Ld2/e3;->a()V

    .line 26
    new-instance v0, Ld2/d1;

    invoke-direct {v0}, Ld2/d1;-><init>()V

    iput-object v0, p0, Ld2/f1;->k:Ld2/d1;

    .line 27
    new-instance v0, Ld2/j3;

    invoke-direct {v0}, Ld2/j3;-><init>()V

    iput-object v0, p0, Ld2/f1;->m:Ld2/j3;

    .line 28
    iget-object v0, p0, Ld2/f1;->k:Ld2/d1;

    .line 29
    invoke-virtual {v0}, Ld2/d1;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ld2/d1;->c:Ljava/lang/String;

    .line 30
    new-instance v1, Ld2/a1;

    invoke-direct {v1, v0}, Ld2/a1;-><init>(Ld2/d1;)V

    const-string v3, "Network.start_notifications"

    invoke-static {v3, v1}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 31
    new-instance v1, Ld2/b1;

    invoke-direct {v1, v0}, Ld2/b1;-><init>(Ld2/d1;)V

    const-string v0, "Network.stop_notifications"

    invoke-static {v0, v1}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 32
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    .line 33
    invoke-static {v0, p1}, Ld2/b;->b(Landroid/content/Context;Ld2/l;)V

    const/4 p1, 0x0

    if-nez p2, :cond_3

    .line 34
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld2/f1;->h:Ld2/o2;

    .line 35
    iget-object v1, v1, Ld2/o2;->a:Ljava/lang/String;

    const-string v3, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    .line 36
    invoke-static {v0, v1, v3}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    iput-boolean p2, p0, Ld2/f1;->G:Z

    .line 37
    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ld2/f1;->h:Ld2/o2;

    .line 38
    iget-object v1, v1, Ld2/o2;->a:Ljava/lang/String;

    const-string v3, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    .line 39
    invoke-static {v0, v1, v3}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    .line 40
    iget-boolean v0, p0, Ld2/f1;->G:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ld2/f1;->h:Ld2/o2;

    .line 41
    iget-object v0, v0, Ld2/o2;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld2/e4;->q(Ljava/lang/String;)Ld2/f4;

    move-result-object p2

    const-string v0, "sdkVersion"

    .line 43
    invoke-virtual {p2, v0}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 44
    iget-object v0, p0, Ld2/f1;->j:Ld2/b2;

    .line 45
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "4.6.5"

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Ld2/f1;->F:Z

    .line 47
    invoke-static {}, Ld2/d3;->d()Ld2/d3;

    move-result-object p2

    new-instance v0, Ld2/f1$m;

    invoke-direct {v0, p0}, Ld2/f1$m;-><init>(Ld2/f1;)V

    .line 48
    iput-object v0, p2, Ld2/d3;->d:Ld2/d3$b;

    .line 49
    iget-boolean p2, p0, Ld2/f1;->G:Z

    if-eqz p2, :cond_1

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ld2/f1;->h:Ld2/o2;

    .line 51
    iget-object v0, v0, Ld2/o2;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld2/e4;->q(Ljava/lang/String;)Ld2/f4;

    move-result-object p2

    iput-object p2, p0, Ld2/f1;->t:Ld2/f4;

    .line 53
    invoke-virtual {p0, p2}, Ld2/f1;->k(Ld2/f4;)V

    .line 54
    :cond_1
    iget-boolean p2, p0, Ld2/f1;->F:Z

    .line 55
    invoke-virtual {p0, p2, p1}, Ld2/f1;->j(ZZ)Z

    .line 56
    sget-object p2, Ld2/t;->a:Landroid/content/Context;

    if-eqz p2, :cond_3

    .line 57
    iget-object v0, p0, Ld2/f1;->N:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_3

    .line 58
    new-instance v0, Ld2/n1;

    invoke-direct {v0, p0}, Ld2/n1;-><init>(Ld2/f1;)V

    iput-object v0, p0, Ld2/f1;->N:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 59
    instance-of v0, p2, Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 60
    check-cast p2, Landroid/app/Application;

    goto :goto_1

    .line 61
    :cond_2
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    .line 62
    :goto_1
    iget-object v0, p0, Ld2/f1;->N:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 63
    :cond_3
    new-instance p2, Ld2/f1$q;

    invoke-direct {p2, p0}, Ld2/f1$q;-><init>(Ld2/f1;)V

    const-string v0, "Module.load"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 64
    new-instance p2, Ld2/f1$r;

    invoke-direct {p2, p0}, Ld2/f1$r;-><init>(Ld2/f1;)V

    const-string v0, "Module.unload"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 65
    new-instance p2, Ld2/f1$s;

    invoke-direct {p2, p0}, Ld2/f1$s;-><init>(Ld2/f1;)V

    const-string v0, "AdColony.on_configured"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 66
    new-instance p2, Ld2/f1$t;

    invoke-direct {p2, p0}, Ld2/f1$t;-><init>(Ld2/f1;)V

    const-string v0, "AdColony.get_app_info"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 67
    new-instance p2, Ld2/f1$u;

    invoke-direct {p2, p0}, Ld2/f1$u;-><init>(Ld2/f1;)V

    const-string v0, "AdColony.v4vc_reward"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 68
    new-instance p2, Ld2/f1$a;

    invoke-direct {p2, p0}, Ld2/f1$a;-><init>(Ld2/f1;)V

    const-string v0, "AdColony.zone_info"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 69
    new-instance p2, Ld2/f1$c;

    invoke-direct {p2, p0}, Ld2/f1$c;-><init>(Ld2/f1;)V

    const-string v0, "AdColony.probe_launch_server"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 70
    new-instance p2, Ld2/f1$f;

    invoke-direct {p2, p0}, Ld2/f1$f;-><init>(Ld2/f1;)V

    const-string v0, "Crypto.sha1"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 71
    new-instance p2, Ld2/f1$b;

    invoke-direct {p2, p0}, Ld2/f1$b;-><init>(Ld2/f1;)V

    const-string v0, "Crypto.crc32"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 72
    new-instance p2, Ld2/f1$d;

    invoke-direct {p2, p0}, Ld2/f1$d;-><init>(Ld2/f1;)V

    const-string v0, "Crypto.uuid"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 73
    new-instance p2, Ld2/f1$e;

    invoke-direct {p2, p0}, Ld2/f1$e;-><init>(Ld2/f1;)V

    const-string v0, "Device.query_advertiser_info"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 74
    new-instance p2, Ld2/f1$g;

    invoke-direct {p2, p0}, Ld2/f1$g;-><init>(Ld2/f1;)V

    const-string v0, "AdColony.controller_version"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 75
    new-instance p2, Ld2/f1$h;

    invoke-direct {p2, p0}, Ld2/f1$h;-><init>(Ld2/f1;)V

    const-string v0, "AdColony.provide_signals"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 76
    new-instance p2, Ld2/f1$i;

    invoke-direct {p2, p0}, Ld2/f1$i;-><init>(Ld2/f1;)V

    const-string v0, "AdColony.odt_calculate"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 77
    new-instance p2, Ld2/f1$j;

    invoke-direct {p2, p0}, Ld2/f1$j;-><init>(Ld2/f1;)V

    const-string v0, "AdColony.odt_cache"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 78
    new-instance p2, Ld2/f1$k;

    invoke-direct {p2, p0}, Ld2/f1$k;-><init>(Ld2/f1;)V

    const-string v0, "AdColony.heartbeat"

    invoke-static {v0, p2}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 79
    iget-object p2, p0, Ld2/f1;->h:Ld2/o2;

    const/4 v0, 0x2

    .line 80
    :try_start_0
    sget-object v1, Ld2/t;->a:Landroid/content/Context;

    if-eqz v1, :cond_8

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 83
    iget-wide v3, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int p1, v3

    .line 84
    invoke-virtual {p2}, Ld2/o2;->c()Ld2/f4;

    move-result-object v1

    const-string v3, "last_update"

    .line 85
    iget-object v4, v1, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :try_start_1
    invoke-virtual {v1}, Ld2/f4;->d()Ljava/util/Iterator;

    move-result-object v5

    .line 87
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 88
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    .line 89
    :goto_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_7

    :try_start_2
    const-string v3, "last_update"

    .line 90
    invoke-static {v1, v3}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eq v3, p1, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    const/4 v3, 0x1

    const/4 v4, 0x2

    :goto_3
    if-eqz v3, :cond_9

    :try_start_3
    const-string v3, "last_update"

    .line 91
    invoke-static {v1, v3, p1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    iget-object p2, p2, Ld2/o2;->a:Ljava/lang/String;

    .line 94
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "AppVersion"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ld2/e4;->s(Ld2/f4;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    nop

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 95
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_8
    const/4 v4, 0x0

    :cond_9
    :goto_4
    if-ne v4, v2, :cond_a

    const/4 p1, 0x1

    goto :goto_5

    :cond_a
    const/4 p1, 0x0

    .line 96
    :goto_5
    iput-boolean p1, p0, Ld2/f1;->I:Z

    if-ne v4, v0, :cond_b

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    .line 97
    :goto_6
    iput-boolean v2, p0, Ld2/f1;->J:Z

    .line 98
    new-instance p1, Ld2/f1$l;

    invoke-direct {p1, p0}, Ld2/f1$l;-><init>(Ld2/f1;)V

    invoke-static {p1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public h(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/f1;->a:Ld2/u0;

    invoke-virtual {v0, p1}, Ld2/u0;->a(I)Ld2/z0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ld2/f1;->v:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld2/x3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean v2, p1, Ld2/x3;->F:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 4
    :cond_1
    new-instance v2, Ld2/f1$o;

    invoke-direct {v2, p0, p1}, Ld2/f1$o;-><init>(Ld2/f1;Ld2/x3;)V

    if-eqz v1, :cond_3

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 7
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v2}, Ld2/f1$o;->run()V

    :goto_0
    return v0
.end method

.method public i(Landroid/content/Context;Ld2/t0;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, ""

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v3

    .line 2
    iget-object v3, v3, Ld2/h0;->d:Ld2/d2;

    const/4 v4, 0x1

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Advertising ID is not available. Collecting Android ID instead of Advertising ID."

    .line 6
    invoke-static {v0, v4, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ld2/f1;->m()Ld2/b2;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Ld2/t;->a:Landroid/content/Context;

    if-nez p1, :cond_2

    const-string p1, ""

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "advertising_id"

    .line 10
    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 11
    invoke-virtual {p0}, Ld2/f1;->m()Ld2/b2;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p1, Ld2/t;->a:Landroid/content/Context;

    if-nez p1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v5, "limit_ad_tracking"

    .line 14
    invoke-static {p1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :catch_1
    const-string p1, "Google Play Services is out of date, please update to GPS 4.0+. Collecting Android ID instead of Advertising ID."

    .line 15
    invoke-static {v0, v4, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :catch_2
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 16
    :goto_2
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "Amazon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v2, :cond_5

    return v0

    :cond_5
    const-string v0, "Amazon"

    .line 17
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    .line 20
    :cond_6
    invoke-virtual {p0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    .line 21
    iput-object v1, v0, Ld2/b2;->a:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 22
    iget-object v0, v3, Ld2/d2;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v1

    .line 23
    iget-object v1, v1, Ld2/b2;->a:Ljava/lang/String;

    const-string v2, "advertisingId"

    .line 24
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_7
    invoke-virtual {p0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    .line 26
    iput-boolean p1, v0, Ld2/b2;->c:Z

    .line 27
    invoke-virtual {p0}, Ld2/f1;->m()Ld2/b2;

    move-result-object p1

    .line 28
    iget-object p1, p1, Ld2/b2;->b:Ld2/x0;

    .line 29
    monitor-enter p1

    .line 30
    :try_start_2
    iput-boolean v4, p1, Ld2/x0;->a:Z

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    if-eqz p2, :cond_8

    .line 32
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 33
    invoke-virtual {p0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    .line 34
    iget-object v0, v0, Ld2/b2;->a:Ljava/lang/String;

    const-string v1, "advertiser_id"

    .line 35
    invoke-static {p1, v1, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    invoke-virtual {p0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    .line 37
    iget-boolean v0, v0, Ld2/b2;->c:Z

    const-string v1, "limit_ad_tracking"

    .line 38
    invoke-static {p1, v1, v0, p2, p1}, La6/d;->h(Ld2/f4;Ljava/lang/String;ZLd2/t0;Ld2/f4;)V

    :cond_8
    return v4

    :catchall_0
    move-exception p2

    .line 39
    monitor-exit p1

    throw p2

    :catch_3
    const-string p1, "Google Play Services ads dependencies are missing. Collecting Android ID instead of Advertising ID."

    .line 40
    invoke-static {v0, v4, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return v0
.end method

.method public final j(ZZ)Z
    .locals 1

    .line 1
    invoke-static {}, Ld2/t;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput-boolean p2, p0, Ld2/f1;->H:Z

    .line 3
    iput-boolean p1, p0, Ld2/f1;->F:Z

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 4
    iget-object p1, p0, Ld2/f1;->a:Ld2/u0;

    invoke-virtual {p1}, Ld2/u0;->b()V

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Ld2/g1;

    invoke-direct {p2, p0}, Ld2/g1;-><init>(Ld2/f1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public final k(Ld2/f4;)V
    .locals 8

    .line 1
    sget-boolean v0, Ld2/x3;->R:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "logging"

    .line 2
    invoke-virtual {p1, v0}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v0

    const-string v3, "send_level"

    .line 3
    invoke-static {v0, v3, v2}, Ld2/e4;->a(Ld2/f4;Ljava/lang/String;I)I

    move-result v3

    sput v3, Ld2/h0;->g:I

    const-string v3, "log_private"

    .line 4
    invoke-static {v0, v3}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Ld2/h0;->e:Z

    const-string v3, "print_level"

    const/4 v4, 0x3

    .line 5
    invoke-static {v0, v3, v4}, Ld2/e4;->a(Ld2/f4;Ljava/lang/String;I)I

    move-result v3

    sput v3, Ld2/h0;->f:I

    .line 6
    iget-object v3, p0, Ld2/f1;->i:Ld2/h0;

    const-string v4, "modules"

    invoke-static {v0, v4}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object v0

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v4, Ld2/f4;

    invoke-direct {v4}, Ld2/f4;-><init>()V

    const/4 v5, 0x0

    .line 8
    :goto_0
    invoke-virtual {v0}, Ld2/d4;->c()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 9
    invoke-virtual {v0, v5}, Ld2/d4;->d(I)Ld2/f4;

    move-result-object v6

    const-string v7, "id"

    .line 10
    invoke-static {v6, v7}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v7

    .line 11
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v6}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iput-object v4, v3, Ld2/h0;->a:Ld2/f4;

    :cond_1
    const-string v0, "metadata"

    .line 13
    invoke-virtual {p1, v0}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v3

    .line 15
    iput-object v0, v3, Ld2/b2;->d:Ld2/f4;

    .line 16
    invoke-virtual {p0}, Ld2/f1;->a()Ld2/g2;

    move-result-object v3

    const-string v4, "session_timeout"

    invoke-static {v0, v4}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_2

    .line 17
    iget-wide v4, v3, Ld2/g2;->a:J

    goto :goto_1

    :cond_2
    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    .line 18
    :goto_1
    iput-wide v4, v3, Ld2/g2;->a:J

    const-string v3, "pie"

    .line 19
    invoke-virtual {p1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    sput-object v3, Ld2/f1;->Y:Ljava/lang/String;

    const-string v3, "controller"

    .line 21
    invoke-virtual {p1, v3}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object p1

    const-string v3, "version"

    .line 22
    invoke-virtual {p1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    iput-object p1, p0, Ld2/f1;->z:Ljava/lang/String;

    .line 24
    iget-wide v3, p0, Ld2/f1;->Q:J

    const-string p1, "signals_timeout"

    invoke-static {v0, p1, v3, v4}, Ld2/e4;->b(Ld2/f4;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Ld2/f1;->Q:J

    .line 25
    iget-wide v3, p0, Ld2/f1;->R:J

    const-string p1, "calculate_odt_timeout"

    invoke-static {v0, p1, v3, v4}, Ld2/e4;->b(Ld2/f4;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Ld2/f1;->R:J

    .line 26
    iget-boolean p1, p0, Ld2/f1;->S:Z

    const-string v3, "async_odt_query"

    .line 27
    iget-object v4, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v4

    .line 28
    :try_start_0
    iget-object v5, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v3, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iput-boolean p1, p0, Ld2/f1;->S:Z

    .line 30
    iget-wide v3, p0, Ld2/f1;->T:J

    const-string p1, "ad_request_timeout"

    invoke-static {v0, p1, v3, v4}, Ld2/e4;->b(Ld2/f4;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Ld2/f1;->T:J

    .line 31
    iget-wide v3, p0, Ld2/f1;->U:J

    const-string p1, "controller_heartbeat_interval"

    invoke-static {v0, p1, v3, v4}, Ld2/e4;->b(Ld2/f4;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Ld2/f1;->U:J

    .line 32
    iget-wide v3, p0, Ld2/f1;->V:J

    const-string p1, "controller_heartbeat_timeout"

    invoke-static {v0, p1, v3, v4}, Ld2/e4;->b(Ld2/f4;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Ld2/f1;->V:J

    .line 33
    invoke-static {}, Ld2/d3;->d()Ld2/d3;

    move-result-object p1

    const-string v3, "odt_config"

    invoke-virtual {v0, v3}, Ld2/f4;->m(Ljava/lang/String;)Ld2/f4;

    move-result-object v0

    new-instance v3, Ld2/f1$p;

    invoke-direct {v3, p0}, Ld2/f1$p;-><init>(Ld2/f1;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Ld2/t;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 35
    sget-object v4, Ld2/t;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 37
    :try_start_1
    iget-object v5, p1, Ld2/d3;->a:Ljava/util/concurrent/Executor;

    new-instance v6, Ld2/c3;

    invoke-direct {v6, p1, v0, v3, v4}, Ld2/c3;-><init>(Ld2/d3;Ld2/f4;Ld2/a;Landroid/content/Context;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADCEventsRepository.open failed with: "

    .line 39
    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-static {v1, v1, p1, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_4
    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 44
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public l()Ld2/k0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f1;->d:Ld2/k0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/k0;

    invoke-direct {v0}, Ld2/k0;-><init>()V

    iput-object v0, p0, Ld2/f1;->d:Ld2/k0;

    .line 3
    invoke-virtual {v0}, Ld2/k0;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, Ld2/f1;->d:Ld2/k0;

    return-object v0
.end method

.method public m()Ld2/b2;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f1;->j:Ld2/b2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/b2;

    invoke-direct {v0}, Ld2/b2;-><init>()V

    iput-object v0, p0, Ld2/f1;->j:Ld2/b2;

    .line 3
    invoke-virtual {v0}, Ld2/b2;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Ld2/f1;->j:Ld2/b2;

    return-object v0
.end method

.method public n()Ld2/e2;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f1;->e:Ld2/e2;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/e2;

    invoke-direct {v0}, Ld2/e2;-><init>()V

    iput-object v0, p0, Ld2/f1;->e:Ld2/e2;

    .line 3
    :cond_0
    iget-object v0, p0, Ld2/f1;->e:Ld2/e2;

    return-object v0
.end method

.method public o()Ld2/h3;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f1;->f:Ld2/h3;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/h3;

    invoke-direct {v0}, Ld2/h3;-><init>()V

    iput-object v0, p0, Ld2/f1;->f:Ld2/h3;

    .line 3
    invoke-virtual {v0}, Ld2/h3;->f()V

    .line 4
    :cond_0
    iget-object v0, p0, Ld2/f1;->f:Ld2/h3;

    return-object v0
.end method

.method public p()Ld2/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f1;->i:Ld2/h0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/h0;

    invoke-direct {v0}, Ld2/h0;-><init>()V

    iput-object v0, p0, Ld2/f1;->i:Ld2/h0;

    .line 3
    invoke-virtual {v0}, Ld2/h0;->d()V

    .line 4
    :cond_0
    iget-object v0, p0, Ld2/f1;->i:Ld2/h0;

    return-object v0
.end method

.method public q()Ld2/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f1;->a:Ld2/u0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/u0;

    invoke-direct {v0}, Ld2/u0;-><init>()V

    iput-object v0, p0, Ld2/f1;->a:Ld2/u0;

    .line 3
    invoke-virtual {v0}, Ld2/u0;->b()V

    .line 4
    :cond_0
    iget-object v0, p0, Ld2/f1;->a:Ld2/u0;

    return-object v0
.end method

.method public r()Ld2/d1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f1;->k:Ld2/d1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/d1;

    invoke-direct {v0}, Ld2/d1;-><init>()V

    iput-object v0, p0, Ld2/f1;->k:Ld2/d1;

    .line 3
    :cond_0
    iget-object v0, p0, Ld2/f1;->k:Ld2/d1;

    return-object v0
.end method

.method public s()Ld2/l;
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/f1;->r:Ld2/l;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ld2/l;

    invoke-direct {v0}, Ld2/l;-><init>()V

    iput-object v0, p0, Ld2/f1;->r:Ld2/l;

    .line 3
    :cond_0
    iget-object v0, p0, Ld2/f1;->r:Ld2/l;

    return-object v0
.end method
