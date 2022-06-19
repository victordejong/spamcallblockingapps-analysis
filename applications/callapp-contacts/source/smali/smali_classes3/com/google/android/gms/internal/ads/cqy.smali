.class final Lcom/google/android/gms/internal/ads/cqy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqz;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/google/android/gms/internal/ads/cri;",
            "Lcom/google/android/gms/internal/ads/cqw;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/gms/internal/ads/zzdrc;

.field private c:Lcom/google/android/gms/internal/ads/crb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrc;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqq:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/crb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/crb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cqy;->c:Lcom/google/android/gms/internal/ads/crb;

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/ads/crj;Lcom/google/android/gms/internal/ads/cry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/crj<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/cry;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g;->a()Lcom/google/android/gms/internal/ads/eht$g$b;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g$a;->a()Lcom/google/android/gms/internal/ads/eht$g$a$a;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$g$c;->zzcaf:Lcom/google/android/gms/internal/ads/eht$g$c;

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/eht$g$a$a;->a(Lcom/google/android/gms/internal/ads/eht$g$c;)Lcom/google/android/gms/internal/ads/eht$g$a$a;

    move-result-object v1

    .line 88
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g$d;->a()Lcom/google/android/gms/internal/ads/eht$g$d$a;

    move-result-object v2

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/cry;->a:Z

    .line 89
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/eht$g$d$a;->a(Z)Lcom/google/android/gms/internal/ads/eht$g$d$a;

    move-result-object v2

    iget p2, p2, Lcom/google/android/gms/internal/ads/cry;->b:I

    .line 90
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/eht$g$d$a;->a(I)Lcom/google/android/gms/internal/ads/eht$g$d$a;

    move-result-object p2

    .line 91
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/eht$g$a$a;->a(Lcom/google/android/gms/internal/ads/eht$g$d$a;)Lcom/google/android/gms/internal/ads/eht$g$a$a;

    move-result-object p2

    .line 92
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/eht$g$b;->a(Lcom/google/android/gms/internal/ads/eht$g$a$a;)Lcom/google/android/gms/internal/ads/eht$g$b;

    move-result-object p2

    .line 14067
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p2

    .line 93
    check-cast p2, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p2, Lcom/google/android/gms/internal/ads/eht$g;

    .line 94
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/crj;->a:Lcom/google/android/gms/internal/ads/aor;

    .line 15048
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aor;->c:Lcom/google/android/gms/internal/ads/awa;

    .line 94
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/awa;->a(Lcom/google/android/gms/internal/ads/eht$g;)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cqy;->b()V

    return-void
.end method

.method private final b()V
    .locals 7

    .line 97
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrc;->zzaxd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqo:Lcom/google/android/gms/internal/ads/crf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PoolCollection"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqy;->c:Lcom/google/android/gms/internal/ads/crb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/crb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    .line 108
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/cri;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/cri;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    .line 110
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 111
    :goto_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/cqw;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/cqw;->a()I

    move-result v6

    if-ge v5, v6, :cond_0

    const-string v6, "[O]"

    .line 112
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 114
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/cqw;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/cqw;->a()I

    move-result v5

    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqq:I

    if-ge v5, v6, :cond_1

    const-string v6, "[ ]"

    .line 115
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "\n"

    .line 117
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/cqw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/cqw;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqp:I

    if-ge v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 125
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/cri;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    new-instance v0, Lcom/google/android/gms/internal/ads/tc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdrc;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/tc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tc;->a()Lcom/google/android/gms/internal/ads/sz;

    move-result-object v0

    .line 81
    iget v4, v0, Lcom/google/android/gms/internal/ads/sz;->j:I

    .line 82
    new-instance v0, Lcom/google/android/gms/internal/ads/crl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqs:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/crl;-><init>(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzwc;)V

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/cri;)Lcom/google/android/gms/internal/ads/crj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cri;",
            ")",
            "Lcom/google/android/gms/internal/ads/crj<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/cqw;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1013
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/crz;->a()V

    .line 1014
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cqw;->d()V

    .line 1015
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cqw;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/cqw;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/crj;

    if-eqz v1, :cond_1

    .line 1019
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    .line 2012
    iget v3, v2, Lcom/google/android/gms/internal/ads/crz;->e:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/google/android/gms/internal/ads/crz;->e:I

    .line 2013
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/crz;->b:Lcom/google/android/gms/internal/ads/cry;

    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/cry;->a:Z

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->c:Lcom/google/android/gms/internal/ads/crb;

    .line 3005
    iget v3, v2, Lcom/google/android/gms/internal/ads/crb;->e:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/google/android/gms/internal/ads/crb;->e:I

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cqw;->c()Lcom/google/android/gms/internal/ads/cry;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/cqy;->a(Lcom/google/android/gms/internal/ads/crj;Lcom/google/android/gms/internal/ads/cry;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cqy;->c:Lcom/google/android/gms/internal/ads/crb;

    .line 4003
    iget v2, p1, Lcom/google/android/gms/internal/ads/crb;->d:I

    add-int/2addr v2, v0

    iput v2, p1, Lcom/google/android/gms/internal/ads/crb;->d:I

    .line 14
    invoke-direct {p0, v1, v1}, Lcom/google/android/gms/internal/ads/cqy;->a(Lcom/google/android/gms/internal/ads/crj;Lcom/google/android/gms/internal/ads/cry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a()Lcom/google/android/gms/internal/ads/zzdrc;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    return-object v0
.end method

.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/cri;Lcom/google/android/gms/internal/ads/crj;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cri;",
            "Lcom/google/android/gms/internal/ads/crj<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cqw;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lcom/google/android/gms/common/util/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/crj;->d:J

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/cqw;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqq:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqr:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/cqw;-><init>(II)V

    .line 21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqp:I

    if-ne v2, v3, :cond_a

    .line 23
    sget-object v2, Lcom/google/android/gms/internal/ads/crc;->a:[I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqu:I

    sub-int/2addr v3, v1

    aget v2, v2, v3

    const-wide v3, 0x7fffffffffffffffL

    const/4 v5, 0x0

    if-eq v2, v1, :cond_6

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const v2, 0x7fffffff

    .line 49
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/cqw;

    .line 8025
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    .line 9020
    iget v6, v6, Lcom/google/android/gms/internal/ads/crz;->d:I

    if-ge v6, v2, :cond_1

    .line 51
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/cqw;

    .line 9025
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    .line 10020
    iget v2, v2, Lcom/google/android/gms/internal/ads/crz;->d:I

    .line 52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/cri;

    move-object v5, v4

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_9

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 38
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 39
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/cqw;

    .line 6024
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    .line 7019
    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/crz;->c:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_4

    .line 40
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/cqw;

    .line 7024
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    .line 8019
    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/crz;->c:J

    .line 41
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/cri;

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_9

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 27
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/cqw;

    .line 4023
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    .line 5018
    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/crz;->a:J

    cmp-long v9, v7, v3

    if-gez v9, :cond_7

    .line 29
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/cqw;

    .line 5023
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    .line 6018
    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/crz;->a:J

    .line 30
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/cri;

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->c:Lcom/google/android/gms/internal/ads/crb;

    .line 11010
    iget v3, v2, Lcom/google/android/gms/internal/ads/crb;->c:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/google/android/gms/internal/ads/crb;->c:I

    .line 11011
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/crb;->a:Lcom/google/android/gms/internal/ads/crd;

    iput-boolean v1, v2, Lcom/google/android/gms/internal/ads/crd;->b:Z

    .line 57
    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/cqy;->c:Lcom/google/android/gms/internal/ads/crb;

    .line 12007
    iget v2, p1, Lcom/google/android/gms/internal/ads/crb;->b:I

    add-int/2addr v2, v1

    iput v2, p1, Lcom/google/android/gms/internal/ads/crb;->b:I

    .line 12008
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/crb;->a:Lcom/google/android/gms/internal/ads/crd;

    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/crd;->a:Z

    .line 13007
    :cond_b
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/cqw;->c:Lcom/google/android/gms/internal/ads/crz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/crz;->a()V

    .line 13008
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqw;->d()V

    .line 13009
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/cqw;->a:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v2, v0, Lcom/google/android/gms/internal/ads/cqw;->b:I

    const/4 v3, 0x0

    if-ne p1, v2, :cond_c

    const/4 p1, 0x0

    goto :goto_4

    .line 13011
    :cond_c
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/cqw;->a:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 60
    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cqy;->c:Lcom/google/android/gms/internal/ads/crb;

    .line 13013
    iget v4, v2, Lcom/google/android/gms/internal/ads/crb;->f:I

    add-int/2addr v4, v1

    iput v4, v2, Lcom/google/android/gms/internal/ads/crb;->f:I

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqy;->c:Lcom/google/android/gms/internal/ads/crb;

    .line 13015
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/crb;->a:Lcom/google/android/gms/internal/ads/crd;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/crd;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/crd;

    .line 13016
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/crb;->a:Lcom/google/android/gms/internal/ads/crd;

    .line 13017
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/crd;->a:Z

    .line 13018
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/crd;->b:Z

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cqw;->c()Lcom/google/android/gms/internal/ads/cry;

    move-result-object v0

    if-eqz p2, :cond_d

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g;->a()Lcom/google/android/gms/internal/ads/eht$g$b;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g$a;->a()Lcom/google/android/gms/internal/ads/eht$g$a$a;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/eht$g$c;->zzcaf:Lcom/google/android/gms/internal/ads/eht$g$c;

    .line 65
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/eht$g$a$a;->a(Lcom/google/android/gms/internal/ads/eht$g$c;)Lcom/google/android/gms/internal/ads/eht$g$a$a;

    move-result-object v3

    .line 66
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g$e;->a()Lcom/google/android/gms/internal/ads/eht$g$e$a;

    move-result-object v4

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/crd;->a:Z

    .line 67
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/eht$g$e$a;->a(Z)Lcom/google/android/gms/internal/ads/eht$g$e$a;

    move-result-object v4

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/crd;->b:Z

    .line 68
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/eht$g$e$a;->b(Z)Lcom/google/android/gms/internal/ads/eht$g$e$a;

    move-result-object v2

    iget v0, v0, Lcom/google/android/gms/internal/ads/cry;->b:I

    .line 69
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/eht$g$e$a;->a(I)Lcom/google/android/gms/internal/ads/eht$g$e$a;

    move-result-object v0

    .line 70
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/eht$g$a$a;->a(Lcom/google/android/gms/internal/ads/eht$g$e$a;)Lcom/google/android/gms/internal/ads/eht$g$a$a;

    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/eht$g$b;->a(Lcom/google/android/gms/internal/ads/eht$g$a$a;)Lcom/google/android/gms/internal/ads/eht$g$b;

    move-result-object v0

    .line 13067
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v0

    .line 72
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$g;

    .line 73
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/crj;->a:Lcom/google/android/gms/internal/ads/aor;

    .line 14048
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/aor;->c:Lcom/google/android/gms/internal/ads/awa;

    .line 73
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/awa;->b(Lcom/google/android/gms/internal/ads/eht$g;)V

    .line 74
    :cond_d
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cqy;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/cri;)Z
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cqy;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/cqw;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cqw;->a()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cqy;->b:Lcom/google/android/gms/internal/ads/zzdrc;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzdrc;->zzhqq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge p1, v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 79
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
