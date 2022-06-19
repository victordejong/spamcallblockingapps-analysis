.class final Lcom/google/android/gms/internal/ads/ciq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cir;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/google/android/gms/internal/ads/cjb;",
            "Lcom/google/android/gms/internal/ads/cio;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/ciu;

.field private c:Lcom/google/android/gms/internal/ads/cis;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ciu;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/ciu;->d:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/cis;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cis;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->c:Lcom/google/android/gms/internal/ads/cis;

    .line 5
    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/ciy;Lcom/google/android/gms/internal/ads/cjp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<*>;",
            "Lcom/google/android/gms/internal/ads/cjp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g;->a()Lcom/google/android/gms/internal/ads/dwv$g$c;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g$a;->a()Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dwv$g$b;->a:Lcom/google/android/gms/internal/ads/dwv$g$b;

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dwv$g$a$a;->a(Lcom/google/android/gms/internal/ads/dwv$g$b;)Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g$d;->a()Lcom/google/android/gms/internal/ads/dwv$g$d$a;

    move-result-object v2

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/cjp;->a:Z

    .line 89
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dwv$g$d$a;->a(Z)Lcom/google/android/gms/internal/ads/dwv$g$d$a;

    move-result-object v2

    iget v3, p2, Lcom/google/android/gms/internal/ads/cjp;->b:I

    .line 90
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dwv$g$d$a;->a(I)Lcom/google/android/gms/internal/ads/dwv$g$d$a;

    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dwv$g$a$a;->a(Lcom/google/android/gms/internal/ads/dwv$g$d$a;)Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$g$c;->a(Lcom/google/android/gms/internal/ads/dwv$g$a$a;)Lcom/google/android/gms/internal/ads/dwv$g$c;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$g;

    .line 94
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ciy;->a:Lcom/google/android/gms/internal/ads/ang;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ang;->c()Lcom/google/android/gms/internal/ads/ass;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ass;->a(Lcom/google/android/gms/internal/ads/dwv$g;)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ciq;->b()V

    .line 96
    return-void
.end method

.method private final b()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/ads/ciu;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ciu;->b:Lcom/google/android/gms/internal/ads/cix;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v0, " PoolCollection"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->c:Lcom/google/android/gms/internal/ads/cis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cis;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v1, ". "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo v1, "#"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cjb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cjb;->hashCode()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string/jumbo v1, "    "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    .line 111
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cio;->b()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 112
    const-string/jumbo v1, "[O]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 114
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cio;->b()I

    move-result v1

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    iget v4, v4, Lcom/google/android/gms/internal/ads/ciu;->d:I

    if-ge v1, v4, :cond_1

    .line 115
    const-string/jumbo v4, "[ ]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 117
    :cond_1
    const-string/jumbo v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cio;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 120
    goto/16 :goto_0

    .line 121
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ciu;->c:I

    if-ge v1, v0, :cond_3

    .line 122
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string/jumbo v0, ".\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 127
    :cond_4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ciu;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/cjb;)Lcom/google/android/gms/internal/ads/ciy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cjb;",
            ")",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 6
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cio;

    .line 8
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cio;->a()Lcom/google/android/gms/internal/ads/ciy;

    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ciq;->c:Lcom/google/android/gms/internal/ads/cis;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cis;->b()V

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cio;->g()Lcom/google/android/gms/internal/ads/cjp;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ciq;->a(Lcom/google/android/gms/internal/ads/ciy;Lcom/google/android/gms/internal/ads/cjp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 15
    :goto_0
    monitor-exit p0

    return-object v0

    .line 13
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->c:Lcom/google/android/gms/internal/ads/cis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cis;->a()V

    .line 14
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/ciq;->a(Lcom/google/android/gms/internal/ads/ciy;Lcom/google/android/gms/internal/ads/cjp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 6
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dyk;)Lcom/google/android/gms/internal/ads/cjb;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/gms/internal/ads/qe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ciu;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/qe;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qe;->a()Lcom/google/android/gms/internal/ads/qf;

    move-result-object v0

    .line 81
    iget v3, v0, Lcom/google/android/gms/internal/ads/qf;->j:I

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/ads/cja;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/ciu;->f:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/cja;-><init>(Lcom/google/android/gms/internal/ads/dya;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/dyk;)V

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/cjb;Lcom/google/android/gms/internal/ads/ciy;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cjb;",
            "Lcom/google/android/gms/internal/ads/ciy",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const/4 v2, 0x0

    .line 16
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cio;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v6

    iput-wide v6, p2, Lcom/google/android/gms/internal/ads/ciy;->d:J

    .line 18
    if-nez v0, :cond_2

    .line 19
    new-instance v6, Lcom/google/android/gms/internal/ads/cio;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/ciu;->d:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    iget v1, v1, Lcom/google/android/gms/internal/ads/ciu;->e:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-direct {v6, v0, v1}, Lcom/google/android/gms/internal/ads/cio;-><init>(II)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    iget v1, v1, Lcom/google/android/gms/internal/ads/ciu;->c:I

    if-ne v0, v1, :cond_1

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/cit;->a:[I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    iget v1, v1, Lcom/google/android/gms/internal/ads/ciu;->g:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->c:Lcom/google/android/gms/internal/ads/cis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cis;->d()V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->c:Lcom/google/android/gms/internal/ads/cis;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cis;->c()V

    move-object v0, v6

    .line 59
    :cond_2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/cio;->a(Lcom/google/android/gms/internal/ads/ciy;)Z

    move-result v1

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ciq;->c:Lcom/google/android/gms/internal/ads/cis;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cis;->e()V

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ciq;->c:Lcom/google/android/gms/internal/ads/cis;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/cis;->f()Lcom/google/android/gms/internal/ads/civ;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cio;->g()Lcom/google/android/gms/internal/ads/cjp;

    move-result-object v0

    .line 62
    if-eqz p2, :cond_3

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g;->a()Lcom/google/android/gms/internal/ads/dwv$g$c;

    move-result-object v3

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g$a;->a()Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/dwv$g$b;->a:Lcom/google/android/gms/internal/ads/dwv$g$b;

    .line 65
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/dwv$g$a$a;->a(Lcom/google/android/gms/internal/ads/dwv$g$b;)Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    move-result-object v4

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g$e;->a()Lcom/google/android/gms/internal/ads/dwv$g$e$a;

    move-result-object v5

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/civ;->a:Z

    .line 67
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/dwv$g$e$a;->a(Z)Lcom/google/android/gms/internal/ads/dwv$g$e$a;

    move-result-object v5

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/civ;->b:Z

    .line 68
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/dwv$g$e$a;->b(Z)Lcom/google/android/gms/internal/ads/dwv$g$e$a;

    move-result-object v2

    iget v0, v0, Lcom/google/android/gms/internal/ads/cjp;->b:I

    .line 69
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/dwv$g$e$a;->a(I)Lcom/google/android/gms/internal/ads/dwv$g$e$a;

    move-result-object v0

    .line 70
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/dwv$g$a$a;->a(Lcom/google/android/gms/internal/ads/dwv$g$e$a;)Lcom/google/android/gms/internal/ads/dwv$g$a$a;

    move-result-object v0

    .line 71
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dwv$g$c;->a(Lcom/google/android/gms/internal/ads/dwv$g$a$a;)Lcom/google/android/gms/internal/ads/dwv$g$c;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$g;

    .line 73
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/ciy;->a:Lcom/google/android/gms/internal/ads/ang;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ang;->c()Lcom/google/android/gms/internal/ads/ass;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ass;->b(Lcom/google/android/gms/internal/ads/dwv$g;)V

    .line 74
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ciq;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return v1

    .line 27
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cio;->c()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_9

    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cio;->c()J

    move-result-wide v2

    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cjb;

    move-wide v4, v2

    :goto_2
    move-object v2, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_4
    if-eqz v2, :cond_0

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 38
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cio;->d()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_8

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cio;->d()J

    move-result-wide v2

    .line 41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cjb;

    move-wide v4, v2

    :goto_4
    move-object v2, v0

    .line 42
    goto :goto_3

    .line 43
    :cond_5
    if-eqz v2, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 47
    :pswitch_2
    const v3, 0x7fffffff

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cio;->e()I

    move-result v1

    if-ge v1, v3, :cond_7

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cio;->e()I

    move-result v1

    .line 52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cjb;

    :goto_6
    move-object v2, v0

    move v3, v1

    .line 53
    goto :goto_5

    .line 54
    :cond_6
    if-eqz v2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    move v1, v3

    goto :goto_6

    :cond_8
    move-object v0, v2

    goto :goto_4

    :cond_9
    move-object v0, v2

    goto/16 :goto_2

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/cjb;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ciq;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cio;

    .line 77
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cio;->b()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ciq;->b:Lcom/google/android/gms/internal/ads/ciu;

    iget v2, v2, Lcom/google/android/gms/internal/ads/ciu;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v2, :cond_0

    move v0, v1

    .line 79
    :goto_0
    monitor-exit p0

    return v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 79
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
