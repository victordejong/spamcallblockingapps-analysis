.class public final Lcom/google/api/client/http/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field b:Lcom/google/api/client/http/aa;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/api/client/http/q;

.field private f:Ljava/io/InputStream;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/api/client/http/p;

.field private final i:Z

.field private j:I

.field private k:Z

.field private l:Z


# direct methods
.method constructor <init>(Lcom/google/api/client/http/q;Lcom/google/api/client/http/aa;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/q;

    .line 1799
    iget-boolean v0, p1, Lcom/google/api/client/http/q;->p:Z

    .line 116
    iput-boolean v0, p0, Lcom/google/api/client/http/t;->i:Z

    .line 2354
    iget v0, p1, Lcom/google/api/client/http/q;->f:I

    .line 117
    iput v0, p0, Lcom/google/api/client/http/t;->j:I

    .line 2386
    iget-boolean v0, p1, Lcom/google/api/client/http/q;->g:Z

    .line 118
    iput-boolean v0, p0, Lcom/google/api/client/http/t;->k:Z

    .line 119
    iput-object p2, p0, Lcom/google/api/client/http/t;->b:Lcom/google/api/client/http/aa;

    .line 120
    invoke-virtual {p2}, Lcom/google/api/client/http/aa;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/t;->g:Ljava/lang/String;

    .line 121
    invoke-virtual {p2}, Lcom/google/api/client/http/aa;->getStatusCode()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 122
    :cond_0
    iput v0, p0, Lcom/google/api/client/http/t;->c:I

    .line 123
    invoke-virtual {p2}, Lcom/google/api/client/http/aa;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    .line 124
    iput-object v2, p0, Lcom/google/api/client/http/t;->d:Ljava/lang/String;

    .line 125
    sget-object v3, Lcom/google/api/client/http/w;->LOGGER:Ljava/util/logging/Logger;

    .line 126
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

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------------- RESPONSE --------------"

    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/google/api/client/a/ae;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p2}, Lcom/google/api/client/http/aa;->getStatusLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const/16 v0, 0x20

    .line 137
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_3
    :goto_0
    sget-object v0, Lcom/google/api/client/a/ae;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    move-object v5, v4

    .line 2519
    :goto_1
    iget-object v0, p1, Lcom/google/api/client/http/q;->e:Lcom/google/api/client/http/n;

    if-eqz v1, :cond_5

    move-object v4, v5

    .line 144
    :cond_5
    invoke-virtual {v0, p2, v4}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/aa;Ljava/lang/StringBuilder;)V

    .line 148
    invoke-virtual {p2}, Lcom/google/api/client/http/aa;->getContentType()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    .line 3519
    iget-object p1, p1, Lcom/google/api/client/http/q;->e:Lcom/google/api/client/http/n;

    .line 4380
    iget-object p1, p1, Lcom/google/api/client/http/n;->contentType:Ljava/util/List;

    invoke-static {p1}, Lcom/google/api/client/http/n;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    .line 152
    :cond_6
    iput-object p2, p0, Lcom/google/api/client/http/t;->a:Ljava/lang/String;

    .line 153
    invoke-static {p2}, Lcom/google/api/client/http/t;->a(Ljava/lang/String;)Lcom/google/api/client/http/p;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/http/t;->h:Lcom/google/api/client/http/p;

    if-eqz v1, :cond_7

    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/google/api/client/http/p;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 170
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

.method private m()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6292
    iget v0, p0, Lcom/google/api/client/http/t;->c:I

    .line 6319
    iget-object v1, p0, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/q;

    .line 7237
    iget-object v1, v1, Lcom/google/api/client/http/q;->i:Ljava/lang/String;

    const-string v2, "HEAD"

    .line 465
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

    .line 469
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->i()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Lcom/google/api/client/http/t;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/q;

    .line 5676
    iget-object v0, v0, Lcom/google/api/client/http/q;->n:Lcom/google/api/client/a/x;

    .line 456
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->h()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/t;->l()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/api/client/a/x;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/api/client/http/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 416
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->h()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    .line 5061
    invoke-static {v0, p1, v1}, Lcom/google/api/client/a/o;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public final b()Lcom/google/api/client/http/p;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/api/client/http/t;->h:Lcom/google/api/client/http/p;

    return-object v0
.end method

.method public final c()Lcom/google/api/client/http/n;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/q;

    .line 4519
    iget-object v0, v0, Lcom/google/api/client/http/q;->e:Lcom/google/api/client/http/n;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 283
    iget v0, p0, Lcom/google/api/client/http/t;->c:I

    invoke-static {v0}, Lcom/google/api/client/http/v;->a(I)Z

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/google/api/client/http/t;->c:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/api/client/http/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Lcom/google/api/client/http/q;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/q;

    return-object v0
.end method

.method public final h()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-boolean v0, p0, Lcom/google/api/client/http/t;->l:Z

    if-nez v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/google/api/client/http/t;->b:Lcom/google/api/client/http/aa;

    invoke-virtual {v0}, Lcom/google/api/client/http/aa;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 353
    :try_start_0
    iget-boolean v1, p0, Lcom/google/api/client/http/t;->i:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/api/client/http/t;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 354
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gzip"

    .line 355
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "x-gzip"

    .line 356
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Lcom/google/api/client/http/e;

    invoke-direct {v2, v0}, Lcom/google/api/client/http/e;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 368
    :cond_1
    sget-object v1, Lcom/google/api/client/http/w;->LOGGER:Ljava/util/logging/Logger;

    .line 369
    iget-boolean v2, p0, Lcom/google/api/client/http/t;->k:Z

    if-eqz v2, :cond_2

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    new-instance v2, Lcom/google/api/client/a/t;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v4, p0, Lcom/google/api/client/http/t;->j:I

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/api/client/a/t;-><init>(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v0, v2

    .line 374
    :cond_2
    iput-object v0, p0, Lcom/google/api/client/http/t;->f:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 381
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 383
    throw v1

    .line 381
    :catch_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 385
    iput-boolean v0, p0, Lcom/google/api/client/http/t;->l:Z

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/google/api/client/http/t;->f:Ljava/io/InputStream;

    return-object v0
.end method

.method public final i()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/google/api/client/http/t;->b:Lcom/google/api/client/http/aa;

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/http/aa;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/google/api/client/http/t;->b:Lcom/google/api/client/http/aa;

    invoke-virtual {v0}, Lcom/google/api/client/http/aa;->disconnect()V

    .line 441
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->i()V

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->h()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 508
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x1

    .line 8061
    invoke-static {v0, v1, v2}, Lcom/google/api/client/a/o;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 510
    invoke-virtual {p0}, Lcom/google/api/client/http/t;->l()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/nio/charset/Charset;
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/google/api/client/http/t;->h:Lcom/google/api/client/http/p;

    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/google/api/client/http/t;->h:Lcom/google/api/client/http/p;

    invoke-virtual {v0}, Lcom/google/api/client/http/p;->b()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/http/t;->h:Lcom/google/api/client/http/p;

    .line 8144
    iget-object v0, v0, Lcom/google/api/client/http/p;->a:Ljava/lang/String;

    const-string v1, "application"

    .line 526
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/api/client/http/t;->h:Lcom/google/api/client/http/p;

    .line 8162
    iget-object v0, v0, Lcom/google/api/client/http/p;->b:Ljava/lang/String;

    const-string v1, "json"

    .line 526
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0

    .line 531
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0
.end method
