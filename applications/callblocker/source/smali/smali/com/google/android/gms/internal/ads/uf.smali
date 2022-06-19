.class public final Lcom/google/android/gms/internal/ads/uf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/common/util/e;

.field private final b:Lcom/google/android/gms/internal/ads/ur;

.field private final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/ads/ue;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private h:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private i:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private j:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private k:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private l:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private m:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/ur;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->d:Ljava/lang/Object;

    .line 3
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->g:J

    .line 4
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->h:J

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/uf;->i:Z

    .line 6
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->j:J

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/uf;->k:J

    .line 8
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->l:J

    .line 9
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->m:J

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uf;->a:Lcom/google/android/gms/common/util/e;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/uf;->b:Lcom/google/android/gms/internal/ads/ur;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/uf;->e:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/uf;->f:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->c:Ljava/util/LinkedList;

    .line 15
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/uf;)Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->a:Lcom/google/android/gms/common/util/e;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uf;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->m:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->h:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->h:J

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->b:Lcom/google/android/gms/internal/ads/ur;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ur;->a(Lcom/google/android/gms/internal/ads/uf;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->b:Lcom/google/android/gms/internal/ads/ur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ur;->b()V

    .line 30
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(J)V
    .locals 7

    .prologue
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uf;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/uf;->m:J

    .line 22
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->m:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->b:Lcom/google/android/gms/internal/ads/ur;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ur;->a(Lcom/google/android/gms/internal/ads/uf;)V

    .line 24
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

.method public final a(Lcom/google/android/gms/internal/ads/dya;)V
    .locals 4

    .prologue
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uf;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->l:J

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->b:Lcom/google/android/gms/internal/ads/ur;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->l:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/ur;->a(Lcom/google/android/gms/internal/ads/dya;J)V

    .line 19
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uf;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->m:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->j:J

    .line 50
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

.method public final b()V
    .locals 6

    .prologue
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uf;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->m:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/ue;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ue;-><init>(Lcom/google/android/gms/internal/ads/uf;)V

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ue;->c()V

    .line 35
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/uf;->c:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->k:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->k:J

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->b:Lcom/google/android/gms/internal/ads/ur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ur;->a()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->b:Lcom/google/android/gms/internal/ads/ur;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ur;->a(Lcom/google/android/gms/internal/ads/uf;)V

    .line 39
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

.method public final c()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uf;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/uf;->m:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ue;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ue;->a()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ue;->b()V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->b:Lcom/google/android/gms/internal/ads/ur;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/ur;->a(Lcom/google/android/gms/internal/ads/uf;)V

    .line 46
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

.method public final d()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/uf;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string/jumbo v0, "seq_num"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uf;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/uf;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "ismediation"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    const-string/jumbo v0, "treq"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uf;->l:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 57
    const-string/jumbo v0, "tresponse"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uf;->m:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    const-string/jumbo v0, "timp"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uf;->h:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 59
    const-string/jumbo v0, "tload"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uf;->j:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 60
    const-string/jumbo v0, "pcc"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uf;->k:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 61
    const-string/jumbo v0, "tfetch"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/uf;->g:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ue;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ue;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 66
    :cond_0
    :try_start_1
    const-string/jumbo v0, "tclick"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 67
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uf;->e:Ljava/lang/String;

    return-object v0
.end method
