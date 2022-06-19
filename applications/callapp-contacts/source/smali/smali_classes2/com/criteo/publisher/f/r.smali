.class final Lcom/criteo/publisher/f/r;
.super Lcom/criteo/publisher/f/w;
.source "SourceFile"


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/f/t;

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/io/File;",
            "Lcom/criteo/publisher/f/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f/t;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/criteo/publisher/f/w;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f/r;->a:Lcom/criteo/publisher/logging/g;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/f/r;->c:Ljava/util/concurrent/ConcurrentMap;

    .line 46
    iput-object p1, p0, Lcom/criteo/publisher/f/r;->b:Lcom/criteo/publisher/f/t;

    return-void
.end method

.method private a(Ljava/io/File;)Lcom/criteo/publisher/f/h;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/criteo/publisher/f/r;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lcom/criteo/publisher/f/r$a;

    invoke-direct {v1, p0, p1}, Lcom/criteo/publisher/f/r$a;-><init>(Lcom/criteo/publisher/f/r;Ljava/io/File;)V

    invoke-static {v0, p1, v1}, Lcom/criteo/publisher/m0/m;->a(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/criteo/publisher/f/h;

    return-object p1
.end method

.method static synthetic a(Lcom/criteo/publisher/f/r;)Lcom/criteo/publisher/f/t;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/criteo/publisher/f/r;->b:Lcom/criteo/publisher/f/t;

    return-object p0
.end method


# virtual methods
.method final a()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/criteo/publisher/f/s;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/criteo/publisher/f/r;->b:Lcom/criteo/publisher/f/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/f/t;->a()Ljava/util/Collection;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 81
    :try_start_0
    invoke-direct {p0, v2}, Lcom/criteo/publisher/f/r;->a(Ljava/io/File;)Lcom/criteo/publisher/f/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/criteo/publisher/f/h;->a()Lcom/criteo/publisher/f/s;

    move-result-object v2

    .line 82
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 84
    iget-object v3, p0, Lcom/criteo/publisher/f/r;->a:Lcom/criteo/publisher/logging/g;

    const-string v4, "Error while reading metric"

    invoke-virtual {v3, v4, v2}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method final a(Ljava/lang/String;Lcom/criteo/publisher/f/u;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/f/r;->b:Lcom/criteo/publisher/f/t;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/f/t;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Lcom/criteo/publisher/f/r;->a(Ljava/io/File;)Lcom/criteo/publisher/f/h;

    move-result-object p1

    .line 67
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/criteo/publisher/f/h;->a(Lcom/criteo/publisher/f/u;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 69
    iget-object p2, p0, Lcom/criteo/publisher/f/r;->a:Lcom/criteo/publisher/logging/g;

    const-string v0, "Error while moving metric"

    invoke-virtual {p2, v0, p1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final a(Ljava/lang/String;Lcom/criteo/publisher/f/w$a;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/criteo/publisher/f/r;->b:Lcom/criteo/publisher/f/t;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/f/t;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Lcom/criteo/publisher/f/r;->a(Ljava/io/File;)Lcom/criteo/publisher/f/h;

    move-result-object p1

    .line 55
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/criteo/publisher/f/h;->a(Lcom/criteo/publisher/f/w$a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 57
    iget-object p2, p0, Lcom/criteo/publisher/f/r;->a:Lcom/criteo/publisher/logging/g;

    const-string v0, "Error while updating metric"

    invoke-virtual {p2, v0, p1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final a(Ljava/lang/String;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/criteo/publisher/f/r;->b:Lcom/criteo/publisher/f/t;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/f/t;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/criteo/publisher/f/r;->b:Lcom/criteo/publisher/f/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/f/t;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final b()I
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/criteo/publisher/f/r;->b:Lcom/criteo/publisher/f/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/f/t;->a()Ljava/util/Collection;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    int-to-long v3, v1

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v1

    add-long/2addr v3, v1

    long-to-int v1, v3

    goto :goto_0

    :cond_0
    return v1
.end method
