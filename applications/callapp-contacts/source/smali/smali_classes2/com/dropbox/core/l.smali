.class public abstract Lcom/dropbox/core/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "X:",
        "Lcom/dropbox/core/DbxApiException;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/dropbox/core/http/a$c;

.field private final b:Lcom/dropbox/core/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/a/c<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/dropbox/core/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/a/c<",
            "TE;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/a$c;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/http/a$c;",
            "Lcom/dropbox/core/a/c<",
            "TR;>;",
            "Lcom/dropbox/core/a/c<",
            "TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/dropbox/core/l;->a:Lcom/dropbox/core/http/a$c;

    .line 57
    iput-object p2, p0, Lcom/dropbox/core/l;->b:Lcom/dropbox/core/a/c;

    .line 58
    iput-object p3, p0, Lcom/dropbox/core/l;->c:Lcom/dropbox/core/a/c;

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/dropbox/core/l;->d:Z

    .line 61
    iput-boolean p1, p0, Lcom/dropbox/core/l;->e:Z

    .line 62
    iput-object p4, p0, Lcom/dropbox/core/l;->f:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;^TX;^",
            "Lcom/dropbox/core/DbxException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 1286
    iget-boolean v0, p0, Lcom/dropbox/core/l;->d:Z

    if-nez v0, :cond_5

    .line 1289
    iget-boolean v0, p0, Lcom/dropbox/core/l;->e:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/dropbox/core/l;->a:Lcom/dropbox/core/http/a$c;

    invoke-virtual {v2}, Lcom/dropbox/core/http/a$c;->c()Lcom/dropbox/core/http/a$b;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    :try_start_1
    iget v2, v0, Lcom/dropbox/core/http/a$b;->a:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 261
    iget-object v2, p0, Lcom/dropbox/core/l;->b:Lcom/dropbox/core/a/c;

    .line 2151
    iget-object v3, v0, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 261
    invoke-virtual {v2, v3}, Lcom/dropbox/core/a/c;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 3151
    iget-object v0, v0, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 279
    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->a(Ljava/io/Closeable;)V

    .line 281
    :cond_0
    iput-boolean v1, p0, Lcom/dropbox/core/l;->e:Z

    return-object v2

    .line 4140
    :cond_1
    :try_start_2
    iget v2, v0, Lcom/dropbox/core/http/a$b;->a:I

    const/16 v3, 0x199

    if-ne v2, v3, :cond_2

    .line 264
    iget-object v2, p0, Lcom/dropbox/core/l;->c:Lcom/dropbox/core/a/c;

    iget-object v3, p0, Lcom/dropbox/core/l;->f:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/dropbox/core/DbxWrappedException;->a(Lcom/dropbox/core/a/c;Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Lcom/dropbox/core/DbxWrappedException;

    move-result-object v2

    .line 265
    invoke-virtual {p0, v2}, Lcom/dropbox/core/l;->a(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/DbxApiException;

    move-result-object v2

    throw v2

    .line 268
    :cond_2
    invoke-static {v0}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/http/a$b;)Lcom/dropbox/core/DbxException;

    move-result-object v2

    throw v2
    :try_end_2
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v2

    .line 271
    :try_start_3
    invoke-static {v0}, Lcom/dropbox/core/i;->c(Lcom/dropbox/core/http/a$b;)Ljava/lang/String;

    move-result-object v3

    .line 272
    new-instance v4, Lcom/dropbox/core/BadResponseException;

    const-string v5, "Bad JSON in response: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v2}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 275
    :try_start_4
    new-instance v3, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v3, v2}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    if-eqz v0, :cond_3

    .line 4151
    iget-object v0, v0, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 279
    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->a(Ljava/io/Closeable;)V

    .line 281
    :cond_3
    iput-boolean v1, p0, Lcom/dropbox/core/l;->e:Z

    .line 282
    throw v2

    .line 1290
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This uploader is already finished and cannot be used to upload more data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This uploader is already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract a(Lcom/dropbox/core/DbxWrappedException;)Lcom/dropbox/core/DbxApiException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxWrappedException;",
            ")TX;"
        }
    .end annotation
.end method

.method public final a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TR;^TX;^",
            "Lcom/dropbox/core/DbxException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/l;->a:Lcom/dropbox/core/http/a$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/core/http/a$c;->a(Lcom/dropbox/core/util/IOUtil$a;)V

    .line 118
    iget-object v0, p0, Lcom/dropbox/core/l;->a:Lcom/dropbox/core/http/a$c;

    .line 1101
    invoke-virtual {v0}, Lcom/dropbox/core/http/a$c;->a()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Lcom/dropbox/core/util/IOUtil$ReadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1103
    :try_start_1
    invoke-static {p1, v0}, Lcom/dropbox/core/util/IOUtil;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1105
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Lcom/dropbox/core/util/IOUtil$ReadException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    :try_start_3
    invoke-direct {p0}, Lcom/dropbox/core/l;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    invoke-virtual {p0}, Lcom/dropbox/core/l;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1105
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1106
    throw p1
    :try_end_4
    .catch Lcom/dropbox/core/util/IOUtil$ReadException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    :try_start_5
    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, p1}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 120
    invoke-virtual {p1}, Lcom/dropbox/core/util/IOUtil$ReadException;->a()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/dropbox/core/l;->close()V

    .line 129
    throw p1
.end method

.method public close()V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/dropbox/core/l;->d:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/dropbox/core/l;->a:Lcom/dropbox/core/http/a$c;

    invoke-virtual {v0}, Lcom/dropbox/core/http/a$c;->b()V

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/dropbox/core/l;->d:Z

    :cond_0
    return-void
.end method
