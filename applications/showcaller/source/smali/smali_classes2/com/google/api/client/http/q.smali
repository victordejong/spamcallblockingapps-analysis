.class public final Lcom/google/api/client/http/q;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Lcom/google/api/client/util/y;

.field private final C:Lio/opencensus/trace/r;

.field private D:Z

.field private c:Lcom/google/api/client/http/m;

.field private d:Lcom/google/api/client/http/n;

.field private e:Lcom/google/api/client/http/n;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Lcom/google/api/client/http/j;

.field private final k:Lcom/google/api/client/http/w;

.field private l:Ljava/lang/String;

.field private m:Lcom/google/api/client/http/i;

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/google/api/client/http/x;

.field private r:Lcom/google/api/client/http/o;

.field private s:Lcom/google/api/client/http/u;

.field private t:Lcom/google/api/client/util/u;

.field private u:Lcom/google/api/client/http/k;

.field private v:Lcom/google/api/client/http/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/api/client/http/q;->r()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/q;->a:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Google-HTTP-Java-Client/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (gzip)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/q;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/api/client/http/w;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/api/client/http/n;

    invoke-direct {v0}, Lcom/google/api/client/http/n;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    .line 3
    new-instance v0, Lcom/google/api/client/http/n;

    invoke-direct {v0}, Lcom/google/api/client/http/n;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/q;->e:Lcom/google/api/client/http/n;

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/google/api/client/http/q;->f:I

    const/16 v0, 0x4000

    .line 5
    iput v0, p0, Lcom/google/api/client/http/q;->g:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/api/client/http/q;->h:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/api/client/http/q;->i:Z

    const/16 v1, 0x4e20

    .line 8
    iput v1, p0, Lcom/google/api/client/http/q;->n:I

    .line 9
    iput v1, p0, Lcom/google/api/client/http/q;->o:I

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/google/api/client/http/q;->p:I

    .line 11
    iput-boolean v0, p0, Lcom/google/api/client/http/q;->w:Z

    .line 12
    iput-boolean v1, p0, Lcom/google/api/client/http/q;->x:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/api/client/http/q;->y:Z

    .line 14
    iput-boolean v1, p0, Lcom/google/api/client/http/q;->z:Z

    .line 15
    sget-object v0, Lcom/google/api/client/util/y;->a:Lcom/google/api/client/util/y;

    iput-object v0, p0, Lcom/google/api/client/http/q;->B:Lcom/google/api/client/util/y;

    .line 16
    invoke-static {}, Lcom/google/api/client/http/c0;->b()Lio/opencensus/trace/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/q;->C:Lio/opencensus/trace/r;

    .line 17
    iput-boolean v1, p0, Lcom/google/api/client/http/q;->D:Z

    .line 18
    iput-object p1, p0, Lcom/google/api/client/http/q;->k:Lcom/google/api/client/http/w;

    .line 19
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/q;->z(Ljava/lang/String;)Lcom/google/api/client/http/q;

    return-void
.end method

.method private static a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p2}, Lio/opencensus/trace/a;->a(Ljava/lang/String;)Lio/opencensus/trace/a;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/opencensus/trace/Span;->i(Ljava/lang/String;Lio/opencensus/trace/a;)V

    :cond_0
    return-void
.end method

.method private static r()Ljava/lang/String;
    .locals 4

    const-string v0, "unknown-version"

    .line 1
    :try_start_0
    const-class v1, Lcom/google/api/client/http/q;

    const-string v2, "/google-http-client.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 2
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 3
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v3, "google-http-client.version"

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 5
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    .line 6
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method


# virtual methods
.method public A(Lcom/google/api/client/http/u;)Lcom/google/api/client/http/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/q;->s:Lcom/google/api/client/http/u;

    return-object p0
.end method

.method public B(Z)Lcom/google/api/client/http/q;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/http/q;->D:Z

    return-object p0
.end method

.method public C(Z)Lcom/google/api/client/http/q;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/api/client/http/q;->y:Z

    return-object p0
.end method

.method public D(Lcom/google/api/client/http/x;)Lcom/google/api/client/http/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/q;->q:Lcom/google/api/client/http/x;

    return-object p0
.end method

.method public E(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/i;

    iput-object p1, p0, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/i;

    return-object p0
.end method

.method public b()Lcom/google/api/client/http/t;
    .locals 20

    move-object/from16 v1, p0

    .line 1
    iget v0, v1, Lcom/google/api/client/http/q;->f:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/w;->a(Z)V

    .line 2
    iget v0, v1, Lcom/google/api/client/http/q;->f:I

    .line 3
    iget-object v4, v1, Lcom/google/api/client/http/q;->v:Lcom/google/api/client/http/c;

    if-eqz v4, :cond_1

    .line 4
    invoke-interface {v4}, Lcom/google/api/client/http/c;->a()V

    .line 5
    :cond_1
    iget-object v4, v1, Lcom/google/api/client/http/q;->l:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v4, v1, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/i;

    invoke-static {v4}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v4, v1, Lcom/google/api/client/http/q;->C:Lio/opencensus/trace/r;

    sget-object v5, Lcom/google/api/client/http/c0;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v5}, Lio/opencensus/trace/r;->b(Ljava/lang/String;)Lio/opencensus/trace/l;

    move-result-object v4

    .line 9
    invoke-static {}, Lcom/google/api/client/http/c0;->c()Z

    move-result v5

    invoke-virtual {v4, v5}, Lio/opencensus/trace/l;->a(Z)Lio/opencensus/trace/l;

    move-result-object v4

    .line 10
    invoke-virtual {v4}, Lio/opencensus/trace/l;->b()Lio/opencensus/trace/Span;

    move-result-object v4

    move v6, v0

    const/4 v0, 0x0

    .line 11
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retry #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/google/api/client/http/q;->f:I

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/opencensus/trace/Span;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0}, Lcom/google/api/client/http/t;->k()V

    .line 13
    :cond_2
    iget-object v0, v1, Lcom/google/api/client/http/q;->c:Lcom/google/api/client/http/m;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0, v1}, Lcom/google/api/client/http/m;->a(Lcom/google/api/client/http/q;)V

    .line 15
    :cond_3
    iget-object v0, v1, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/i;

    invoke-virtual {v0}, Lcom/google/api/client/http/i;->d()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v7, v1, Lcom/google/api/client/http/q;->l:Ljava/lang/String;

    const-string v8, "http.method"

    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v7, v1, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/i;

    invoke-virtual {v7}, Lcom/google/api/client/http/i;->j()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http.host"

    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v7, v1, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/i;

    invoke-virtual {v7}, Lcom/google/api/client/http/i;->l()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http.path"

    invoke-static {v4, v8, v7}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "http.url"

    .line 19
    invoke-static {v4, v7, v0}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v7, v1, Lcom/google/api/client/http/q;->k:Lcom/google/api/client/http/w;

    iget-object v8, v1, Lcom/google/api/client/http/q;->l:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lcom/google/api/client/http/w;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/z;

    move-result-object v7

    .line 21
    sget-object v8, Lcom/google/api/client/http/w;->a:Ljava/util/logging/Logger;

    .line 22
    iget-boolean v9, v1, Lcom/google/api/client/http/q;->h:Z

    if-eqz v9, :cond_4

    sget-object v9, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_5

    .line 23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-------------- REQUEST  --------------"

    .line 24
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/google/api/client/util/a0;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v12, v1, Lcom/google/api/client/http/q;->l:Ljava/lang/String;

    .line 26
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    .line 27
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-boolean v11, v1, Lcom/google/api/client/http/q;->i:Z

    if-eqz v11, :cond_6

    .line 31
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "curl -v --compressed"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget-object v12, v1, Lcom/google/api/client/http/q;->l:Ljava/lang/String;

    const-string v13, "GET"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, " -X "

    .line 33
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/google/api/client/http/q;->l:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :cond_6
    const/4 v11, 0x0

    .line 34
    :cond_7
    :goto_3
    iget-object v12, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {v12}, Lcom/google/api/client/http/n;->m()Ljava/lang/String;

    move-result-object v12

    .line 35
    iget-boolean v13, v1, Lcom/google/api/client/http/q;->A:Z

    if-nez v13, :cond_9

    const-string v13, "http.user_agent"

    if-nez v12, :cond_8

    .line 36
    iget-object v14, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    sget-object v15, Lcom/google/api/client/http/q;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/google/api/client/http/n;->I(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 37
    invoke-static {v4, v13, v15}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 38
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/google/api/client/http/q;->b:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 39
    iget-object v15, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {v15, v14}, Lcom/google/api/client/http/n;->I(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 40
    invoke-static {v4, v13, v14}, Lcom/google/api/client/http/q;->a(Lio/opencensus/trace/Span;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_9
    :goto_4
    iget-object v13, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-static {v4, v13}, Lcom/google/api/client/http/c0;->d(Lio/opencensus/trace/Span;Lcom/google/api/client/http/n;)V

    .line 42
    iget-object v13, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-static {v13, v10, v11, v8, v7}, Lcom/google/api/client/http/n;->p(Lcom/google/api/client/http/n;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/z;)V

    .line 43
    iget-boolean v13, v1, Lcom/google/api/client/http/q;->A:Z

    if-nez v13, :cond_a

    .line 44
    iget-object v13, v1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {v13, v12}, Lcom/google/api/client/http/n;->I(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 45
    :cond_a
    iget-object v12, v1, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/j;

    if-eqz v12, :cond_c

    .line 46
    invoke-interface {v12}, Lcom/google/api/client/http/j;->b()Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v13, 0x1

    :goto_6
    const-string v2, "\'"

    if-eqz v12, :cond_15

    .line 47
    iget-object v3, v1, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/j;

    invoke-interface {v3}, Lcom/google/api/client/http/j;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v9, :cond_d

    .line 48
    new-instance v14, Lcom/google/api/client/util/s;

    sget-object v15, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v5, v1, Lcom/google/api/client/http/q;->g:I

    invoke-direct {v14, v12, v8, v15, v5}, Lcom/google/api/client/util/s;-><init>(Lcom/google/api/client/util/z;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v12, v14

    .line 49
    :cond_d
    iget-object v5, v1, Lcom/google/api/client/http/q;->u:Lcom/google/api/client/http/k;

    if-nez v5, :cond_e

    .line 50
    iget-object v5, v1, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/j;

    invoke-interface {v5}, Lcom/google/api/client/http/j;->getLength()J

    move-result-wide v14

    const/4 v5, 0x0

    goto :goto_7

    .line 51
    :cond_e
    invoke-interface {v5}, Lcom/google/api/client/http/k;->getName()Ljava/lang/String;

    move-result-object v5

    .line 52
    new-instance v14, Lcom/google/api/client/http/l;

    iget-object v15, v1, Lcom/google/api/client/http/q;->u:Lcom/google/api/client/http/k;

    invoke-direct {v14, v12, v15}, Lcom/google/api/client/http/l;-><init>(Lcom/google/api/client/util/z;Lcom/google/api/client/http/k;)V

    move-object v12, v14

    const-wide/16 v14, -0x1

    :goto_7
    move-object/from16 v16, v4

    if-eqz v9, :cond_12

    const-string v4, " -H \'"

    if-eqz v3, :cond_f

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    const-string v6, "Content-Type: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/api/client/util/a0;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_10

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_f
    move/from16 v17, v6

    :cond_10
    :goto_8
    if-eqz v5, :cond_11

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Encoding: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/api/client/util/a0;->a:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_11

    .line 58
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-wide/16 v18, 0x0

    cmp-long v1, v14, v18

    if-ltz v1, :cond_13

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/api/client/util/a0;->a:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_12
    move/from16 v17, v6

    :cond_13
    :goto_9
    if-eqz v11, :cond_14

    const-string v1, " -d \'@-\'"

    .line 61
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_14
    invoke-virtual {v7, v3}, Lcom/google/api/client/http/z;->i(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v7, v5}, Lcom/google/api/client/http/z;->g(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v7, v14, v15}, Lcom/google/api/client/http/z;->h(J)V

    .line 65
    invoke-virtual {v7, v12}, Lcom/google/api/client/http/z;->j(Lcom/google/api/client/util/z;)V

    goto :goto_a

    :cond_15
    move-object/from16 v16, v4

    move/from16 v17, v6

    :goto_a
    if-eqz v9, :cond_17

    .line 66
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-eqz v11, :cond_17

    const-string v1, " -- \'"

    .line 67
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\"\'\"\'"

    .line 68
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_16

    const-string v0, " << $$$"

    .line 70
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_16
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_17
    if-eqz v13, :cond_18

    if-lez v17, :cond_18

    const/4 v2, 0x1

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    :goto_b
    move-object/from16 v1, p0

    .line 72
    iget v0, v1, Lcom/google/api/client/http/q;->n:I

    iget v3, v1, Lcom/google/api/client/http/q;->o:I

    invoke-virtual {v7, v0, v3}, Lcom/google/api/client/http/z;->k(II)V

    .line 73
    iget v0, v1, Lcom/google/api/client/http/q;->p:I

    invoke-virtual {v7, v0}, Lcom/google/api/client/http/z;->l(I)V

    .line 74
    iget-object v0, v1, Lcom/google/api/client/http/q;->C:Lio/opencensus/trace/r;

    move-object/from16 v3, v16

    invoke-virtual {v0, v3}, Lio/opencensus/trace/r;->d(Lio/opencensus/trace/Span;)Lio/opencensus/common/a;

    move-result-object v4

    .line 75
    invoke-virtual {v7}, Lcom/google/api/client/http/z;->d()J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/api/client/http/c0;->g(Lio/opencensus/trace/Span;J)V

    .line 76
    :try_start_0
    invoke-virtual {v7}, Lcom/google/api/client/http/z;->b()Lcom/google/api/client/http/a0;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 77
    invoke-virtual {v5}, Lcom/google/api/client/http/a0;->d()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Lcom/google/api/client/http/c0;->f(Lio/opencensus/trace/Span;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    :cond_19
    :try_start_1
    new-instance v0, Lcom/google/api/client/http/t;

    invoke-direct {v0, v1, v5}, Lcom/google/api/client/http/t;-><init>(Lcom/google/api/client/http/q;Lcom/google/api/client/http/a0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-interface {v4}, Lio/opencensus/common/a;->close()V

    move-object v4, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_d

    :catchall_0
    move-exception v0

    .line 80
    :try_start_2
    invoke-virtual {v5}, Lcom/google/api/client/http/a0;->b()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 81
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 82
    :cond_1a
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_15

    :catch_0
    move-exception v0

    .line 83
    :try_start_3
    iget-boolean v5, v1, Lcom/google/api/client/http/q;->z:Z

    if-nez v5, :cond_1c

    iget-object v5, v1, Lcom/google/api/client/http/q;->r:Lcom/google/api/client/http/o;

    if-eqz v5, :cond_1b

    .line 84
    invoke-interface {v5, v1, v2}, Lcom/google/api/client/http/o;->a(Lcom/google/api/client/http/q;Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_c

    :cond_1b
    const/4 v5, 0x0

    .line 85
    invoke-static {v5}, Lcom/google/api/client/http/c0;->a(Ljava/lang/Integer;)Lio/opencensus/trace/k;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/opencensus/trace/Span;->g(Lio/opencensus/trace/k;)V

    .line 86
    throw v0

    :cond_1c
    :goto_c
    const/4 v5, 0x0

    if-eqz v9, :cond_1d

    .line 87
    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "exception thrown while executing request"

    invoke-virtual {v8, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    :cond_1d
    invoke-interface {v4}, Lio/opencensus/common/a;->close()V

    move-object v4, v5

    :goto_d
    if-eqz v4, :cond_21

    .line 89
    :try_start_4
    invoke-virtual {v4}, Lcom/google/api/client/http/t;->l()Z

    move-result v6

    if-nez v6, :cond_21

    .line 90
    iget-object v6, v1, Lcom/google/api/client/http/q;->q:Lcom/google/api/client/http/x;

    if-eqz v6, :cond_1e

    .line 91
    invoke-interface {v6, v1, v4, v2}, Lcom/google/api/client/http/x;->b(Lcom/google/api/client/http/q;Lcom/google/api/client/http/t;Z)Z

    move-result v6

    goto :goto_e

    :cond_1e
    const/4 v6, 0x0

    :goto_e
    if-nez v6, :cond_20

    .line 92
    invoke-virtual {v4}, Lcom/google/api/client/http/t;->h()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/api/client/http/t;->f()Lcom/google/api/client/http/n;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/google/api/client/http/q;->s(ILcom/google/api/client/http/n;)Z

    move-result v7

    if-eqz v7, :cond_1f

    :catch_1
    :goto_f
    const/4 v6, 0x1

    goto :goto_10

    :cond_1f
    if-eqz v2, :cond_20

    .line 93
    iget-object v7, v1, Lcom/google/api/client/http/q;->v:Lcom/google/api/client/http/c;

    if-eqz v7, :cond_20

    .line 94
    invoke-virtual {v4}, Lcom/google/api/client/http/t;->h()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/google/api/client/http/c;->c(I)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 95
    iget-object v7, v1, Lcom/google/api/client/http/q;->v:Lcom/google/api/client/http/c;

    invoke-interface {v7}, Lcom/google/api/client/http/c;->b()J

    move-result-wide v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_20

    .line 96
    :try_start_5
    iget-object v6, v1, Lcom/google/api/client/http/q;->B:Lcom/google/api/client/util/y;

    invoke-interface {v6, v7, v8}, Lcom/google/api/client/util/y;->a(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_f

    :cond_20
    :goto_10
    and-int/2addr v2, v6

    if-eqz v2, :cond_23

    .line 97
    :try_start_6
    invoke-virtual {v4}, Lcom/google/api/client/http/t;->k()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_12

    :catchall_2
    move-exception v0

    .line 98
    invoke-virtual {v4}, Lcom/google/api/client/http/t;->a()V

    .line 99
    throw v0

    :cond_21
    if-nez v4, :cond_22

    const/4 v6, 0x1

    goto :goto_11

    :cond_22
    const/4 v6, 0x0

    :goto_11
    and-int/2addr v2, v6

    :cond_23
    :goto_12
    add-int/lit8 v6, v17, -0x1

    if-nez v2, :cond_29

    if-nez v4, :cond_24

    goto :goto_13

    .line 100
    :cond_24
    invoke-virtual {v4}, Lcom/google/api/client/http/t;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_13
    invoke-static {v5}, Lcom/google/api/client/http/c0;->a(Ljava/lang/Integer;)Lio/opencensus/trace/k;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/opencensus/trace/Span;->g(Lio/opencensus/trace/k;)V

    if-eqz v4, :cond_28

    .line 101
    iget-object v0, v1, Lcom/google/api/client/http/q;->s:Lcom/google/api/client/http/u;

    if-eqz v0, :cond_25

    .line 102
    invoke-interface {v0, v4}, Lcom/google/api/client/http/u;->a(Lcom/google/api/client/http/t;)V

    .line 103
    :cond_25
    iget-boolean v0, v1, Lcom/google/api/client/http/q;->y:Z

    if-eqz v0, :cond_27

    invoke-virtual {v4}, Lcom/google/api/client/http/t;->l()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_14

    .line 104
    :cond_26
    :try_start_7
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, v4}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/t;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 105
    invoke-virtual {v4}, Lcom/google/api/client/http/t;->a()V

    .line 106
    throw v0

    :cond_27
    :goto_14
    return-object v4

    .line 107
    :cond_28
    throw v0

    :cond_29
    move-object v0, v4

    move-object v4, v3

    goto/16 :goto_1

    .line 108
    :goto_15
    invoke-interface {v4}, Lio/opencensus/common/a;->close()V

    .line 109
    throw v0
.end method

.method public c()Lcom/google/api/client/http/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/client/http/q;->g:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/http/q;->w:Z

    return v0
.end method

.method public f()Lcom/google/api/client/http/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    return-object v0
.end method

.method public g()Lcom/google/api/client/http/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->r:Lcom/google/api/client/http/o;

    return-object v0
.end method

.method public h()Lcom/google/api/client/http/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->c:Lcom/google/api/client/http/m;

    return-object v0
.end method

.method public final i()Lcom/google/api/client/util/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->t:Lcom/google/api/client/util/u;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->l:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/google/api/client/http/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->e:Lcom/google/api/client/http/n;

    return-object v0
.end method

.method public l()Lcom/google/api/client/http/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->s:Lcom/google/api/client/http/u;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/http/q;->D:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/http/q;->y:Z

    return v0
.end method

.method public o()Lcom/google/api/client/http/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->k:Lcom/google/api/client/http/w;

    return-object v0
.end method

.method public p()Lcom/google/api/client/http/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->q:Lcom/google/api/client/http/x;

    return-object v0
.end method

.method public q()Lcom/google/api/client/http/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/i;

    return-object v0
.end method

.method public s(ILcom/google/api/client/http/n;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/api/client/http/n;->getLocation()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/http/q;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/api/client/http/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 4
    new-instance v0, Lcom/google/api/client/http/i;

    iget-object v1, p0, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/i;

    invoke-virtual {v1, p2}, Lcom/google/api/client/http/i;->r(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    iget-boolean v1, p0, Lcom/google/api/client/http/q;->x:Z

    invoke-direct {v0, p2, v1}, Lcom/google/api/client/http/i;-><init>(Ljava/net/URL;Z)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/q;->E(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;

    const/16 p2, 0x12f

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    const-string p1, "GET"

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/q;->z(Ljava/lang/String;)Lcom/google/api/client/http/q;

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/q;->u(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/n;->v(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 8
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/n;->C(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 9
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/n;->E(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 10
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/n;->D(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 11
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/n;->G(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 12
    iget-object p1, p0, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/n;->F(Ljava/lang/String;)Lcom/google/api/client/http/n;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/http/q;->h:Z

    return v0
.end method

.method public u(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/q;->j:Lcom/google/api/client/http/j;

    return-object p0
.end method

.method public v(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/q;->u:Lcom/google/api/client/http/k;

    return-object p0
.end method

.method public w(Lcom/google/api/client/http/o;)Lcom/google/api/client/http/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/q;->r:Lcom/google/api/client/http/o;

    return-object p0
.end method

.method public x(Lcom/google/api/client/http/m;)Lcom/google/api/client/http/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/q;->c:Lcom/google/api/client/http/m;

    return-object p0
.end method

.method public y(Lcom/google/api/client/util/u;)Lcom/google/api/client/http/q;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/client/http/q;->t:Lcom/google/api/client/util/u;

    return-object p0
.end method

.method public z(Ljava/lang/String;)Lcom/google/api/client/http/q;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lcom/google/api/client/http/p;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/api/client/util/w;->a(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/http/q;->l:Ljava/lang/String;

    return-object p0
.end method
