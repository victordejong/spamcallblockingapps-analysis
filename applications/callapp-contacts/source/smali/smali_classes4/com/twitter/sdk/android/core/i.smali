.class public final Lcom/twitter/sdk/android/core/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twitter/sdk/android/core/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/l;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/internal/b/a;

.field private final b:Lcom/twitter/sdk/android/core/internal/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/b/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/internal/b/c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/twitter/sdk/android/core/internal/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/b/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/b/a;Lcom/twitter/sdk/android/core/internal/b/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/b/a;",
            "Lcom/twitter/sdk/android/core/internal/b/d<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    new-instance v5, Lcom/twitter/sdk/android/core/internal/b/c;

    invoke-direct {v5, p1, p2, p3}, Lcom/twitter/sdk/android/core/internal/b/c;-><init>(Lcom/twitter/sdk/android/core/internal/b/a;Lcom/twitter/sdk/android/core/internal/b/d;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/i;-><init>(Lcom/twitter/sdk/android/core/internal/b/a;Lcom/twitter/sdk/android/core/internal/b/d;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/internal/b/c;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/internal/b/a;Lcom/twitter/sdk/android/core/internal/b/d;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/twitter/sdk/android/core/internal/b/c;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/internal/b/a;",
            "Lcom/twitter/sdk/android/core/internal/b/d<",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "TT;>;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/twitter/sdk/android/core/internal/b/c<",
            "TT;>;>;",
            "Lcom/twitter/sdk/android/core/internal/b/c<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/twitter/sdk/android/core/i;->h:Z

    .line 59
    iput-object p1, p0, Lcom/twitter/sdk/android/core/i;->a:Lcom/twitter/sdk/android/core/internal/b/a;

    .line 60
    iput-object p2, p0, Lcom/twitter/sdk/android/core/i;->b:Lcom/twitter/sdk/android/core/internal/b/d;

    .line 61
    iput-object p3, p0, Lcom/twitter/sdk/android/core/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    iput-object p4, p0, Lcom/twitter/sdk/android/core/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    iput-object p5, p0, Lcom/twitter/sdk/android/core/i;->e:Lcom/twitter/sdk/android/core/internal/b/c;

    .line 64
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    iput-object p6, p0, Lcom/twitter/sdk/android/core/i;->g:Ljava/lang/String;

    return-void
.end method

.method private a(JLcom/twitter/sdk/android/core/l;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;Z)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/b/c;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/twitter/sdk/android/core/internal/b/c;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/i;->a:Lcom/twitter/sdk/android/core/internal/b/a;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/i;->b:Lcom/twitter/sdk/android/core/internal/b/d;

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/i;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/b/c;-><init>(Lcom/twitter/sdk/android/core/internal/b/a;Lcom/twitter/sdk/android/core/internal/b/d;Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/twitter/sdk/android/core/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    invoke-virtual {v0, p3}, Lcom/twitter/sdk/android/core/internal/b/c;->a(Ljava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/l;

    if-eqz v0, :cond_2

    .line 7046
    iget-wide v1, v0, Lcom/twitter/sdk/android/core/l;->b:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 180
    :cond_2
    :goto_0
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object p1, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    iget-object p1, p0, Lcom/twitter/sdk/android/core/i;->e:Lcom/twitter/sdk/android/core/internal/b/c;

    invoke-virtual {p1, p3}, Lcom/twitter/sdk/android/core/internal/b/c;->a(Ljava/lang/Object;)V

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(J)Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/sdk/android/core/i;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/i;->h:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/i;->e()V

    :cond_0
    return-void
.end method

.method private declared-synchronized e()V
    .locals 5

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/twitter/sdk/android/core/i;->h:Z

    if-eqz v0, :cond_3

    .line 1099
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->e:Lcom/twitter/sdk/android/core/internal/b/c;

    .line 2045
    iget-object v1, v0, Lcom/twitter/sdk/android/core/internal/b/c;->a:Lcom/twitter/sdk/android/core/internal/b/a;

    invoke-interface {v1}, Lcom/twitter/sdk/android/core/internal/b/a;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2046
    iget-object v2, v0, Lcom/twitter/sdk/android/core/internal/b/c;->b:Lcom/twitter/sdk/android/core/internal/b/d;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/b/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/twitter/sdk/android/core/internal/b/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1099
    check-cast v0, Lcom/twitter/sdk/android/core/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3046
    iget-wide v2, v0, Lcom/twitter/sdk/android/core/l;->b:J

    .line 1101
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/twitter/sdk/android/core/i;->a(JLcom/twitter/sdk/android/core/l;Z)V

    .line 3086
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->a:Lcom/twitter/sdk/android/core/internal/b/a;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/internal/b/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 3087
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3088
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3106
    iget-object v4, p0, Lcom/twitter/sdk/android/core/i;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3089
    iget-object v3, p0, Lcom/twitter/sdk/android/core/i;->b:Lcom/twitter/sdk/android/core/internal/b/d;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lcom/twitter/sdk/android/core/internal/b/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/l;

    if-eqz v2, :cond_1

    .line 4046
    iget-wide v3, v2, Lcom/twitter/sdk/android/core/l;->b:J

    .line 3091
    invoke-direct {p0, v3, v4, v2, v1}, Lcom/twitter/sdk/android/core/i;->a(JLcom/twitter/sdk/android/core/l;Z)V

    goto :goto_0

    .line 79
    :cond_2
    iput-boolean v1, p0, Lcom/twitter/sdk/android/core/i;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/twitter/sdk/android/core/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/i;->d()V

    .line 115
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/l;

    return-object v0
.end method

.method public final a(J)V
    .locals 3

    .line 196
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/i;->d()V

    .line 197
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/l;

    .line 8046
    iget-wide v0, v0, Lcom/twitter/sdk/android/core/l;->b:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 198
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->e:Lcom/twitter/sdk/android/core/internal/b/c;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/internal/b/c;->a()V

    .line 201
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 204
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/internal/b/c;

    if-eqz p1, :cond_1

    .line 207
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/b/c;->a()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/twitter/sdk/android/core/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/i;->d()V

    .line 5046
    iget-wide v0, p1, Lcom/twitter/sdk/android/core/l;->b:J

    const/4 v2, 0x1

    .line 127
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/twitter/sdk/android/core/i;->a(JLcom/twitter/sdk/android/core/l;Z)V

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()V
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/i;->d()V

    .line 136
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/l;

    .line 6046
    iget-wide v0, v0, Lcom/twitter/sdk/android/core/l;->b:J

    .line 137
    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/core/i;->a(J)V

    :cond_0
    return-void
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/i;->d()V

    .line 166
    iget-object v0, p0, Lcom/twitter/sdk/android/core/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
