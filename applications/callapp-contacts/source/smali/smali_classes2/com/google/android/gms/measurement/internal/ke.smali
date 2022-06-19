.class final Lcom/google/android/gms/measurement/internal/ke;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/BitSet;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/kj;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/google/android/gms/internal/measurement/cl;

.field private f:Ljava/util/BitSet;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/kj;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/cl;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/kd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ke;->b:Lcom/google/android/gms/measurement/internal/kj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ke;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/ke;->a:Ljava/util/BitSet;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/ke;->f:Ljava/util/BitSet;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/ke;->g:Ljava/util/Map;

    new-instance p1, Landroidx/b/a;

    .line 5
    invoke-direct {p1}, Landroidx/b/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ke;->h:Ljava/util/Map;

    .line 6
    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p4, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/ke;->h:Ljava/util/Map;

    .line 9
    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/ke;->d:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/ke;->e:Lcom/google/android/gms/internal/measurement/cl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/kj;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/kd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ke;->b:Lcom/google/android/gms/measurement/internal/kj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ke;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/ke;->d:Z

    new-instance p1, Ljava/util/BitSet;

    .line 1
    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ke;->a:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    .line 2
    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ke;->f:Ljava/util/BitSet;

    .line 3
    new-instance p1, Landroidx/b/a;

    invoke-direct {p1}, Landroidx/b/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ke;->g:Ljava/util/Map;

    new-instance p1, Landroidx/b/a;

    .line 4
    invoke-direct {p1}, Landroidx/b/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ke;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final a(I)Lcom/google/android/gms/internal/measurement/br;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/br;->b()Lcom/google/android/gms/internal/measurement/bq;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bq;->a(I)Lcom/google/android/gms/internal/measurement/bq;

    iget-boolean p1, p0, Lcom/google/android/gms/measurement/internal/ke;->d:Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bq;->a(Z)Lcom/google/android/gms/internal/measurement/bq;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/ke;->e:Lcom/google/android/gms/internal/measurement/cl;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bq;->a(Lcom/google/android/gms/internal/measurement/cl;)Lcom/google/android/gms/internal/measurement/bq;

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cl;->d()Lcom/google/android/gms/internal/measurement/ck;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ke;->a:Ljava/util/BitSet;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ck;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ck;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ke;->f:Ljava/util/BitSet;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ck;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ck;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ke;->g:Ljava/util/Map;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 24
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ke;->g:Ljava/util/Map;

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ke;->g:Ljava/util/Map;

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bu;->c()Lcom/google/android/gms/internal/measurement/bs;

    move-result-object v5

    .line 12
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/bs;->a(I)Lcom/google/android/gms/internal/measurement/bs;

    .line 13
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/bs;->a(J)Lcom/google/android/gms/internal/measurement/bs;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/bu;

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ck;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ck;

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ke;->h:Ljava/util/Map;

    if-nez v1, :cond_5

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_3

    .line 27
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 18
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ke;->h:Ljava/util/Map;

    .line 19
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cn;->c()Lcom/google/android/gms/internal/measurement/cm;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/cm;->a(I)Lcom/google/android/gms/internal/measurement/cm;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/ke;->h:Ljava/util/Map;

    .line 21
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_6

    .line 22
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 23
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/measurement/cm;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/cm;

    .line 24
    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/cn;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object v1, v2

    .line 25
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ck;->d(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ck;

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bq;->a(Lcom/google/android/gms/internal/measurement/ck;)Lcom/google/android/gms/internal/measurement/bq;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/br;

    return-object p1
.end method

.method final a(Lcom/google/android/gms/measurement/internal/kh;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/kh;->a()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kh;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ke;->f:Ljava/util/BitSet;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kh;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ke;->a:Ljava/util/BitSet;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kh;->f:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ke;->g:Ljava/util/Map;

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/kh;->f:Ljava/lang/Long;

    .line 5
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    div-long/2addr v5, v2

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-lez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ke;->g:Ljava/util/Map;

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/lang/Long;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ke;->h:Ljava/util/Map;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ke;->h:Ljava/util/Map;

    .line 10
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/kh;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/kk;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ke;->b:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 13
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ke;->c:Ljava/lang/String;

    .line 14
    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->Z:Lcom/google/android/gms/measurement/internal/da;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/kh;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 17
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/kk;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ke;->b:Lcom/google/android/gms/measurement/internal/kj;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 18
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/ke;->c:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/dc;->Z:Lcom/google/android/gms/measurement/internal/da;

    .line 19
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/lang/Long;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 24
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_7
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/lang/Long;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 21
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method
