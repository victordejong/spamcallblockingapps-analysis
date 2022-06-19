.class final Lcom/google/android/gms/internal/ads/cmd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cmy;

.field private final b:Lcom/google/android/gms/internal/ads/cmt;

.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/cmt;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmd;->c:Ljava/lang/Object;

    .line 3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cmd;->d:Z

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/cmd;->e:Z

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cmd;->b:Lcom/google/android/gms/internal/ads/cmt;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/cmy;

    const v5, 0xc35000

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cmy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cmd;->a:Lcom/google/android/gms/internal/ads/cmy;

    .line 7
    return-void
.end method

.method private final b()V
    .locals 2

    .prologue
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmd;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmd;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmd;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmd;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->e()V

    .line 16
    :cond_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 17
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmd;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cmd;->d:Z

    if-nez v0, :cond_0

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cmd;->d:Z

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmd;->a:Lcom/google/android/gms/internal/ads/cmy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->o()V

    .line 12
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmd;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/cmd;->e:Z

    if-eqz v0, :cond_0

    .line 20
    monitor-exit v1

    .line 32
    :goto_0
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/cmd;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmd;->a:Lcom/google/android/gms/internal/ads/cmy;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cmy;->c()Lcom/google/android/gms/internal/ads/cnf;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/cmw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cmd;->b:Lcom/google/android/gms/internal/ads/cmt;

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/cmw;-><init>([B)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/cnf;->a(Lcom/google/android/gms/internal/ads/cmw;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmd;->b()V

    .line 32
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 28
    :catch_0
    move-exception v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmd;->b()V

    goto :goto_1

    .line 30
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cmd;->b()V

    .line 31
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
