.class final Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NetworkInterceptor"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-static {v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 723
    :try_start_0
    iput-boolean v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->b:Z

    .line 724
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-static {v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 725
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 729
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-static {v1}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 732
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->i:Z

    .line 733
    iget-object v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Connection;->route()Lokhttp3/Route;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    iput-object v3, v2, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->j:Ljava/net/Proxy;

    .line 734
    iget-object v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Connection;->handshake()Lokhttp3/Handshake;

    move-result-object v3

    iput-object v3, v2, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->k:Lokhttp3/Handshake;

    .line 735
    iget-object v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-static {v2}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 738
    :goto_0
    :try_start_1
    iget-boolean v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->b:Z

    if-nez v2, :cond_0

    .line 739
    iget-object v2, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-static {v2}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 745
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 748
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    instance-of v1, v1, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;

    if-eqz v1, :cond_1

    .line 749
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;

    .line 750
    invoke-virtual {v1, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OutputStreamRequestBody;->a(Lokhttp3/Request;)Lokhttp3/Request;

    move-result-object v0

    .line 753
    :cond_1
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 755
    iget-object v0, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-static {v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 756
    :try_start_3
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    iput-object p1, v1, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->h:Lokhttp3/Response;

    .line 757
    iget-object v1, p0, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection$NetworkInterceptor;->a:Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->url()Ljava/net/URL;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;->a(Lcom/callapp/contacts/util/http/ObsoleteUrlFactory$OkHttpURLConnection;Ljava/net/URL;)Ljava/net/URL;

    .line 758
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 742
    :catch_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 743
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    .line 745
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
