.class public final Lcom/google/api/client/http/t;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/api/client/http/p;

.field e:Lcom/google/api/client/http/a0;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/api/client/http/q;

.field private final i:Z

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method constructor <init>(Lcom/google/api/client/http/q;Lcom/google/api/client/http/a0;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/client/http/t;->h:Lcom/google/api/client/http/q;

    .line 3
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/api/client/http/t;->i:Z

    .line 4
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->d()I

    move-result v0

    iput v0, p0, Lcom/google/api/client/http/t;->j:I

    .line 5
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/api/client/http/t;->k:Z

    .line 6
    iput-object p2, p0, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/a0;

    .line 7
    invoke-virtual {p2}, Lcom/google/api/client/http/a0;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/t;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p2}, Lcom/google/api/client/http/a0;->j()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 9
    :cond_0
    iput v0, p0, Lcom/google/api/client/http/t;->f:I

    .line 10
    invoke-virtual {p2}, Lcom/google/api/client/http/a0;->i()Ljava/lang/String;

    move-result-object v2

    .line 11
    iput-object v2, p0, Lcom/google/api/client/http/t;->g:Ljava/lang/String;

    .line 12
    sget-object v3, Lcom/google/api/client/http/w;->a:Ljava/util/logging/Logger;

    .line 13
    iget-boolean v4, p0, Lcom/google/api/client/http/t;->k:Z

    if-eqz v4, :cond_1

    sget-object v4, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------------- RESPONSE --------------"

    .line 15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/api/client/util/a0;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p2}, Lcom/google/api/client/http/a0;->k()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 17
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const/16 v0, 0x20

    .line 19
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    move-object v5, v4

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->k()Lcom/google/api/client/http/n;

    move-result-object v0

    if-eqz v1, :cond_5

    move-object v4, v5

    :cond_5
    invoke-virtual {v0, p2, v4}, Lcom/google/api/client/http/n;->d(Lcom/google/api/client/http/a0;Ljava/lang/StringBuilder;)V

    .line 22
    invoke-virtual {p2}, Lcom/google/api/client/http/a0;->e()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    .line 23
    invoke-virtual {p1}, Lcom/google/api/client/http/q;->k()Lcom/google/api/client/http/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/http/n;->getContentType()Ljava/lang/String;

    move-result-object p2

    .line 24
    :cond_6
    iput-object p2, p0, Lcom/google/api/client/http/t;->c:Ljava/lang/String;

    .line 25
    invoke-static {p2}, Lcom/google/api/client/http/t;->o(Ljava/lang/String;)Lcom/google/api/client/http/p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/http/t;->d:Lcom/google/api/client/http/p;

    if-eqz v1, :cond_7

    .line 26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private j()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->h()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->g()Lcom/google/api/client/http/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/q;->j()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x130

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->k()V

    const/4 v0, 0x0

    return v0
.end method

.method private static o(Ljava/lang/String;)Lcom/google/api/client/http/p;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/api/client/http/p;

    invoke-direct {v1, p0}, Lcom/google/api/client/http/p;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->k()V

    .line 2
    iget-object v0, p0, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/a0;

    invoke-virtual {v0}, Lcom/google/api/client/http/a0;->a()V

    return-void
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/api/client/util/m;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method public c()Ljava/io/InputStream;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/api/client/http/t;->l:Z

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/a0;

    invoke-virtual {v0}, Lcom/google/api/client/http/a0;->b()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/google/api/client/http/t;->i:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/api/client/http/t;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "x-gzip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    :cond_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Lcom/google/api/client/http/e;

    invoke-direct {v2, v0}, Lcom/google/api/client/http/e;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 7
    :cond_1
    sget-object v1, Lcom/google/api/client/http/w;->a:Ljava/util/logging/Logger;

    .line 8
    iget-boolean v2, p0, Lcom/google/api/client/http/t;->k:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    new-instance v3, Lcom/google/api/client/util/q;

    iget v4, p0, Lcom/google/api/client/http/t;->j:I

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/api/client/util/q;-><init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v0, v3

    .line 10
    :cond_2
    iput-object v0, p0, Lcom/google/api/client/http/t;->a:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 12
    throw v1

    .line 13
    :catch_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/google/api/client/http/t;->l:Z

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/google/api/client/http/t;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public d()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/t;->d:Lcom/google/api/client/http/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/api/client/http/p;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/t;->d:Lcom/google/api/client/http/p;

    .line 2
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/api/client/util/h;->b:Ljava/nio/charset/Charset;

    :goto_1
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/google/api/client/http/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/t;->h:Lcom/google/api/client/http/q;

    invoke-virtual {v0}, Lcom/google/api/client/http/q;->k()Lcom/google/api/client/http/n;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/api/client/http/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/t;->h:Lcom/google/api/client/http/q;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/client/http/t;->f:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/http/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->c()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/api/client/http/t;->f:I

    invoke-static {v0}, Lcom/google/api/client/http/v;->b(I)Z

    move-result v0

    return v0
.end method

.method public m(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/http/t;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/t;->h:Lcom/google/api/client/http/q;

    invoke-virtual {v0}, Lcom/google/api/client/http/q;->i()Lcom/google/api/client/util/u;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/api/client/http/t;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/t;->d()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/api/client/util/u;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->c()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    invoke-static {v0, v1}, Lcom/google/api/client/util/m;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->d()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
