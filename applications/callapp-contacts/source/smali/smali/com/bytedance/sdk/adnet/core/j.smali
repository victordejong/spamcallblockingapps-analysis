.class public Lcom/bytedance/sdk/adnet/core/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/face/IHttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/j$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/a/b/v;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/bytedance/sdk/a/b/v$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/v$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    .line 45
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 47
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v$a;->a()Lcom/bytedance/sdk/a/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/j;->a:Lcom/bytedance/sdk/a/b/v;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/core/j;->b(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/r;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 213
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 215
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/r;->a()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 217
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/r;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/a/b/r;->b(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 220
    new-instance v5, Lcom/bytedance/sdk/adnet/core/Header;

    invoke-direct {v5, v3, v4}, Lcom/bytedance/sdk/adnet/core/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Lcom/bytedance/sdk/a/b/y$a;Lcom/bytedance/sdk/adnet/core/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/a/b/y$a;",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 262
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :pswitch_0
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/j;->d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/y$a;->d(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    return-void

    :pswitch_1
    const-string p1, "TRACE"

    .line 256
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    return-void

    :pswitch_2
    const-string p1, "OPTIONS"

    .line 253
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    return-void

    .line 250
    :pswitch_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y$a;->b()Lcom/bytedance/sdk/a/b/y$a;

    return-void

    .line 241
    :pswitch_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y$a;->c()Lcom/bytedance/sdk/a/b/y$a;

    return-void

    .line 247
    :pswitch_5
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/j;->d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/y$a;->c(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    return-void

    .line 244
    :pswitch_6
    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/j;->d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    return-void

    .line 238
    :pswitch_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/y$a;->a()Lcom/bytedance/sdk/a/b/y$a;

    return-void

    .line 231
    :pswitch_8
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getPostBody()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;

    move-result-object p1

    .line 233
    invoke-static {p1, v0}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/a/b/y$a;->a(Lcom/bytedance/sdk/a/b/z;)Lcom/bytedance/sdk/a/b/y$a;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/bytedance/sdk/adnet/core/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/j;->b(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setIpAddrStr(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(II)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 p0, 0x64

    if-gt p0, p1, :cond_0

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_1

    :cond_0
    const/16 p0, 0xcc

    if-eq p1, p0, :cond_1

    const/16 p0, 0x130

    if-eq p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lcom/bytedance/sdk/a/b/ab;)Ljava/io/InputStream;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/ab;->c()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/bytedance/sdk/adnet/core/Request;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method private c(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/y$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 164
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    new-instance v1, Lcom/bytedance/sdk/a/b/y$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/a/b/y$a;-><init>()V

    .line 170
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 174
    sget-object v3, Lcom/bytedance/sdk/adnet/a;->a:Lcom/bytedance/sdk/adnet/core/n;

    if-eqz v3, :cond_1

    .line 175
    sget-object v0, Lcom/bytedance/sdk/adnet/a;->a:Lcom/bytedance/sdk/adnet/core/n;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/adnet/core/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v3, 0x0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 181
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/net/URL;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v0

    const-string v4, "Host"

    invoke-virtual {v0, v4, p1}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    .line 190
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/net/URL;)Lcom/bytedance/sdk/a/b/y$a;

    :cond_3
    return-object v1

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static d(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/z;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getBody()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 277
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/a/b/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/u;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/a/b/z;->a(Lcom/bytedance/sdk/a/b/u;[B)Lcom/bytedance/sdk/a/b/z;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public performRequest(Lcom/bytedance/sdk/adnet/core/Request;Ljava/util/Map;)Lcom/bytedance/sdk/adnet/core/HttpResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/adnet/core/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bytedance/sdk/adnet/err/VAdError;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getTimeoutMs()I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/j;->a:Lcom/bytedance/sdk/a/b/v;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/v;->y()Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v1

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 67
    invoke-virtual {v1, v2, v3, v0}, Lcom/bytedance/sdk/a/b/v$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->b(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/a/b/v$a;->c(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/v$a;->b(Z)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/v$a;->a(Z)Lcom/bytedance/sdk/a/b/v$a;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/v$a;->a()Lcom/bytedance/sdk/a/b/v;

    move-result-object v0

    .line 74
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/j;->c(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 80
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/j;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 83
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    const-string v4, "User-Agent"

    .line 85
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    move-result-object v5

    .line 86
    invoke-virtual {v5, v4, v3}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 92
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 93
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/a/b/y$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 97
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 99
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/a/b/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/a/b/y$a;

    goto :goto_1

    .line 104
    :cond_2
    invoke-static {v2, p1}, Lcom/bytedance/sdk/adnet/core/j;->a(Lcom/bytedance/sdk/a/b/y$a;Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 106
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/y$a;->d()Lcom/bytedance/sdk/a/b/y;

    move-result-object p2

    .line 107
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/a/b/v;->a(Lcom/bytedance/sdk/a/b/y;)Lcom/bytedance/sdk/a/b/e;

    move-result-object p2

    .line 108
    invoke-interface {p2}, Lcom/bytedance/sdk/a/b/e;->a()Lcom/bytedance/sdk/a/b/aa;

    move-result-object p2

    .line 110
    invoke-static {p2}, Lcom/bytedance/sdk/a/b/a/c/k;->a(Lcom/bytedance/sdk/a/b/aa;)Lcom/bytedance/sdk/a/b/a/c/k;

    move-result-object v0

    .line 111
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->h()Lcom/bytedance/sdk/a/b/ab;

    move-result-object v2

    const/4 v3, 0x0

    .line 116
    :try_start_0
    iget v0, v0, Lcom/bytedance/sdk/a/b/a/c/k;->b:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    .line 121
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/adnet/core/j;->a(II)Z

    move-result p1

    if-nez p1, :cond_3

    .line 122
    new-instance p1, Lcom/bytedance/sdk/adnet/core/HttpResponse;

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/r;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/adnet/core/j;->a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/bytedance/sdk/adnet/core/HttpResponse;-><init>(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ab;->close()V

    return-object p1

    .line 127
    :cond_3
    :try_start_1
    new-instance p1, Lcom/bytedance/sdk/adnet/core/HttpResponse;

    .line 129
    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/aa;->g()Lcom/bytedance/sdk/a/b/r;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/adnet/core/j;->a(Lcom/bytedance/sdk/a/b/r;)Ljava/util/List;

    move-result-object p2

    .line 130
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ab;->b()J

    move-result-wide v3

    long-to-int v4, v3

    new-instance v3, Lcom/bytedance/sdk/adnet/core/j$a;

    invoke-direct {v3, v2}, Lcom/bytedance/sdk/adnet/core/j$a;-><init>(Lcom/bytedance/sdk/a/b/ab;)V

    invoke-direct {p1, v0, p2, v4, v3}, Lcom/bytedance/sdk/adnet/core/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 118
    :cond_4
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_5

    .line 134
    invoke-virtual {v2}, Lcom/bytedance/sdk/a/b/ab;->close()V

    .line 136
    :cond_5
    throw p1

    .line 77
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request params maybe null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
