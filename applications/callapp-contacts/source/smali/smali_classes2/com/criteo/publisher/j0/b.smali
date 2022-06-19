.class public Lcom/criteo/publisher/j0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/j0/b$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/criteo/publisher/model/p;

.field public final b:Lcom/criteo/publisher/h;

.field public final c:Lcom/criteo/publisher/j0/g;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/criteo/publisher/model/n;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/Object;

.field private final g:Lcom/criteo/publisher/model/x;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/model/p;Lcom/criteo/publisher/model/x;Lcom/criteo/publisher/h;Lcom/criteo/publisher/j0/g;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/j0/b;->f:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/criteo/publisher/j0/b;->a:Lcom/criteo/publisher/model/p;

    .line 72
    iput-object p2, p0, Lcom/criteo/publisher/j0/b;->g:Lcom/criteo/publisher/model/x;

    .line 73
    iput-object p3, p0, Lcom/criteo/publisher/j0/b;->b:Lcom/criteo/publisher/h;

    .line 74
    iput-object p4, p0, Lcom/criteo/publisher/j0/b;->c:Lcom/criteo/publisher/j0/g;

    .line 75
    iput-object p5, p0, Lcom/criteo/publisher/j0/b;->d:Ljava/util/concurrent/Executor;

    .line 76
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/j0/b;->e:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/j0/b;)Lcom/criteo/publisher/model/x;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/criteo/publisher/j0/b;->g:Lcom/criteo/publisher/model/x;

    return-object p0
.end method

.method static synthetic a(Lcom/criteo/publisher/j0/b;Ljava/util/List;)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/j0/b;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/criteo/publisher/j0/b;)Lcom/criteo/publisher/j0/g;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/criteo/publisher/j0/b;->c:Lcom/criteo/publisher/j0/g;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/criteo/publisher/j0/b;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/j0/b;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 167
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
