.class public Lcom/flurry/sdk/lc;
.super Lcom/flurry/sdk/mg;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lc$b;,
        Lcom/flurry/sdk/lc$c;,
        Lcom/flurry/sdk/lc$a;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field private final a:Lcom/flurry/sdk/kl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kl<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private c:I

.field private d:I

.field public final f:Lcom/flurry/sdk/kl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kl<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Lcom/flurry/sdk/lc$a;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Lcom/flurry/sdk/lc$c;

.field public m:Z

.field public n:J

.field public o:J

.field public p:Ljava/lang/Exception;

.field public q:I

.field public r:Z

.field public s:I

.field public t:Z

.field private v:Ljava/net/HttpURLConnection;

.field private w:Z

.field private x:Z

.field private y:Lcom/flurry/sdk/lb;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/lc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lc;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/flurry/sdk/mg;-><init>()V

    new-instance v0, Lcom/flurry/sdk/kl;

    invoke-direct {v0}, Lcom/flurry/sdk/kl;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lc;->a:Lcom/flurry/sdk/kl;

    new-instance v0, Lcom/flurry/sdk/kl;

    invoke-direct {v0}, Lcom/flurry/sdk/kl;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lc;->f:Lcom/flurry/sdk/kl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lc;->b:Ljava/lang/Object;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/flurry/sdk/lc;->i:I

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/flurry/sdk/lc;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/lc;->k:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/sdk/lc;->n:J

    iput-wide v0, p0, Lcom/flurry/sdk/lc;->o:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/sdk/lc;->q:I

    const/16 v0, 0x61a8

    iput v0, p0, Lcom/flurry/sdk/lc;->s:I

    new-instance v0, Lcom/flurry/sdk/lb;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lb;-><init>(Lcom/flurry/sdk/lc;)V

    iput-object v0, p0, Lcom/flurry/sdk/lc;->y:Lcom/flurry/sdk/lb;

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/lc;)Ljava/net/HttpURLConnection;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method private i()V
    .locals 8

    iget-boolean v0, p0, Lcom/flurry/sdk/lc;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/lc;->i:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/flurry/sdk/lc;->j:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    invoke-virtual {v1}, Lcom/flurry/sdk/lc$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lcom/flurry/sdk/lc;->k:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    sget-object v1, Lcom/flurry/sdk/lc$a;->c:Lcom/flurry/sdk/lc$a;

    iget-object v2, p0, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/flurry/sdk/lc;->a:Lcom/flurry/sdk/kl;

    invoke-virtual {v0}, Lcom/flurry/sdk/kl;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/sdk/lc$a;->b:Lcom/flurry/sdk/lc$a;

    iget-object v1, p0, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/flurry/sdk/lc$a;->c:Lcom/flurry/sdk/lc$a;

    iget-object v1, p0, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/flurry/sdk/lc;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/flurry/sdk/lc;->j()V

    return-void

    :cond_3
    :try_start_1
    sget-object v0, Lcom/flurry/sdk/lc$a;->c:Lcom/flurry/sdk/lc$a;

    iget-object v1, p0, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, p0, Lcom/flurry/sdk/lc;->l:Lcom/flurry/sdk/lc$c;

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/flurry/sdk/lc;->g()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/flurry/sdk/lc;->l:Lcom/flurry/sdk/lc$c;

    invoke-interface {v3, v2}, Lcom/flurry/sdk/lc$c;->a(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    :try_start_5
    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_1
    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw v1

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/flurry/sdk/lc;->m:Z

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/sdk/lc;->n:J

    :cond_6
    iget-boolean v0, p0, Lcom/flurry/sdk/lc;->r:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flurry/sdk/lc;->y:Lcom/flurry/sdk/lb;

    iget v2, p0, Lcom/flurry/sdk/lc;->s:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/lb;->a(J)V

    :cond_7
    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/lc;->q:I

    iget-boolean v0, p0, Lcom/flurry/sdk/lc;->m:Z

    if-eqz v0, :cond_8

    iget-wide v2, p0, Lcom/flurry/sdk/lc;->n:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/flurry/sdk/lc;->n:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/flurry/sdk/lc;->o:J

    :cond_8
    iget-object v0, p0, Lcom/flurry/sdk/lc;->y:Lcom/flurry/sdk/lb;

    invoke-virtual {v0}, Lcom/flurry/sdk/lb;->a()V

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/sdk/lc;->f:Lcom/flurry/sdk/kl;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/flurry/sdk/lc$a;->b:Lcom/flurry/sdk/lc$a;

    iget-object v2, p0, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/flurry/sdk/lc$a;->c:Lcom/flurry/sdk/lc$a;

    iget-object v2, p0, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/flurry/sdk/lc;->j()V

    return-void

    :cond_b
    :try_start_6
    iget-boolean v0, p0, Lcom/flurry/sdk/lc;->x:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/flurry/sdk/lc;->j()V

    return-void

    :cond_c
    :try_start_7
    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    iget-object v1, p0, Lcom/flurry/sdk/lc;->l:Lcom/flurry/sdk/lc$c;

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/flurry/sdk/lc;->g()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/flurry/sdk/lc;->l:Lcom/flurry/sdk/lc$c;

    invoke-interface {v1, p0, v2}, Lcom/flurry/sdk/lc$c;->a(Lcom/flurry/sdk/lc;Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_d
    :try_start_a
    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    invoke-direct {p0}, Lcom/flurry/sdk/lc;->j()V

    return-void

    :catchall_3
    move-exception v1

    goto :goto_4

    :catchall_4
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_4
    :try_start_b
    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    invoke-direct {p0}, Lcom/flurry/sdk/lc;->j()V

    throw v0
.end method

.method private j()V
    .locals 1

    iget-boolean v0, p0, Lcom/flurry/sdk/lc;->w:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/lc;->w:Z

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/lc;->f:Lcom/flurry/sdk/kl;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 7

    const-string v0, " for url: "

    const-string v1, "HTTP status: "

    const/4 v2, 0x3

    const/4 v3, 0x4

    :try_start_0
    iget-object v4, p0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/lc;->y:Lcom/flurry/sdk/lb;

    invoke-virtual {v0}, Lcom/flurry/sdk/lb;->a()V

    invoke-virtual {p0}, Lcom/flurry/sdk/lc;->e()V

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/jz;->a()Lcom/flurry/sdk/jz;

    move-result-object v4

    iget-boolean v4, v4, Lcom/flurry/sdk/jz;->b:Z

    if-nez v4, :cond_1

    sget-object v4, Lcom/flurry/sdk/lc;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Network not available, aborting http request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    if-eqz v4, :cond_2

    sget-object v5, Lcom/flurry/sdk/lc$a;->a:Lcom/flurry/sdk/lc$a;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    sget-object v4, Lcom/flurry/sdk/lc$a;->b:Lcom/flurry/sdk/lc$a;

    iput-object v4, p0, Lcom/flurry/sdk/lc;->h:Lcom/flurry/sdk/lc$a;

    :cond_3
    invoke-direct {p0}, Lcom/flurry/sdk/lc;->i()V

    sget-object v4, Lcom/flurry/sdk/lc;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/flurry/sdk/lc;->q:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    sget-object v5, Lcom/flurry/sdk/lc;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/flurry/sdk/lc;->q:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v5, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception during http request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/lc;->d:I

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/lc;->c:I

    :cond_4
    iput-object v4, p0, Lcom/flurry/sdk/lc;->p:Ljava/lang/Exception;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :goto_1
    iget-object v1, p0, Lcom/flurry/sdk/lc;->y:Lcom/flurry/sdk/lb;

    invoke-virtual {v1}, Lcom/flurry/sdk/lb;->a()V

    invoke-virtual {p0}, Lcom/flurry/sdk/lc;->e()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/lc;->a:Lcom/flurry/sdk/kl;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/kl;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/flurry/sdk/lc;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/sdk/lc;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/lc;->p:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/flurry/sdk/lc;->q:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/flurry/sdk/lc;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/flurry/sdk/lc;->l:Lcom/flurry/sdk/lc$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/lc;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/lc;->l:Lcom/flurry/sdk/lc$c;

    invoke-interface {v0, p0}, Lcom/flurry/sdk/lc$c;->a(Lcom/flurry/sdk/lc;)V

    return-void
.end method

.method public final f()V
    .locals 3

    sget-object v0, Lcom/flurry/sdk/lc;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancelling http request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/sdk/lc;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flurry/sdk/lc;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/flurry/sdk/lc;->x:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/flurry/sdk/lc;->w:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/flurry/sdk/lc;->w:Z

    iget-object v0, p0, Lcom/flurry/sdk/lc;->v:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/flurry/sdk/lc$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lc$1;-><init>(Lcom/flurry/sdk/lc;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/lc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/flurry/sdk/lc;->x:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()V
    .locals 0

    invoke-virtual {p0}, Lcom/flurry/sdk/lc;->f()V

    return-void
.end method
