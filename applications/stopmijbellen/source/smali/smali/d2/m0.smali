.class public Ld2/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ld2/t0;

.field public final synthetic c:Ld2/k;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ld2/k0;


# direct methods
.method public constructor <init>(Ld2/k0;Landroid/content/Context;Ld2/t0;Ld2/k;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/m0;->e:Ld2/k0;

    iput-object p2, p0, Ld2/m0;->a:Landroid/content/Context;

    iput-object p3, p0, Ld2/m0;->b:Ld2/t0;

    iput-object p4, p0, Ld2/m0;->c:Ld2/k;

    iput-object p5, p0, Ld2/m0;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ld2/j;

    iget-object v1, p0, Ld2/m0;->a:Landroid/content/Context;

    iget-object v2, p0, Ld2/m0;->b:Ld2/t0;

    iget-object v3, p0, Ld2/m0;->c:Ld2/k;

    invoke-direct {v0, v1, v2, v3}, Ld2/j;-><init>(Landroid/content/Context;Ld2/t0;Ld2/k;)V

    .line 2
    iget-object v1, p0, Ld2/m0;->e:Ld2/k0;

    .line 3
    iget-object v1, v1, Ld2/k0;->g:Ljava/lang/Object;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Ld2/m0;->e:Ld2/k0;

    .line 6
    iget-object v2, v2, Ld2/k0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    iget-object v3, p0, Ld2/m0;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 8
    monitor-exit v1

    return-void

    .line 9
    :cond_0
    iget-object v2, p0, Ld2/m0;->e:Ld2/k0;

    .line 10
    iget-object v2, v2, Ld2/k0;->f:Ljava/util/Map;

    .line 11
    iget-object v3, p0, Ld2/m0;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v1, p0, Ld2/m0;->c:Ld2/k;

    .line 14
    iget-object v1, v1, Ld2/k;->c:Ld2/t1;

    .line 15
    invoke-virtual {v0, v1}, Ld2/j;->setOmidManager(Ld2/t1;)V

    .line 16
    iget-object v1, v0, Ld2/j;->i:Ld2/t1;

    if-eqz v1, :cond_1

    .line 17
    invoke-virtual {v0}, Ld2/j;->getWebView()Ld2/x3;

    move-result-object v1

    invoke-virtual {v1}, Ld2/x3;->u()V

    .line 18
    :cond_1
    iget-object v1, p0, Ld2/m0;->c:Ld2/k;

    const/4 v2, 0x0

    .line 19
    iput-object v2, v1, Ld2/k;->c:Ld2/t1;

    .line 20
    invoke-virtual {v1, v0}, Ld2/k;->e(Ld2/j;)V

    return-void

    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
