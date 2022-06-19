.class public final Lj4/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lp6/c;


# instance fields
.field public final a:Lj4/w;

.field public final b:Lo4/p;

.field public final c:Lj4/t;

.field public final d:Lo4/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp6/c;

    const-string v1, "AssetPackManager"

    invoke-direct {v0, v1}, Lp6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lj4/f2;->e:Lp6/c;

    return-void
.end method

.method public constructor <init>(Lj4/w;Lo4/p;Lj4/t;Lq4/a;Lj4/b1;Lj4/r0;Lj4/f0;Lo4/p;Ll4/b;Lj4/r1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lj4/f2;->a:Lj4/w;

    iput-object p2, p0, Lj4/f2;->b:Lo4/p;

    iput-object p3, p0, Lj4/f2;->c:Lj4/t;

    iput-object p8, p0, Lj4/f2;->d:Lo4/p;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj4/f2;->c:Lj4/t;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lp4/c;->e:Lp4/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 3
    iget-object v0, p0, Lj4/f2;->c:Lj4/t;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_1
    iput-boolean p1, v0, Lp4/c;->f:Z

    invoke-virtual {v0}, Lp4/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 6
    iget-object p1, p0, Lj4/f2;->d:Lo4/p;

    invoke-interface {p1}, Lo4/p;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    new-instance v0, Li2/z;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Li2/z;-><init>(Ljava/lang/Object;I)V

    .line 7
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1

    :catchall_1
    move-exception p1

    .line 9
    monitor-exit v0

    throw p1
.end method
