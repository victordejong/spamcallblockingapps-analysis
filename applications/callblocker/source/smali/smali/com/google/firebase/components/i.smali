.class public Lcom/google/firebase/components/i;
.super Lcom/google/firebase/components/a;
.source "com.google.firebase:firebase-components@@16.0.0"


# static fields
.field private static final a:Lcom/google/firebase/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/c/a",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/firebase/components/b",
            "<*>;",
            "Lcom/google/firebase/components/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/firebase/components/q",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/firebase/components/q",
            "<",
            "Ljava/util/Set",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/firebase/components/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/firebase/components/l;->b()Lcom/google/firebase/c/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/components/i;->a:Lcom/google/firebase/c/a;

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/firebase/components/h;",
            ">;[",
            "Lcom/google/firebase/components/b",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/google/firebase/components/a;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/i;->b:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/i;->c:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/components/i;->d:Ljava/util/Map;

    .line 50
    new-instance v0, Lcom/google/firebase/components/o;

    invoke-direct {v0, p1}, Lcom/google/firebase/components/o;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/firebase/components/i;->e:Lcom/google/firebase/components/o;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/google/firebase/components/i;->e:Lcom/google/firebase/components/o;

    const-class v3, Lcom/google/firebase/components/o;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/google/firebase/a/d;

    aput-object v5, v4, v1

    const/4 v5, 0x1

    const-class v6, Lcom/google/firebase/a/c;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Lcom/google/firebase/components/b;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/h;

    .line 55
    invoke-interface {v0}, Lcom/google/firebase/components/h;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 57
    :cond_0
    array-length v3, p3

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v1, p3, v0

    .line 58
    if-eqz v1, :cond_1

    .line 59
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_2
    invoke-static {v2}, Lcom/google/firebase/components/m;->a(Ljava/util/List;)V

    .line 65
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/b;

    .line 66
    new-instance v2, Lcom/google/firebase/components/q;

    invoke-static {p0, v0}, Lcom/google/firebase/components/j;->a(Lcom/google/firebase/components/i;Lcom/google/firebase/components/b;)Lcom/google/firebase/c/a;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/components/q;-><init>(Lcom/google/firebase/c/a;)V

    .line 71
    iget-object v3, p0, Lcom/google/firebase/components/i;->b:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 73
    :cond_3
    invoke-direct {p0}, Lcom/google/firebase/components/i;->a()V

    .line 74
    invoke-direct {p0}, Lcom/google/firebase/components/i;->b()V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/google/firebase/components/i;Lcom/google/firebase/components/b;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/google/firebase/components/b;->c()Lcom/google/firebase/components/g;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/components/s;

    invoke-direct {v1, p1, p0}, Lcom/google/firebase/components/s;-><init>(Lcom/google/firebase/components/b;Lcom/google/firebase/components/e;)V

    invoke-interface {v0, v1}, Lcom/google/firebase/components/g;->a(Lcom/google/firebase/components/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 119
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 120
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/q;

    .line 121
    invoke-virtual {v0}, Lcom/google/firebase/components/q;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/firebase/components/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/b;

    .line 80
    invoke-virtual {v1}, Lcom/google/firebase/components/b;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/q;

    .line 85
    invoke-virtual {v1}, Lcom/google/firebase/components/b;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 86
    iget-object v4, p0, Lcom/google/firebase/components/i;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/components/i;->c()V

    .line 90
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 94
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/google/firebase/components/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/b;

    .line 99
    invoke-virtual {v1}, Lcom/google/firebase/components/b;->g()Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/q;

    .line 105
    invoke-virtual {v1}, Lcom/google/firebase/components/b;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 106
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 107
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 115
    iget-object v3, p0, Lcom/google/firebase/components/i;->d:Ljava/util/Map;

    .line 116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-instance v4, Lcom/google/firebase/components/q;

    invoke-static {v1}, Lcom/google/firebase/components/k;->a(Ljava/util/Set;)Lcom/google/firebase/c/a;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/google/firebase/components/q;-><init>(Lcom/google/firebase/c/a;)V

    .line 115
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 126
    :cond_3
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/firebase/components/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/b;

    .line 167
    invoke-virtual {v0}, Lcom/google/firebase/components/b;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/n;

    .line 168
    invoke-virtual {v1}, Lcom/google/firebase/components/n;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/firebase/components/i;->c:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/firebase/components/n;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 169
    new-instance v2, Lcom/google/firebase/components/MissingDependencyException;

    const-string/jumbo v3, "Unsatisfied dependency for component %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    .line 172
    invoke-virtual {v1}, Lcom/google/firebase/components/n;->a()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v4, v0

    .line 170
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/components/MissingDependencyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/firebase/components/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/firebase/components/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/components/b;

    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/q;

    .line 157
    invoke-virtual {v1}, Lcom/google/firebase/components/b;->e()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/components/b;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 158
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/components/q;->a()Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/components/i;->e:Lcom/google/firebase/components/o;

    invoke-virtual {v0}, Lcom/google/firebase/components/o;->a()V

    .line 163
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/firebase/components/a;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Class;)Lcom/google/firebase/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/firebase/c/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    const-string/jumbo v0, "Null interface requested."

    invoke-static {p1, v0}, Lcom/google/firebase/components/r;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/google/firebase/components/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/c/a;

    return-object v0
.end method

.method public d(Ljava/lang/Class;)Lcom/google/firebase/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/firebase/c/a",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/firebase/components/i;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/components/q;

    .line 139
    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/firebase/components/i;->a:Lcom/google/firebase/c/a;

    goto :goto_0
.end method
