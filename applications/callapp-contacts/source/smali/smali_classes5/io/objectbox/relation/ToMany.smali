.class public Lio/objectbox/relation/ToMany;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TARGET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/List<",
        "TTARGET;>;"
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/Integer;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lio/objectbox/relation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/b<",
            "Ljava/lang/Object;",
            "TTARGET;>;"
        }
    .end annotation
.end field

.field public volatile c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TTARGET;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TTARGET;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TTARGET;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TTARGET;>;"
        }
    .end annotation
.end field

.field public transient g:Z

.field private volatile i:Lio/objectbox/relation/a;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TTARGET;>;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TTARGET;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient l:Lio/objectbox/BoxStore;

.field private transient m:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile transient n:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "TTARGET;>;"
        }
    .end annotation
.end field

.field private transient o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TTARGET;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lio/objectbox/relation/ToMany;->h:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/objectbox/relation/b<",
            "*TTARGET;>;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 102
    iput-object p1, p0, Lio/objectbox/relation/ToMany;->a:Ljava/lang/Object;

    .line 103
    iput-object p2, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    return-void

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No relation info given (null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No source entity given (null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized a(J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTARGET;"
        }
    .end annotation

    monitor-enter p0

    .line 397
    :try_start_0
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 398
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 399
    iget-object v1, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v1, v1, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    invoke-interface {v1}, Lio/objectbox/c;->getIdGetter()Lio/objectbox/b/c;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 401
    iget-object v3, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 402
    invoke-interface {v1, v3}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-nez v6, :cond_1

    .line 403
    invoke-virtual {p0, v2}, Lio/objectbox/relation/ToMany;->remove(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v3, :cond_0

    .line 407
    monitor-exit p0

    return-object v3

    .line 405
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Mismatch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " vs. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 410
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTARGET;)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->d()V

    .line 234
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->k:Ljava/util/Map;

    sget-object v1, Lio/objectbox/relation/ToMany;->h:Ljava/lang/Integer;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lio/objectbox/relation/ToMany;->k:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    :cond_0
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TTARGET;>;)V"
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->d()V

    .line 245
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 246
    invoke-direct {p0, v0}, Lio/objectbox/relation/ToMany;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(JLio/objectbox/b/c;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/objectbox/b/c<",
            "TTARGET;>;",
            "Ljava/util/Map<",
            "TTARGET;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "TTARGET;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v0, v0, Lio/objectbox/relation/b;->h:Lio/objectbox/b/g;

    .line 701
    monitor-enter p0

    const-wide/16 v1, 0x0

    if-eqz p4, :cond_4

    .line 702
    :try_start_0
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 703
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 704
    invoke-interface {v0, v4}, Lio/objectbox/b/g;->getToMany(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Lio/objectbox/relation/ToMany;

    if-eqz v5, :cond_2

    .line 709
    invoke-direct {v5, p1, p2}, Lio/objectbox/relation/ToMany;->b(J)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 711
    iget-object v6, p0, Lio/objectbox/relation/ToMany;->a:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lio/objectbox/relation/ToMany;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v5, p0, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 713
    :cond_1
    invoke-interface {p3, v4}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_0

    .line 715
    iget-object v5, p0, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 706
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The ToMany property for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object p3, p3, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    .line 707
    invoke-interface {p3}, Lio/objectbox/c;->getEntityName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 718
    :cond_3
    invoke-interface {p4}, Ljava/util/Map;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_1
    if-eqz p5, :cond_8

    .line 722
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_5
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 723
    invoke-interface {v0, v3}, Lio/objectbox/b/g;->getToMany(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Lio/objectbox/relation/ToMany;

    .line 724
    invoke-direct {v4, p1, p2}, Lio/objectbox/relation/ToMany;->b(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 725
    invoke-direct {v4, p1, p2}, Lio/objectbox/relation/ToMany;->a(J)Ljava/lang/Object;

    .line 726
    invoke-interface {p3, v3}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-eqz v6, :cond_5

    .line 727
    iget-boolean v4, p0, Lio/objectbox/relation/ToMany;->g:Z

    if-eqz v4, :cond_6

    .line 728
    iget-object v4, p0, Lio/objectbox/relation/ToMany;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 730
    :cond_6
    iget-object v4, p0, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 735
    :cond_7
    invoke-interface {p5}, Ljava/util/Map;->clear()V

    .line 737
    :cond_8
    iget-object p1, p0, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lio/objectbox/relation/ToMany;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 p1, 0x1

    :goto_4
    monitor-exit p0

    return p1

    .line 738
    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b()Lio/objectbox/relation/a;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->i:Lio/objectbox/relation/a;

    if-nez v0, :cond_1

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->i:Lio/objectbox/relation/a;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lio/objectbox/relation/a$a;

    invoke-direct {v0}, Lio/objectbox/relation/a$a;-><init>()V

    iput-object v0, p0, Lio/objectbox/relation/ToMany;->i:Lio/objectbox/relation/a;

    .line 139
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private b(J)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTARGET;"
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 615
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 616
    iget-object v1, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v1, v1, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    invoke-interface {v1}, Lio/objectbox/c;->getIdGetter()Lio/objectbox/b/c;

    move-result-object v1

    .line 617
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 618
    invoke-interface {v1, v4}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTARGET;)V"
        }
    .end annotation

    .line 252
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->d()V

    .line 253
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 256
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->d:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 260
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 261
    iget-object v1, p0, Lio/objectbox/relation/ToMany;->k:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 263
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Illegal count: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method private b(JLio/objectbox/b/c;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/objectbox/b/c<",
            "TTARGET;>;",
            "Ljava/util/Map<",
            "TTARGET;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "TTARGET;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v0, v0, Lio/objectbox/relation/b;->g:Lio/objectbox/b/h;

    .line 745
    monitor-enter p0

    const-wide/16 v1, 0x0

    if-eqz p4, :cond_4

    .line 746
    :try_start_0
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 747
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 748
    invoke-interface {v0, v4}, Lio/objectbox/b/h;->getToOne(Ljava/lang/Object;)Lio/objectbox/relation/ToOne;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 754
    invoke-virtual {v5}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v6

    cmp-long v8, v6, p1

    if-eqz v8, :cond_1

    .line 756
    iget-object v6, p0, Lio/objectbox/relation/ToMany;->a:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lio/objectbox/relation/ToOne;->a(Ljava/lang/Object;)V

    .line 757
    iget-object v5, p0, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 758
    :cond_1
    invoke-interface {p3, v4}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v5

    cmp-long v7, v5, v1

    if-nez v7, :cond_0

    .line 759
    iget-object v5, p0, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 750
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "The ToOne property for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object p3, p3, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    .line 751
    invoke-interface {p3}, Lio/objectbox/c;->getEntityName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object p3, p3, Lio/objectbox/relation/b;->c:Lio/objectbox/g;

    iget-object p3, p3, Lio/objectbox/g;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 762
    :cond_3
    invoke-interface {p4}, Ljava/util/Map;->clear()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_1
    if-eqz p5, :cond_8

    .line 766
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_5
    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 767
    invoke-interface {v0, v3}, Lio/objectbox/b/h;->getToOne(Ljava/lang/Object;)Lio/objectbox/relation/ToOne;

    move-result-object v4

    .line 768
    invoke-virtual {v4}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_5

    const/4 v5, 0x0

    .line 770
    invoke-virtual {v4, v5}, Lio/objectbox/relation/ToOne;->a(Ljava/lang/Object;)V

    .line 771
    invoke-interface {p3, v3}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-eqz v6, :cond_5

    .line 772
    iget-boolean v4, p0, Lio/objectbox/relation/ToMany;->g:Z

    if-eqz v4, :cond_6

    .line 773
    iget-object v4, p0, Lio/objectbox/relation/ToMany;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 775
    :cond_6
    iget-object v4, p0, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 780
    :cond_7
    invoke-interface {p5}, Ljava/util/Map;->clear()V

    .line 782
    :cond_8
    iget-object p1, p0, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lio/objectbox/relation/ToMany;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 p1, 0x1

    :goto_4
    monitor-exit p0

    return p1

    .line 783
    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c()V
    .locals 3

    .line 145
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->n:Lio/objectbox/a;

    if-nez v0, :cond_1

    .line 146
    invoke-static {}, Lio/objectbox/b/f;->a()Lio/objectbox/b/f;

    move-result-object v0

    iget-object v1, p0, Lio/objectbox/relation/ToMany;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "__boxStore"

    invoke-virtual {v0, v1, v2}, Lio/objectbox/b/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lio/objectbox/relation/ToMany;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/objectbox/BoxStore;

    iput-object v0, p0, Lio/objectbox/relation/ToMany;->l:Lio/objectbox/BoxStore;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v1, v1, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    invoke-interface {v1}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/relation/ToMany;->m:Lio/objectbox/a;

    .line 157
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->l:Lio/objectbox/BoxStore;

    iget-object v1, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v1, v1, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    invoke-interface {v1}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/relation/ToMany;->n:Lio/objectbox/a;

    goto :goto_0

    .line 150
    :cond_0
    :try_start_1
    new-instance v0, Lio/objectbox/exception/DbDetachedException;

    const-string v1, "Cannot resolve relation for detached entities, call box.attach(entity) beforehand."

    invoke-direct {v0, v1}, Lio/objectbox/exception/DbDetachedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private d()V
    .locals 4

    .line 162
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 163
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    .line 167
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/objectbox/relation/ToMany;->d:Ljava/util/Map;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/objectbox/relation/ToMany;->k:Ljava/util/Map;

    .line 169
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lio/objectbox/relation/ToMany;->k:Ljava/util/Map;

    sget-object v3, Lio/objectbox/relation/ToMany;->h:Ljava/lang/Integer;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 172
    iget-object v3, p0, Lio/objectbox/relation/ToMany;->k:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method private e()V
    .locals 8

    .line 181
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    if-nez v0, :cond_6

    .line 182
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v0, v0, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    invoke-interface {v0}, Lio/objectbox/c;->getIdGetter()Lio/objectbox/b/c;

    move-result-object v0

    iget-object v1, p0, Lio/objectbox/relation/ToMany;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-nez v2, :cond_1

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->b()Lio/objectbox/relation/a;

    move-result-object v0

    invoke-interface {v0}, Lio/objectbox/relation/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    .line 189
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 191
    :cond_1
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->c()V

    .line 193
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget v4, v0, Lio/objectbox/relation/b;->i:I

    if-eqz v4, :cond_2

    .line 195
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v0, v0, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    invoke-interface {v0}, Lio/objectbox/c;->getEntityId()I

    move-result v3

    .line 196
    iget-object v2, p0, Lio/objectbox/relation/ToMany;->n:Lio/objectbox/a;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lio/objectbox/a;->a(IIJZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v0, v0, Lio/objectbox/relation/b;->c:Lio/objectbox/g;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->n:Lio/objectbox/a;

    iget-object v1, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v1, v1, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    invoke-interface {v1}, Lio/objectbox/c;->getEntityId()I

    move-result v1

    iget-object v2, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v2, v2, Lio/objectbox/relation/b;->c:Lio/objectbox/g;

    invoke-virtual {v0, v1, v2, v5, v6}, Lio/objectbox/a;->a(ILio/objectbox/g;J)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 204
    :cond_3
    iget-object v2, p0, Lio/objectbox/relation/ToMany;->n:Lio/objectbox/a;

    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v0, v0, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    invoke-interface {v0}, Lio/objectbox/c;->getEntityId()I

    move-result v3

    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget v4, v0, Lio/objectbox/relation/b;->d:I

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/objectbox/a;->a(IIJZ)Ljava/util/List;

    move-result-object v0

    .line 208
    :goto_0
    iget-object v1, p0, Lio/objectbox/relation/ToMany;->o:Ljava/util/Comparator;

    if-eqz v1, :cond_4

    .line 209
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    :cond_4
    monitor-enter p0

    .line 212
    :try_start_1
    iget-object v1, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    if-nez v1, :cond_5

    .line 213
    iput-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    .line 215
    :cond_5
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(Lio/objectbox/Cursor;JLjava/util/List;Lio/objectbox/b/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/Cursor<",
            "*>;J",
            "Ljava/util/List<",
            "TTARGET;>;",
            "Lio/objectbox/b/c<",
            "TTARGET;>;)V"
        }
    .end annotation

    .line 860
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 861
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 862
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p5, v1}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 863
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 867
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 869
    new-array v5, v0, [J

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 871
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p5, v2}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v2

    aput-wide v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 873
    :cond_2
    iget-object p4, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget v2, p4, Lio/objectbox/relation/b;->i:I

    const/4 v6, 0x1

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Lio/objectbox/Cursor;->modifyRelations(IJ[JZ)V

    :cond_3
    return-void
.end method

.method public final a(Lio/objectbox/Cursor;J[Ljava/lang/Object;Lio/objectbox/b/c;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/Cursor<",
            "*>;J[TTARGET;",
            "Lio/objectbox/b/c<",
            "TTARGET;>;)V"
        }
    .end annotation

    .line 880
    array-length v0, p4

    .line 881
    new-array v5, v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 883
    aget-object v2, p4, v1

    invoke-interface {p5, v2}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-eqz v4, :cond_0

    .line 888
    aput-wide v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Target entity has no ID (should have been put before)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 890
    :cond_1
    iget-object p4, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget v2, p4, Lio/objectbox/relation/b;->i:I

    const/4 v6, 0x0

    move-object v1, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Lio/objectbox/Cursor;->modifyRelations(IJ[JZ)V

    return-void
.end method

.method public final a()Z
    .locals 8

    .line 1648
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1649
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1652
    :cond_0
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1653
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    return v1

    .line 668
    :cond_2
    monitor-enter p0

    .line 669
    :try_start_0
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    if-nez v0, :cond_3

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/objectbox/relation/ToMany;->e:Ljava/util/List;

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/objectbox/relation/ToMany;->f:Ljava/util/List;

    .line 673
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget v0, v0, Lio/objectbox/relation/b;->i:I

    if-eqz v0, :cond_4

    return v2

    .line 681
    :cond_4
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v0, v0, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    invoke-interface {v0}, Lio/objectbox/c;->getIdGetter()Lio/objectbox/b/c;

    move-result-object v0

    iget-object v1, p0, Lio/objectbox/relation/ToMany;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-eqz v2, :cond_6

    .line 685
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget-object v0, v0, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    invoke-interface {v0}, Lio/objectbox/c;->getIdGetter()Lio/objectbox/b/c;

    move-result-object v5

    .line 686
    iget-object v6, p0, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    .line 687
    iget-object v7, p0, Lio/objectbox/relation/ToMany;->d:Ljava/util/Map;

    .line 689
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->b:Lio/objectbox/relation/b;

    iget v0, v0, Lio/objectbox/relation/b;->d:I

    if-eqz v0, :cond_5

    move-object v2, p0

    .line 690
    invoke-direct/range {v2 .. v7}, Lio/objectbox/relation/ToMany;->a(JLio/objectbox/b/c;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    return v0

    :cond_5
    move-object v2, p0

    .line 692
    invoke-direct/range {v2 .. v7}, Lio/objectbox/relation/ToMany;->b(JLio/objectbox/b/c;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    return v0

    .line 683
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Source entity has no ID (should have been put before)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 673
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTARGET;)V"
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_0
    invoke-direct {p0, p2}, Lio/objectbox/relation/ToMany;->a(Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTARGET;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 227
    :try_start_0
    invoke-direct {p0, p1}, Lio/objectbox/relation/ToMany;->a(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TTARGET;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 285
    :try_start_0
    invoke-direct {p0, p2}, Lio/objectbox/relation/ToMany;->a(Ljava/util/Collection;)V

    .line 286
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TTARGET;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 278
    :try_start_0
    invoke-direct {p0, p1}, Lio/objectbox/relation/ToMany;->a(Ljava/util/Collection;)V

    .line 279
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 5

    monitor-enter p0

    .line 291
    :try_start_0
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->d()V

    .line 292
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 295
    iget-object v3, p0, Lio/objectbox/relation/ToMany;->d:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 300
    :cond_1
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->c:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 302
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 305
    :cond_2
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->k:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 307
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 313
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 314
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 320
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTARGET;"
        }
    .end annotation

    .line 329
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 330
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 335
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 336
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 341
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 342
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TTARGET;>;"
        }
    .end annotation

    .line 348
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 349
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 354
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 355
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TTARGET;>;"
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 362
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TTARGET;>;"
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 373
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TTARGET;"
        }
    .end annotation

    monitor-enter p0

    .line 378
    :try_start_0
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->d()V

    .line 379
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 380
    invoke-direct {p0, p1}, Lio/objectbox/relation/ToMany;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 387
    :try_start_0
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->d()V

    .line 388
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0, p1}, Lio/objectbox/relation/ToMany;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 416
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 417
    invoke-virtual {p0, v1}, Lio/objectbox/relation/ToMany;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v0, v1

    goto :goto_0

    .line 419
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 424
    :try_start_0
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->d()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 428
    iget-object v2, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 429
    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_1

    .line 431
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 438
    invoke-virtual {p0, v1}, Lio/objectbox/relation/ToMany;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITTARGET;)TTARGET;"
        }
    .end annotation

    monitor-enter p0

    .line 445
    :try_start_0
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->d()V

    .line 446
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 447
    invoke-direct {p0, p1}, Lio/objectbox/relation/ToMany;->b(Ljava/lang/Object;)V

    .line 448
    invoke-direct {p0, p2}, Lio/objectbox/relation/ToMany;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()I
    .locals 1

    .line 454
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 455
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TTARGET;>;"
        }
    .end annotation

    .line 465
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 466
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 472
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 473
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 479
    invoke-direct {p0}, Lio/objectbox/relation/ToMany;->e()V

    .line 481
    iget-object v0, p0, Lio/objectbox/relation/ToMany;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
