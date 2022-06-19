.class public final Landroidx/media2/exoplayer/external/source/h;
.super Landroidx/media2/exoplayer/external/source/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/h$c;,
        Landroidx/media2/exoplayer/external/source/h$b;,
        Landroidx/media2/exoplayer/external/source/h$a;,
        Landroidx/media2/exoplayer/external/source/h$e;,
        Landroidx/media2/exoplayer/external/source/h$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/source/d<",
        "Landroidx/media2/exoplayer/external/source/h$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/h$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/exoplayer/external/source/s;",
            "Landroidx/media2/exoplayer/external/source/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/media2/exoplayer/external/source/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/h$d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z

.field private final i:Z

.field private j:Z

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/h$c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroidx/media2/exoplayer/external/source/an;


# direct methods
.method public varargs constructor <init>(ZLandroidx/media2/exoplayer/external/source/an;[Landroidx/media2/exoplayer/external/source/t;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/source/h;-><init>(ZZLandroidx/media2/exoplayer/external/source/an;[Landroidx/media2/exoplayer/external/source/t;)V

    return-void
.end method

.method public varargs constructor <init>(ZZLandroidx/media2/exoplayer/external/source/an;[Landroidx/media2/exoplayer/external/source/t;)V
    .locals 3

    .line 131
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/d;-><init>()V

    .line 132
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p4, v1

    .line 133
    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {p3}, Landroidx/media2/exoplayer/external/source/an;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p3}, Landroidx/media2/exoplayer/external/source/an;->d()Landroidx/media2/exoplayer/external/source/an;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    .line 136
    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h;->e:Ljava/util/Map;

    .line 137
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h;->f:Ljava/util/Map;

    .line 138
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h;->a:Ljava/util/List;

    .line 139
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    .line 140
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h;->k:Ljava/util/Set;

    .line 141
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h;->b:Ljava/util/Set;

    .line 142
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/h;->g:Ljava/util/Set;

    .line 143
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/source/h;->h:Z

    .line 144
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/h;->i:Z

    .line 145
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/h;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Landroidx/media2/exoplayer/external/source/t;)V
    .locals 2

    .line 101
    new-instance v0, Landroidx/media2/exoplayer/external/source/an$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/an$a;-><init>(I)V

    invoke-direct {p0, p1, v0, p2}, Landroidx/media2/exoplayer/external/source/h;-><init>(ZLandroidx/media2/exoplayer/external/source/an;[Landroidx/media2/exoplayer/external/source/t;)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/source/t;)V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/h;-><init>(Z[Landroidx/media2/exoplayer/external/source/t;)V

    return-void
.end method

.method private declared-synchronized a(I)Landroidx/media2/exoplayer/external/source/t;
    .locals 1

    monitor-enter p0

    .line 402
    :try_start_0
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/h;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/h$d;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(III)V
    .locals 2

    .line 804
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 805
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/h$d;

    .line 806
    iget v1, v0, Landroidx/media2/exoplayer/external/source/h$d;->d:I

    add-int/2addr v1, p2

    iput v1, v0, Landroidx/media2/exoplayer/external/source/h$d;->d:I

    .line 807
    iget v1, v0, Landroidx/media2/exoplayer/external/source/h$d;->e:I

    add-int/2addr v1, p3

    iput v1, v0, Landroidx/media2/exoplayer/external/source/h$d;->e:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(ILjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/h$d;",
            ">;)V"
        }
    .end annotation

    .line 736
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/h$d;

    add-int/lit8 v1, p1, 0x1

    if-lez p1, :cond_0

    .line 4743
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/h$d;

    .line 4744
    iget-object v3, v2, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;

    .line 5070
    iget-object v3, v3, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    .line 4745
    iget v2, v2, Landroidx/media2/exoplayer/external/source/h$d;->e:I

    .line 4746
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result v3

    add-int/2addr v2, v3

    .line 4745
    invoke-virtual {v0, p1, v2}, Landroidx/media2/exoplayer/external/source/h$d;->a(II)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 4748
    invoke-virtual {v0, p1, v2}, Landroidx/media2/exoplayer/external/source/h$d;->a(II)V

    .line 4750
    :goto_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;

    .line 6070
    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    .line 4751
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3, v2}, Landroidx/media2/exoplayer/external/source/h;->a(III)V

    .line 4752
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4753
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/h;->f:Ljava/util/Map;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/h$d;->b:Ljava/lang/Object;

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4754
    iget-object p1, v0, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;

    invoke-virtual {p0, v0, p1}, Landroidx/media2/exoplayer/external/source/h;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;)V

    .line 4755
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/h;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/h;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4756
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/h;->g:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4758
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/h;->b(Ljava/lang/Object;)V

    :goto_2
    move p1, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/source/h$c;)V
    .locals 2

    .line 700
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/h;->j:Z

    if-nez v0, :cond_0

    .line 701
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/h;->k()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    .line 702
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/h;->j:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 705
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/source/h$d;)V
    .locals 1

    .line 813
    iget-boolean v0, p1, Landroidx/media2/exoplayer/external/source/h$d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/h$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 815
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/h;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/media2/exoplayer/external/source/h$c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 728
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/h$c;

    .line 4019
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/h$c;->a:Landroid/os/Handler;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/source/h$c;->b:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(II)V
    .locals 4

    const/4 v0, 0x1

    .line 571
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 572
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/h;->c:Landroid/os/Handler;

    .line 573
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h;->a:Ljava/util/List;

    invoke-static {v2, p1, p2}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/util/List;II)V

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 576
    new-instance v3, Landroidx/media2/exoplayer/external/source/h$e;

    .line 577
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v3, p1, p2, v2}, Landroidx/media2/exoplayer/external/source/h$e;-><init>(ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/h$c;)V

    invoke-virtual {v1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 5

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/h;->j:Z

    .line 711
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->k:Ljava/util/Set;

    .line 712
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/h;->k:Ljava/util/Set;

    .line 713
    new-instance v1, Landroidx/media2/exoplayer/external/source/h$a;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/source/h;->h:Z

    invoke-direct {v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/source/h$a;-><init>(Ljava/util/Collection;Landroidx/media2/exoplayer/external/source/an;Z)V

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/h;->a(Landroidx/media2/exoplayer/external/al;)V

    .line 714
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/h;->k()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    .line 715
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private k()Landroid/os/Handler;
    .locals 1

    .line 723
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private l()V
    .locals 3

    .line 825
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 826
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/h$d;

    .line 828
    iget-object v2, v1, Landroidx/media2/exoplayer/external/source/h$d;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/h;->b(Ljava/lang/Object;)V

    .line 830
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;I)I
    .locals 0

    .line 53
    check-cast p1, Landroidx/media2/exoplayer/external/source/h$d;

    .line 7534
    iget p1, p1, Landroidx/media2/exoplayer/external/source/h$d;->e:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/s;
    .locals 3

    .line 457
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    .line 1837
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/h$a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 458
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    .line 1842
    invoke-static {v1}, Landroidx/media2/exoplayer/external/source/h$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 458
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/source/t$a;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object p1

    .line 459
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/h;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/h$d;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Landroidx/media2/exoplayer/external/source/h$d;

    new-instance v1, Landroidx/media2/exoplayer/external/source/h$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/source/h$b;-><init>(Landroidx/media2/exoplayer/external/source/h$1;)V

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/source/h;->i:Z

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/source/h$d;-><init>(Landroidx/media2/exoplayer/external/source/t;Z)V

    const/4 v1, 0x1

    .line 463
    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/h$d;->f:Z

    .line 464
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/h;->a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;)V

    .line 2820
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/h;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2821
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/source/h;->a(Ljava/lang/Object;)V

    .line 467
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/h$d;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;

    .line 469
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/r;->b(Landroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/upstream/b;J)Landroidx/media2/exoplayer/external/source/q;

    move-result-object p1

    .line 470
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/h;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/h;->l()V

    return-object p1
.end method

.method protected final synthetic a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t$a;)Landroidx/media2/exoplayer/external/source/t$a;
    .locals 6

    .line 53
    check-cast p1, Landroidx/media2/exoplayer/external/source/h$d;

    const/4 v0, 0x0

    .line 6519
    :goto_0
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/h$d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6522
    iget-object v1, p1, Landroidx/media2/exoplayer/external/source/h$d;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/t$a;

    iget-wide v1, v1, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    iget-wide v3, p2, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 6524
    iget-object v0, p2, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    .line 6846
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/h$d;->b:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/source/h$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6525
    invoke-virtual {p2, p1}, Landroidx/media2/exoplayer/external/source/t$a;->a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/t$a;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(II)V
    .locals 0

    monitor-enter p0

    .line 318
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/h;->b(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/source/s;)V
    .locals 2

    .line 477
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->e:Ljava/util/Map;

    .line 478
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/h$d;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/h$d;

    .line 479
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;

    invoke-virtual {v1, p1}, Landroidx/media2/exoplayer/external/source/r;->a(Landroidx/media2/exoplayer/external/source/s;)V

    .line 480
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/h$d;->c:Ljava/util/List;

    check-cast p1, Landroidx/media2/exoplayer/external/source/q;

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/q;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 481
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/h;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 482
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/h;->l()V

    .line 484
    :cond_0
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/h;->a(Landroidx/media2/exoplayer/external/source/h$d;)V

    return-void
.end method

.method protected final declared-synchronized a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 2

    monitor-enter p0

    .line 438
    :try_start_0
    invoke-super {p0, p1}, Landroidx/media2/exoplayer/external/source/d;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

    .line 439
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Landroidx/media2/exoplayer/external/source/i;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/source/i;-><init>(Landroidx/media2/exoplayer/external/source/h;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/h;->c:Landroid/os/Handler;

    .line 440
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/h;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 441
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/h;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 443
    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroidx/media2/exoplayer/external/source/an;->a(II)Landroidx/media2/exoplayer/external/source/an;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    .line 444
    iget-object p1, p0, Landroidx/media2/exoplayer/external/source/h;->a:Ljava/util/List;

    invoke-direct {p0, v1, p1}, Landroidx/media2/exoplayer/external/source/h;->a(ILjava/util/Collection;)V

    const/4 p1, 0x0

    .line 1696
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/h;->a(Landroidx/media2/exoplayer/external/source/h$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final synthetic a(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/t;Landroidx/media2/exoplayer/external/al;)V
    .locals 1

    .line 53
    check-cast p1, Landroidx/media2/exoplayer/external/source/h$d;

    if-eqz p1, :cond_1

    .line 8766
    iget p2, p1, Landroidx/media2/exoplayer/external/source/h$d;->d:I

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 8767
    iget-object p2, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    iget v0, p1, Landroidx/media2/exoplayer/external/source/h$d;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/source/h$d;

    .line 8769
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result p3

    iget p2, p2, Landroidx/media2/exoplayer/external/source/h$d;->e:I

    iget v0, p1, Landroidx/media2/exoplayer/external/source/h$d;->e:I

    sub-int/2addr p2, v0

    sub-int/2addr p3, p2

    if-eqz p3, :cond_0

    .line 8772
    iget p1, p1, Landroidx/media2/exoplayer/external/source/h$d;->d:I

    add-int/lit8 p1, p1, 0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/source/h;->a(III)V

    :cond_0
    const/4 p1, 0x0

    .line 9696
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/h;->a(Landroidx/media2/exoplayer/external/source/h$c;)V

    return-void

    .line 8764
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final declared-synchronized a(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media2/exoplayer/external/source/t;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->a:Ljava/util/List;

    .line 209
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    .line 1545
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 1546
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/h;->c:Landroid/os/Handler;

    .line 1547
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/t;

    .line 1548
    invoke-static {v3}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1550
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1551
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/exoplayer/external/source/t;

    .line 1552
    new-instance v5, Landroidx/media2/exoplayer/external/source/h$d;

    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/source/h;->i:Z

    invoke-direct {v5, v4, v6}, Landroidx/media2/exoplayer/external/source/h$d;-><init>(Landroidx/media2/exoplayer/external/source/t;Z)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1554
    :cond_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/h;->a:Ljava/util/List;

    invoke-interface {v3, v0, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    if-eqz v1, :cond_2

    .line 1555
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const/4 v3, 0x0

    .line 1557
    new-instance v4, Landroidx/media2/exoplayer/external/source/h$e;

    invoke-direct {v4, v0, v2, p1}, Landroidx/media2/exoplayer/external/source/h$e;-><init>(ILjava/lang/Object;Landroidx/media2/exoplayer/external/source/h$c;)V

    .line 1558
    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1559
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final synthetic a(Landroid/os/Message;)Z
    .locals 7

    .line 10647
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 10686
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 10687
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/h;->a(Ljava/util/Set;)V

    goto/16 :goto_3

    .line 10690
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 10683
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/source/h;->j()V

    goto/16 :goto_3

    .line 10677
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10678
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/h$e;

    .line 10679
    iget-object v0, p1, Landroidx/media2/exoplayer/external/source/h$e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/exoplayer/external/source/an;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    .line 10680
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/h$e;->c:Landroidx/media2/exoplayer/external/source/h$c;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/h;->a(Landroidx/media2/exoplayer/external/source/h$c;)V

    goto/16 :goto_3

    .line 10670
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/h$e;

    .line 10671
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    iget v2, p1, Landroidx/media2/exoplayer/external/source/h$e;->a:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/h$e;->a:I

    add-int/2addr v3, v1

    invoke-interface {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/an;->b(II)Landroidx/media2/exoplayer/external/source/an;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    .line 10672
    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/h$e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2, v1}, Landroidx/media2/exoplayer/external/source/an;->a(II)Landroidx/media2/exoplayer/external/source/an;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    .line 10673
    iget v0, p1, Landroidx/media2/exoplayer/external/source/h$e;->a:I

    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/h$e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 11789
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 11790
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 11791
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/source/h$d;

    iget v5, v5, Landroidx/media2/exoplayer/external/source/h$d;->e:I

    .line 11792
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/h$d;

    invoke-interface {v6, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v3, v4, :cond_4

    .line 11794
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/source/h$d;

    .line 11795
    iput v3, v0, Landroidx/media2/exoplayer/external/source/h$d;->d:I

    .line 11796
    iput v5, v0, Landroidx/media2/exoplayer/external/source/h$d;->e:I

    .line 11797
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;

    .line 12070
    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    .line 11797
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result v0

    add-int/2addr v5, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10674
    :cond_4
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/h$e;->c:Landroidx/media2/exoplayer/external/source/h$c;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/h;->a(Landroidx/media2/exoplayer/external/source/h$c;)V

    goto/16 :goto_3

    .line 10656
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/h$e;

    .line 10657
    iget v0, p1, Landroidx/media2/exoplayer/external/source/h$e;->a:I

    .line 10658
    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/h$e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v0, :cond_6

    .line 10659
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/source/an;->a()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 10660
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    invoke-interface {v3}, Landroidx/media2/exoplayer/external/source/an;->d()Landroidx/media2/exoplayer/external/source/an;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    goto :goto_1

    .line 10662
    :cond_6
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    invoke-interface {v3, v0, v2}, Landroidx/media2/exoplayer/external/source/an;->b(II)Landroidx/media2/exoplayer/external/source/an;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    :goto_1
    sub-int/2addr v2, v1

    :goto_2
    if-lt v2, v0, :cond_7

    .line 10780
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/source/h$d;

    .line 10781
    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/h;->f:Ljava/util/Map;

    iget-object v5, v3, Landroidx/media2/exoplayer/external/source/h$d;->b:Ljava/lang/Object;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10782
    iget-object v4, v3, Landroidx/media2/exoplayer/external/source/h$d;->a:Landroidx/media2/exoplayer/external/source/r;

    .line 11070
    iget-object v4, v4, Landroidx/media2/exoplayer/external/source/r;->a:Landroidx/media2/exoplayer/external/source/r$b;

    .line 10783
    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/al;->b()I

    move-result v4

    neg-int v4, v4

    const/4 v5, -0x1

    invoke-direct {p0, v2, v5, v4}, Landroidx/media2/exoplayer/external/source/h;->a(III)V

    .line 10784
    iput-boolean v1, v3, Landroidx/media2/exoplayer/external/source/h$d;->f:Z

    .line 10785
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/source/h;->a(Landroidx/media2/exoplayer/external/source/h$d;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 10667
    :cond_7
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/h$e;->c:Landroidx/media2/exoplayer/external/source/h$c;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/h;->a(Landroidx/media2/exoplayer/external/source/h$c;)V

    goto :goto_3

    .line 10649
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10650
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/exoplayer/external/source/h$e;

    .line 10651
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    iget v2, p1, Landroidx/media2/exoplayer/external/source/h$e;->a:I

    iget-object v3, p1, Landroidx/media2/exoplayer/external/source/h$e;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroidx/media2/exoplayer/external/source/an;->a(II)Landroidx/media2/exoplayer/external/source/an;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    .line 10652
    iget v0, p1, Landroidx/media2/exoplayer/external/source/h$e;->a:I

    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/h$e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p0, v0, v2}, Landroidx/media2/exoplayer/external/source/h;->a(ILjava/util/Collection;)V

    .line 10653
    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/h$e;->c:Landroidx/media2/exoplayer/external/source/h$c;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/h;->a(Landroidx/media2/exoplayer/external/source/h$c;)V

    :goto_3
    return v1
.end method

.method protected final b()V
    .locals 1

    .line 489
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/d;->b()V

    .line 490
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method protected final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 495
    :try_start_0
    invoke-super {p0}, Landroidx/media2/exoplayer/external/source/d;->c()V

    .line 496
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 497
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 498
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 499
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/source/an;->d()Landroidx/media2/exoplayer/external/source/an;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->l:Landroidx/media2/exoplayer/external/source/an;

    .line 500
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 501
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 502
    iput-object v1, p0, Landroidx/media2/exoplayer/external/source/h;->c:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/h;->j:Z

    .line 505
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 506
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->b:Ljava/util/Set;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/h;->a(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized g()Landroidx/media2/exoplayer/external/source/t;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 275
    :try_start_0
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/h;->a(I)Landroidx/media2/exoplayer/external/source/t;

    move-result-object v1

    const/4 v2, 0x1

    .line 276
    invoke-direct {p0, v0, v2}, Landroidx/media2/exoplayer/external/source/h;->b(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 376
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/h;->i()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/h;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()I
    .locals 1

    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
