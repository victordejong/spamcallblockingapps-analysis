.class final Lcom/google/android/gms/measurement/internal/kh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/google/android/gms/internal/measurement/ao$i;

.field private d:Ljava/util/BitSet;

.field private e:Ljava/util/BitSet;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final synthetic h:Lcom/google/android/gms/measurement/internal/kf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kh;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/kh;->a:Ljava/lang/String;

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kh;->b:Z

    .line 4
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->d:Ljava/util/BitSet;

    .line 5
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->e:Ljava/util/BitSet;

    .line 6
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->f:Ljava/util/Map;

    .line 7
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/util/Map;

    .line 8
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ao$i;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/ao$i;",
            "Ljava/util/BitSet;",
            "Ljava/util/BitSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kh;->h:Lcom/google/android/gms/measurement/internal/kf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/kh;->a:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/kh;->d:Ljava/util/BitSet;

    .line 12
    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/kh;->e:Ljava/util/BitSet;

    .line 13
    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/kh;->f:Ljava/util/Map;

    .line 14
    new-instance v0, Landroidx/b/a;

    invoke-direct {v0}, Landroidx/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/util/Map;

    .line 15
    if-eqz p7, :cond_0

    .line 16
    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {p7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/util/Map;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kh;->b:Z

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/kh;->c:Lcom/google/android/gms/internal/measurement/ao$i;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ao$i;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/ke;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/measurement/internal/kh;-><init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ao$i;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ke;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/kh;-><init>(Lcom/google/android/gms/measurement/internal/kf;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/kh;)Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->d:Ljava/util/BitSet;

    return-object v0
.end method


# virtual methods
.method final a(I)Lcom/google/android/gms/internal/measurement/ao$a;
    .locals 8

    .prologue
    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$a;->h()Lcom/google/android/gms/internal/measurement/ao$a$a;

    move-result-object v2

    .line 61
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/measurement/ao$a$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$a$a;

    .line 62
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/kh;->b:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/ao$a$a;->a(Z)Lcom/google/android/gms/internal/measurement/ao$a$a;

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->c:Lcom/google/android/gms/internal/measurement/ao$i;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->c:Lcom/google/android/gms/internal/measurement/ao$i;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/ao$a$a;->a(Lcom/google/android/gms/internal/measurement/ao$i;)Lcom/google/android/gms/internal/measurement/ao$a$a;

    .line 65
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$i;->i()Lcom/google/android/gms/internal/measurement/ao$i$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kh;->d:Ljava/util/BitSet;

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$i$a;->b(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$i$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kh;->e:Ljava/util/BitSet;

    .line 67
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/js;->a(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ao$i$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$i$a;

    move-result-object v3

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->f:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x0

    .line 82
    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/ao$i$a;->c(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$i$a;

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 99
    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/ao$i$a;->d(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$i$a;

    .line 100
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/ao$a$a;->a(Lcom/google/android/gms/internal/measurement/ao$i$a;)Lcom/google/android/gms/internal/measurement/ao$a$a;

    .line 101
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$a;

    return-object v0

    .line 71
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->f:Ljava/util/Map;

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$b;->e()Lcom/google/android/gms/internal/measurement/ao$b$a;

    move-result-object v5

    .line 76
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/ao$b$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$b$a;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kh;->f:Ljava/util/Map;

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/ao$b$a;->a(J)Lcom/google/android/gms/internal/measurement/ao$b$a;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$b;

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v0, v1

    .line 81
    goto :goto_0

    .line 87
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/util/Map;

    .line 88
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ao$j;->e()Lcom/google/android/gms/internal/measurement/ao$j$a;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/ao$j$a;->a(I)Lcom/google/android/gms/internal/measurement/ao$j$a;

    move-result-object v5

    .line 91
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    if-eqz v0, :cond_4

    .line 93
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 94
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/ao$j$a;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/ao$j$a;

    .line 95
    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/ed$b;->u()Lcom/google/android/gms/internal/measurement/fn;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ed;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ao$j;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 97
    goto/16 :goto_1
.end method

.method final a(Lcom/google/android/gms/measurement/internal/ki;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ki;->a()I

    move-result v1

    .line 25
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/ki;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->e:Ljava/util/BitSet;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/ki;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 27
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/ki;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->d:Ljava/util/BitSet;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/ki;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 29
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/ki;->e:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 31
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/ki;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v2, v6

    .line 32
    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/ki;->f:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 37
    if-nez v0, :cond_4

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kh;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ki;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/iz;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kh;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kh;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->ag:Lcom/google/android/gms/measurement/internal/dr;

    .line 44
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    .line 45
    if-eqz v1, :cond_6

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/ki;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 47
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/iz;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/kh;->h:Lcom/google/android/gms/measurement/internal/kf;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/kh;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->ag:Lcom/google/android/gms/measurement/internal/dr;

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/b;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    .line 51
    if-eqz v1, :cond_8

    .line 52
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/ki;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v2, v6

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 54
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_7
    :goto_0
    return-void

    .line 56
    :cond_8
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/ki;->f:Ljava/lang/Long;

    .line 57
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
