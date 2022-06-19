.class public final Lcom/google/android/gms/internal/ads/cjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Lcom/google/android/gms/internal/ads/amh;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cik;

.field private b:Lcom/google/android/gms/internal/ads/cjn;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/ads/csa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/csa",
            "<",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private d:Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private e:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/cir;

.field private final g:Lcom/google/android/gms/internal/ads/cjo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cjo",
            "<TAdT;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/ads/cjn;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/internal/ads/crh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/crh",
            "<",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cir;Lcom/google/android/gms/internal/ads/cik;Lcom/google/android/gms/internal/ads/cjo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cir;",
            "Lcom/google/android/gms/internal/ads/cik;",
            "Lcom/google/android/gms/internal/ads/cjo",
            "<TAdT;>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/ciw;->e:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/cjh;->e:I

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/cjm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cjm;-><init>(Lcom/google/android/gms/internal/ads/cjh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->i:Lcom/google/android/gms/internal/ads/crh;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cjh;->f:Lcom/google/android/gms/internal/ads/cir;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cjh;->a:Lcom/google/android/gms/internal/ads/cik;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cjh;->g:Lcom/google/android/gms/internal/ads/cjo;

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->h:Ljava/util/LinkedList;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->a:Lcom/google/android/gms/internal/ads/cik;

    new-instance v1, Lcom/google/android/gms/internal/ads/cjj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cjj;-><init>(Lcom/google/android/gms/internal/ads/cjh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cik;->a(Lcom/google/android/gms/internal/ads/cin;)V

    .line 10
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cjh;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/google/android/gms/internal/ads/cjh;->e:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/cjo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->g:Lcom/google/android/gms/internal/ads/cjo;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cjh;Lcom/google/android/gms/internal/ads/cjn;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cjh;->c(Lcom/google/android/gms/internal/ads/cjn;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/cjh;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/cjh;->e:I

    return v0
.end method

.method private final b()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->d:Lcom/google/android/gms/internal/ads/crt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->d:Lcom/google/android/gms/internal/ads/crt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/crt;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/cjn;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->b:Lcom/google/android/gms/internal/ads/cjn;

    return-object v0
.end method

.method private final c(Lcom/google/android/gms/internal/ads/cjn;)V
    .locals 3

    .prologue
    .line 24
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cjh;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    :goto_1
    return-void

    .line 28
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    :cond_2
    if-nez p1, :cond_4

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cjn;

    .line 32
    :goto_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cjn;->b()Lcom/google/android/gms/internal/ads/cjb;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjh;->f:Lcom/google/android/gms/internal/ads/cir;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cjn;->b()Lcom/google/android/gms/internal/ads/cjb;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/cir;->b(Lcom/google/android/gms/internal/ads/cjb;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cjn;->c()Lcom/google/android/gms/internal/ads/cjn;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cjh;->b:Lcom/google/android/gms/internal/ads/cjn;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/csa;->h()Lcom/google/android/gms/internal/ads/csa;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cjh;->c:Lcom/google/android/gms/internal/ads/csa;

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjh;->g:Lcom/google/android/gms/internal/ads/cjo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cjh;->b:Lcom/google/android/gms/internal/ads/cjn;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/cjo;->a(Lcom/google/android/gms/internal/ads/cjn;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cjh;->d:Lcom/google/android/gms/internal/ads/crt;

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjh;->d:Lcom/google/android/gms/internal/ads/crt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cjh;->i:Lcom/google/android/gms/internal/ads/crh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cjn;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 37
    :cond_3
    const/4 p1, 0x0

    goto :goto_0

    :cond_4
    move-object v0, p1

    goto :goto_2
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/cir;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->f:Lcom/google/android/gms/internal/ads/cir;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/cjh;)Lcom/google/android/gms/internal/ads/csa;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->c:Lcom/google/android/gms/internal/ads/csa;

    return-object v0
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/ads/ciy;)Lcom/google/android/gms/internal/ads/crt;
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cjl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjh;->b:Lcom/google/android/gms/internal/ads/cjn;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/cjl;-><init>(Lcom/google/android/gms/internal/ads/ciy;Lcom/google/android/gms/internal/ads/cjn;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic a()V
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->b:Lcom/google/android/gms/internal/ads/cjn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cjh;->c(Lcom/google/android/gms/internal/ads/cjn;)V

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cjn;)V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/cjn;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cjn;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cjl",
            "<TAdT;>;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 13
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cjh;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 15
    :cond_1
    :try_start_1
    sget v1, Lcom/google/android/gms/internal/ads/ciw;->g:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/cjh;->e:I

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjh;->b:Lcom/google/android/gms/internal/ads/cjn;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cjn;->b()Lcom/google/android/gms/internal/ads/cjb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cjn;->b()Lcom/google/android/gms/internal/ads/cjb;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cjh;->b:Lcom/google/android/gms/internal/ads/cjn;

    .line 18
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cjn;->b()Lcom/google/android/gms/internal/ads/cjb;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cjn;->b()Lcom/google/android/gms/internal/ads/cjb;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/cjb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    sget v0, Lcom/google/android/gms/internal/ads/ciw;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/cjh;->e:I

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjh;->c:Lcom/google/android/gms/internal/ads/csa;

    new-instance v1, Lcom/google/android/gms/internal/ads/cjk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cjk;-><init>(Lcom/google/android/gms/internal/ads/cjh;)V

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cjn;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 23
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/cqt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
