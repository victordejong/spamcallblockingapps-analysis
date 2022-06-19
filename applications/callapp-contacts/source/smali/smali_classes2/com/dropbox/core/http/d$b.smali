.class final Lcom/dropbox/core/http/d$b;
.super Lcom/dropbox/core/http/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/dropbox/core/http/d;

.field private final c:Lcom/dropbox/core/util/e;

.field private d:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/d;Ljava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/dropbox/core/http/d$b;->b:Lcom/dropbox/core/http/d;

    invoke-direct {p0}, Lcom/dropbox/core/http/a$c;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/dropbox/core/http/d$b;->d:Ljava/net/HttpURLConnection;

    .line 141
    new-instance p1, Lcom/dropbox/core/util/e;

    invoke-static {p2}, Lcom/dropbox/core/http/d;->a(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dropbox/core/util/e;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lcom/dropbox/core/http/d$b;->c:Lcom/dropbox/core/util/e;

    .line 143
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/dropbox/core/http/d$b;->c:Lcom/dropbox/core/util/e;

    return-object v0
.end method

.method public final a(Lcom/dropbox/core/util/IOUtil$a;)V
    .locals 1

    .line 193
    iget-object p1, p0, Lcom/dropbox/core/http/d$b;->c:Lcom/dropbox/core/util/e;

    const/4 v0, 0x0

    .line 1022
    iput-object v0, p1, Lcom/dropbox/core/util/e;->a:Lcom/dropbox/core/util/IOUtil$a;

    return-void
.end method

.method public final b()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/dropbox/core/http/d$b;->d:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/http/d$b;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->a(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/dropbox/core/http/d$b;->d:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public final c()Lcom/dropbox/core/http/a$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/dropbox/core/http/d$b;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/dropbox/core/http/d$b;->b:Lcom/dropbox/core/http/d;

    invoke-static {v2, v0}, Lcom/dropbox/core/http/d;->a(Lcom/dropbox/core/http/d;Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/a$b;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iput-object v1, p0, Lcom/dropbox/core/http/d$b;->d:Ljava/net/HttpURLConnection;

    return-object v0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/dropbox/core/http/d$b;->d:Ljava/net/HttpURLConnection;

    .line 189
    throw v0

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t finish().  Uploader already closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
