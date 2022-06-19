.class final Lcom/dropbox/core/http/b$b;
.super Lcom/dropbox/core/http/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/dropbox/core/http/b;

.field private final c:Ljava/lang/String;

.field private final d:Lokhttp3/Request$Builder;

.field private e:Lokhttp3/RequestBody;

.field private f:Lokhttp3/Call;

.field private g:Lcom/dropbox/core/http/b$a;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/core/http/b;Ljava/lang/String;Lokhttp3/Request$Builder;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/dropbox/core/http/b$b;->b:Lcom/dropbox/core/http/b;

    invoke-direct {p0}, Lcom/dropbox/core/http/a$c;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/dropbox/core/http/b$b;->c:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lcom/dropbox/core/http/b$b;->d:Lokhttp3/Request$Builder;

    const/4 p1, 0x0

    .line 194
    iput-object p1, p0, Lcom/dropbox/core/http/b$b;->e:Lokhttp3/RequestBody;

    .line 195
    iput-object p1, p0, Lcom/dropbox/core/http/b$b;->f:Lokhttp3/Call;

    .line 196
    iput-object p1, p0, Lcom/dropbox/core/http/b$b;->g:Lcom/dropbox/core/http/b$a;

    const/4 p1, 0x0

    .line 198
    iput-boolean p1, p0, Lcom/dropbox/core/http/b$b;->h:Z

    .line 199
    iput-boolean p1, p0, Lcom/dropbox/core/http/b$b;->i:Z

    return-void
.end method

.method private a(Lokhttp3/RequestBody;)V
    .locals 2

    .line 231
    invoke-direct {p0}, Lcom/dropbox/core/http/b$b;->d()V

    .line 232
    iput-object p1, p0, Lcom/dropbox/core/http/b$b;->e:Lokhttp3/RequestBody;

    .line 233
    iget-object v0, p0, Lcom/dropbox/core/http/b$b;->d:Lokhttp3/Request$Builder;

    iget-object v1, p0, Lcom/dropbox/core/http/b$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    return-void
.end method

.method private d()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/dropbox/core/http/b$b;->e:Lokhttp3/RequestBody;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request body already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/io/OutputStream;
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/dropbox/core/http/b$b;->e:Lokhttp3/RequestBody;

    instance-of v1, v0, Lcom/dropbox/core/http/b$c;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Lcom/dropbox/core/http/b$c;

    .line 1347
    iget-object v0, v0, Lcom/dropbox/core/http/b$c;->a:Lcom/dropbox/core/http/c$a;

    .line 2061
    iget-object v0, v0, Lcom/dropbox/core/http/c$a;->b:Ljava/io/PipedOutputStream;

    return-object v0

    .line 215
    :cond_0
    new-instance v0, Lcom/dropbox/core/http/b$c;

    invoke-direct {v0}, Lcom/dropbox/core/http/b$c;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/dropbox/core/http/b$b;->a:Lcom/dropbox/core/util/IOUtil$a;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/dropbox/core/http/b$b;->a:Lcom/dropbox/core/util/IOUtil$a;

    .line 2344
    iput-object v1, v0, Lcom/dropbox/core/http/b$c;->b:Lcom/dropbox/core/util/IOUtil$a;

    .line 220
    :cond_1
    invoke-direct {p0, v0}, Lcom/dropbox/core/http/b$b;->a(Lokhttp3/RequestBody;)V

    .line 222
    new-instance v1, Lcom/dropbox/core/http/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/http/b$a;-><init>(Lcom/dropbox/core/http/b$c;Lcom/dropbox/core/http/b$1;)V

    iput-object v1, p0, Lcom/dropbox/core/http/b$b;->g:Lcom/dropbox/core/http/b$a;

    .line 223
    iget-object v1, p0, Lcom/dropbox/core/http/b$b;->b:Lcom/dropbox/core/http/b;

    invoke-static {v1}, Lcom/dropbox/core/http/b;->a(Lcom/dropbox/core/http/b;)Lokhttp3/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/http/b$b;->d:Lokhttp3/Request$Builder;

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/core/http/b$b;->f:Lokhttp3/Call;

    .line 225
    iget-object v2, p0, Lcom/dropbox/core/http/b$b;->g:Lcom/dropbox/core/http/b$a;

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 2347
    iget-object v0, v0, Lcom/dropbox/core/http/b$c;->a:Lcom/dropbox/core/http/c$a;

    .line 3061
    iget-object v0, v0, Lcom/dropbox/core/http/c$a;->b:Ljava/io/PipedOutputStream;

    return-object v0
.end method

.method public final a([B)V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/http/b$b;->a(Lokhttp3/RequestBody;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/dropbox/core/http/b$b;->e:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    .line 251
    :try_start_0
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/dropbox/core/http/b$b;->h:Z

    return-void
.end method

.method public final c()Lcom/dropbox/core/http/a$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget-boolean v0, p0, Lcom/dropbox/core/http/b$b;->i:Z

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/dropbox/core/http/b$b;->e:Lokhttp3/RequestBody;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 274
    invoke-virtual {p0, v0}, Lcom/dropbox/core/http/b$b;->a([B)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/http/b$b;->g:Lcom/dropbox/core/http/b$a;

    if-eqz v0, :cond_1

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/b$b;->a()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :catch_0
    iget-object v0, p0, Lcom/dropbox/core/http/b$b;->g:Lcom/dropbox/core/http/b$a;

    invoke-virtual {v0}, Lcom/dropbox/core/http/b$a;->a()Lokhttp3/Response;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/dropbox/core/http/b$b;->b:Lcom/dropbox/core/http/b;

    invoke-static {v0}, Lcom/dropbox/core/http/b;->a(Lcom/dropbox/core/http/b;)Lokhttp3/OkHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/http/b$b;->d:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/http/b$b;->f:Lokhttp3/Call;

    .line 287
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 289
    :goto_0
    invoke-static {v0}, Lcom/dropbox/core/http/b;->a(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/http/b;->a(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v1

    .line 291
    new-instance v2, Lcom/dropbox/core/http/a$b;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/dropbox/core/http/a$b;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2

    .line 271
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already aborted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
