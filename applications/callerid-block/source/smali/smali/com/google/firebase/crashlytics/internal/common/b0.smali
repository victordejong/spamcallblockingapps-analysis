.class public Lcom/google/firebase/crashlytics/internal/common/b0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/internal/common/m;

.field private final b:Lcom/google/firebase/crashlytics/d/j/g;

.field private final c:Lcom/google/firebase/crashlytics/d/k/c;

.field private final d:Lcom/google/firebase/crashlytics/d/g/b;

.field private final e:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/m;Lcom/google/firebase/crashlytics/d/j/g;Lcom/google/firebase/crashlytics/d/k/c;Lcom/google/firebase/crashlytics/d/g/b;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->a:Lcom/google/firebase/crashlytics/internal/common/m;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->c:Lcom/google/firebase/crashlytics/d/k/c;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->d:Lcom/google/firebase/crashlytics/d/g/b;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->e:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/crashlytics/internal/common/b0;Lcom/google/android/gms/tasks/g;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/b0;->j(Lcom/google/android/gms/tasks/g;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/t;Lcom/google/firebase/crashlytics/d/j/h;Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/d/g/b;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;Lcom/google/firebase/crashlytics/d/l/d;Lcom/google/firebase/crashlytics/internal/settings/d;)Lcom/google/firebase/crashlytics/internal/common/b0;
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-interface {p2}, Lcom/google/firebase/crashlytics/d/j/h;->a()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/m;

    invoke-direct {v2, p0, p1, p3, p6}, Lcom/google/firebase/crashlytics/internal/common/m;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/t;Lcom/google/firebase/crashlytics/internal/common/a;Lcom/google/firebase/crashlytics/d/l/d;)V

    new-instance v3, Lcom/google/firebase/crashlytics/d/j/g;

    invoke-direct {v3, v0, p7}, Lcom/google/firebase/crashlytics/d/j/g;-><init>(Ljava/io/File;Lcom/google/firebase/crashlytics/internal/settings/d;)V

    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/k/c;->a(Landroid/content/Context;)Lcom/google/firebase/crashlytics/d/k/c;

    move-result-object v4

    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/b0;

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/common/b0;-><init>(Lcom/google/firebase/crashlytics/internal/common/m;Lcom/google/firebase/crashlytics/d/j/g;Lcom/google/firebase/crashlytics/d/k/c;Lcom/google/firebase/crashlytics/d/g/b;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V

    return-object p0
.end method

.method private static e(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/d/h/v$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/v$b;->a()Lcom/google/firebase/crashlytics/d/h/v$b$a;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/d/h/v$b$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/v$b$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/d/h/v$b$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/v$b$a;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/v$b$a;->a()Lcom/google/firebase/crashlytics/d/h/v$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/common/a0;->a()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic g(Lcom/google/firebase/crashlytics/d/h/v$b;Lcom/google/firebase/crashlytics/d/h/v$b;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/v$b;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/h/v$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private j(Lcom/google/android/gms/tasks/g;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/g<",
            "Lcom/google/firebase/crashlytics/internal/common/n;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/crashlytics/internal/common/n;

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics report successfully enqueued to DataTransport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/n;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/j/g;->h(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/g;->j()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/d/b;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private k(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 11

    move-object v0, p0

    const-string v1, "crash"

    move-object v5, p4

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/common/b0;->a:Lcom/google/firebase/crashlytics/internal/common/m;

    const/4 v8, 0x4

    const/16 v9, 0x8

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v6, p5

    move/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/google/firebase/crashlytics/internal/common/m;->b(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Lcom/google/firebase/crashlytics/d/h/v$d$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/v$d$d;->g()Lcom/google/firebase/crashlytics/d/h/v$d$d$b;

    move-result-object v3

    iget-object v4, v0, Lcom/google/firebase/crashlytics/internal/common/b0;->d:Lcom/google/firebase/crashlytics/d/g/b;

    invoke-virtual {v4}, Lcom/google/firebase/crashlytics/d/g/b;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/v$d$d$d;->a()Lcom/google/firebase/crashlytics/d/h/v$d$d$d$a;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/firebase/crashlytics/d/h/v$d$d$d$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/h/v$d$d$d$a;

    invoke-virtual {v5}, Lcom/google/firebase/crashlytics/d/h/v$d$d$d$a;->a()Lcom/google/firebase/crashlytics/d/h/v$d$d$d;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/d/h/v$d$d$b;->d(Lcom/google/firebase/crashlytics/d/h/v$d$d$d;)Lcom/google/firebase/crashlytics/d/h/v$d$d$b;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v4

    const-string v5, "No log data to include with this event."

    invoke-virtual {v4, v5}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    :goto_0
    iget-object v4, v0, Lcom/google/firebase/crashlytics/internal/common/b0;->e:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {v4}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->c()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/crashlytics/internal/common/b0;->e(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/v$d$d;->b()Lcom/google/firebase/crashlytics/d/h/v$d$d$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/v$d$d$a;->f()Lcom/google/firebase/crashlytics/d/h/v$d$d$a$a;

    move-result-object v2

    invoke-static {v4}, Lcom/google/firebase/crashlytics/d/h/w;->a(Ljava/util/List;)Lcom/google/firebase/crashlytics/d/h/w;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/firebase/crashlytics/d/h/v$d$d$a$a;->c(Lcom/google/firebase/crashlytics/d/h/w;)Lcom/google/firebase/crashlytics/d/h/v$d$d$a$a;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/v$d$d$a$a;->a()Lcom/google/firebase/crashlytics/d/h/v$d$d$a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/d/h/v$d$d$b;->b(Lcom/google/firebase/crashlytics/d/h/v$d$d$a;)Lcom/google/firebase/crashlytics/d/h/v$d$d$b;

    :cond_1
    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/d/h/v$d$d$b;->a()Lcom/google/firebase/crashlytics/d/h/v$d$d;

    move-result-object v3

    move-object v4, p3

    invoke-virtual {v2, v3, p3, v1}, Lcom/google/firebase/crashlytics/d/j/g;->C(Lcom/google/firebase/crashlytics/d/h/v$d$d;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/x;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/crashlytics/internal/common/x;

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/common/x;->c()Lcom/google/firebase/crashlytics/d/h/v$c$b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    invoke-static {}, Lcom/google/firebase/crashlytics/d/h/v$c;->a()Lcom/google/firebase/crashlytics/d/h/v$c$a;

    move-result-object v1

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/w;->a(Ljava/util/List;)Lcom/google/firebase/crashlytics/d/h/w;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/d/h/v$c$a;->b(Lcom/google/firebase/crashlytics/d/h/w;)Lcom/google/firebase/crashlytics/d/h/v$c$a;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/v$c$a;->a()Lcom/google/firebase/crashlytics/d/h/v$c;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/crashlytics/d/j/g;->j(Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/v$c;)V

    return-void
.end method

.method public d(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    invoke-virtual {v0, p3, p1, p2}, Lcom/google/firebase/crashlytics/d/j/g;->i(Ljava/lang/String;J)V

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/j/g;->r()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/j/g;->y()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->a:Lcom/google/firebase/crashlytics/internal/common/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/m;->c(Ljava/lang/String;J)Lcom/google/firebase/crashlytics/d/h/v;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/d/j/g;->D(Lcom/google/firebase/crashlytics/d/h/v;)V

    return-void
.end method

.method public l(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    const-string v6, "crash"

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/b0;->k(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public m(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting non-fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    const-string v6, "error"

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/b0;->k(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->e:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->f()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Could not persist user ID; no user ID available"

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    invoke-virtual {v1, v0, p1}, Lcom/google/firebase/crashlytics/d/j/g;->E(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/j/g;->g()V

    return-void
.end method

.method public p(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lcom/google/firebase/crashlytics/d/j/g;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/j/g;->z()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/crashlytics/internal/common/n;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->c:Lcom/google/firebase/crashlytics/d/k/c;

    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/d/k/c;->e(Lcom/google/firebase/crashlytics/internal/common/n;)Lcom/google/android/gms/tasks/g;

    move-result-object v2

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/z;->b(Lcom/google/firebase/crashlytics/internal/common/b0;)Lcom/google/android/gms/tasks/a;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/tasks/g;->g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/a;)Lcom/google/android/gms/tasks/g;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/tasks/j;->f(Ljava/util/Collection;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
