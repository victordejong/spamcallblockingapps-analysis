.class public final Lcom/criteo/publisher/l/e;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/criteo/publisher/model/a0;

.field private final c:Lcom/criteo/publisher/model/u;

.field private final d:Lcom/criteo/publisher/l/d;

.field private final e:Lcom/criteo/publisher/j0/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/criteo/publisher/model/a0;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/l/d;Lcom/criteo/publisher/j0/g;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/criteo/publisher/l/e;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/criteo/publisher/l/e;->b:Lcom/criteo/publisher/model/a0;

    .line 59
    iput-object p3, p0, Lcom/criteo/publisher/l/e;->c:Lcom/criteo/publisher/model/u;

    .line 60
    iput-object p4, p0, Lcom/criteo/publisher/l/e;->d:Lcom/criteo/publisher/l/d;

    .line 61
    iput-object p5, p0, Lcom/criteo/publisher/l/e;->e:Lcom/criteo/publisher/j0/g;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/criteo/publisher/l/e;->b:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/model/a0;->a(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/criteo/publisher/l/e;->b:Lcom/criteo/publisher/model/a0;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/a0;->c()V

    .line 94
    iget-object p1, p0, Lcom/criteo/publisher/l/e;->d:Lcom/criteo/publisher/l/d;

    sget-object v0, Lcom/criteo/publisher/o;->a:Lcom/criteo/publisher/o;

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/l/d;->a(Lcom/criteo/publisher/o;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/criteo/publisher/l/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/criteo/publisher/l/e;->c:Lcom/criteo/publisher/model/u;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/u;->b()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/criteo/publisher/l/e;->e:Lcom/criteo/publisher/j0/g;

    invoke-virtual {v2, v0, v1}, Lcom/criteo/publisher/j0/g;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 86
    :try_start_0
    invoke-static {v0}, Lcom/criteo/publisher/m0/r;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    .line 85
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    .line 87
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method private c()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/criteo/publisher/l/e;->b:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/a0;->a()V

    .line 100
    iget-object v0, p0, Lcom/criteo/publisher/l/e;->d:Lcom/criteo/publisher/l/d;

    sget-object v1, Lcom/criteo/publisher/o;->c:Lcom/criteo/publisher/o;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/l/d;->a(Lcom/criteo/publisher/o;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/criteo/publisher/l/e;->b()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {v0}, Lcom/criteo/publisher/m0/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/criteo/publisher/l/e;->c()V

    return-void

    .line 74
    :cond_0
    invoke-direct {p0, v0}, Lcom/criteo/publisher/l/e;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 71
    invoke-static {v1}, Lcom/criteo/publisher/m0/s;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/criteo/publisher/l/e;->c()V

    goto :goto_0

    .line 74
    :cond_1
    invoke-direct {p0, v1}, Lcom/criteo/publisher/l/e;->a(Ljava/lang/String;)V

    .line 76
    :goto_0
    throw v0
.end method
