.class final Lretrofit2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/j$a;,
        Lretrofit2/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lretrofit2/o;

.field private final b:[Ljava/lang/Object;

.field private final c:Lokhttp3/Call$Factory;

.field private final d:Lretrofit2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/e<",
            "Lokhttp3/ResponseBody;",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile e:Z

.field private f:Lokhttp3/Call;

.field private g:Ljava/lang/Throwable;

.field private h:Z


# direct methods
.method constructor <init>(Lretrofit2/o;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/o;",
            "[",
            "Ljava/lang/Object;",
            "Lokhttp3/Call$Factory;",
            "Lretrofit2/e<",
            "Lokhttp3/ResponseBody;",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lretrofit2/j;->a:Lretrofit2/o;

    .line 51
    iput-object p2, p0, Lretrofit2/j;->b:[Ljava/lang/Object;

    .line 52
    iput-object p3, p0, Lretrofit2/j;->c:Lokhttp3/Call$Factory;

    .line 53
    iput-object p4, p0, Lretrofit2/j;->d:Lretrofit2/e;

    return-void
.end method

.method private f()Lretrofit2/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/j<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lretrofit2/j;

    iget-object v1, p0, Lretrofit2/j;->a:Lretrofit2/o;

    iget-object v2, p0, Lretrofit2/j;->b:[Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/j;->c:Lokhttp3/Call$Factory;

    iget-object v4, p0, Lretrofit2/j;->d:Lretrofit2/e;

    invoke-direct {v0, v1, v2, v3, v4}, Lretrofit2/j;-><init>(Lretrofit2/o;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/e;)V

    return-object v0
.end method

.method private g()Lokhttp3/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lretrofit2/j;->f:Lokhttp3/Call;

    if-eqz v0, :cond_0

    return-object v0

    .line 87
    :cond_0
    iget-object v0, p0, Lretrofit2/j;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 88
    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_2

    .line 90
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 91
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 93
    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 89
    :cond_2
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 99
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lretrofit2/j;->h()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/j;->f:Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 101
    :goto_0
    invoke-static {v0}, Lretrofit2/s;->a(Ljava/lang/Throwable;)V

    .line 102
    iput-object v0, p0, Lretrofit2/j;->g:Ljava/lang/Throwable;

    .line 103
    throw v0
.end method

.method private h()Lokhttp3/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lretrofit2/j;->c:Lokhttp3/Call$Factory;

    iget-object v1, p0, Lretrofit2/j;->a:Lretrofit2/o;

    iget-object v2, p0, Lretrofit2/j;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lretrofit2/o;->a([Ljava/lang/Object;)Lokhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    const-string v1, "Call.Factory returned null."

    .line 196
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()Lretrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lretrofit2/j;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lretrofit2/j;->h:Z

    .line 183
    invoke-direct {p0}, Lretrofit2/j;->g()Lokhttp3/Call;

    move-result-object v0

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-boolean v1, p0, Lretrofit2/j;->e:Z

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 190
    :cond_0
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/j;->a(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 184
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final a(Lokhttp3/Response;)Lretrofit2/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lretrofit2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    new-instance v1, Lretrofit2/j$b;

    .line 206
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lretrofit2/j$b;-><init>(Lokhttp3/MediaType;J)V

    invoke-virtual {p1, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_4

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 225
    :cond_1
    new-instance v1, Lretrofit2/j$a;

    invoke-direct {v1, v0}, Lretrofit2/j$a;-><init>(Lokhttp3/ResponseBody;)V

    .line 227
    :try_start_0
    iget-object v0, p0, Lretrofit2/j;->d:Lretrofit2/e;

    invoke-interface {v0, v1}, Lretrofit2/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    invoke-static {v0, p1}, Lretrofit2/Response;->a(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1316
    iget-object v0, v1, Lretrofit2/j$a;->a:Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 1317
    iget-object p1, v1, Lretrofit2/j$a;->a:Ljava/io/IOException;

    throw p1

    .line 233
    :cond_2
    throw p1

    .line 221
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    const/4 v0, 0x0

    .line 222
    invoke-static {v0, p1}, Lretrofit2/Response;->a(Ljava/lang/Object;Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p1

    return-object p1

    .line 213
    :cond_4
    :goto_1
    :try_start_1
    invoke-static {v0}, Lretrofit2/s;->a(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v1

    .line 214
    invoke-static {v1, p1}, Lretrofit2/Response;->a(Lokhttp3/ResponseBody;Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    throw p1
.end method

.method public final a(Lretrofit2/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/c<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 108
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lretrofit2/j;->h:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lretrofit2/j;->h:Z

    .line 117
    iget-object v0, p0, Lretrofit2/j;->f:Lokhttp3/Call;

    .line 118
    iget-object v1, p0, Lretrofit2/j;->g:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 121
    :try_start_1
    invoke-direct {p0}, Lretrofit2/j;->h()Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lretrofit2/j;->f:Lokhttp3/Call;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 123
    :try_start_2
    invoke-static {v1}, Lretrofit2/s;->a(Ljava/lang/Throwable;)V

    .line 124
    iput-object v1, p0, Lretrofit2/j;->g:Ljava/lang/Throwable;

    .line 127
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 130
    invoke-interface {p1, p0, v1}, Lretrofit2/c;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void

    .line 134
    :cond_1
    iget-boolean v1, p0, Lretrofit2/j;->e:Z

    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 138
    :cond_2
    new-instance v1, Lretrofit2/j$1;

    invoke-direct {v1, p0, p1}, Lretrofit2/j$1;-><init>(Lretrofit2/j;Lretrofit2/c;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void

    .line 114
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 127
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lretrofit2/j;->e:Z

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lretrofit2/j;->f:Lokhttp3/Call;

    .line 243
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 245
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 243
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 2

    .line 250
    iget-boolean v0, p0, Lretrofit2/j;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 253
    :cond_0
    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lretrofit2/j;->f:Lokhttp3/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 255
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lretrofit2/j;->f()Lretrofit2/j;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d()Lretrofit2/Call;
    .locals 1

    .line 33
    invoke-direct {p0}, Lretrofit2/j;->f()Lretrofit2/j;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized e()Lokhttp3/Request;
    .locals 3

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-direct {p0}, Lretrofit2/j;->g()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method
