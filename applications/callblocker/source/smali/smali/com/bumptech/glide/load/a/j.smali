.class public Lcom/bumptech/glide/load/a/j;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/a/j$a;,
        Lcom/bumptech/glide/load/a/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/bumptech/glide/load/a/j$b;


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/g;

.field private final c:I

.field private final d:Lcom/bumptech/glide/load/a/j$b;

.field private e:Ljava/net/HttpURLConnection;

.field private f:Ljava/io/InputStream;

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/bumptech/glide/load/a/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/a/j$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/a/j;->a:Lcom/bumptech/glide/load/a/j$b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/g;I)V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/bumptech/glide/load/a/j;->a:Lcom/bumptech/glide/load/a/j$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/a/j;-><init>(Lcom/bumptech/glide/load/b/g;ILcom/bumptech/glide/load/a/j$b;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/b/g;ILcom/bumptech/glide/load/a/j$b;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/bumptech/glide/load/a/j;->b:Lcom/bumptech/glide/load/b/g;

    .line 50
    iput p2, p0, Lcom/bumptech/glide/load/a/j;->c:I

    .line 51
    iput-object p3, p0, Lcom/bumptech/glide/load/a/j;->d:Lcom/bumptech/glide/load/a/j$b;

    .line 52
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 144
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/h/c;->a(Ljava/io/InputStream;J)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/j;->f:Ljava/io/InputStream;

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->f:Ljava/io/InputStream;

    return-object v0

    .line 146
    :cond_0
    const-string/jumbo v0, "HttpUrlFetcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-string/jumbo v0, "HttpUrlFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got non empty content encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/j;->f:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 75
    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    .line 76
    new-instance v0, Lcom/bumptech/glide/load/HttpException;

    const-string/jumbo v1, "Too many (> 5) redirects!"

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lcom/bumptech/glide/load/HttpException;

    const-string/jumbo v1, "In re-direct loop"

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->d:Lcom/bumptech/glide/load/a/j$b;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/a/j$b;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    .line 91
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 92
    iget-object v3, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/bumptech/glide/load/a/j;->c:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 95
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcom/bumptech/glide/load/a/j;->c:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 101
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/j;->f:Ljava/io/InputStream;

    .line 107
    iget-boolean v0, p0, Lcom/bumptech/glide/load/a/j;->g:Z

    if-eqz v0, :cond_3

    .line 108
    const/4 v0, 0x0

    .line 122
    :goto_1
    return-object v0

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 111
    invoke-static {v0}, Lcom/bumptech/glide/load/a/j;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/a/j;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 113
    :cond_4
    invoke-static {v0}, Lcom/bumptech/glide/load/a/j;->b(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 116
    new-instance v0, Lcom/bumptech/glide/load/HttpException;

    const-string/jumbo v1, "Received empty or null redirect url"

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_5
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/bumptech/glide/load/a/j;->b()V

    .line 122
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0, p1, p4}, Lcom/bumptech/glide/load/a/j;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_6
    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 124
    new-instance v1, Lcom/bumptech/glide/load/HttpException;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/HttpException;-><init>(I)V

    throw v1

    .line 126
    :cond_7
    new-instance v1, Lcom/bumptech/glide/load/HttpException;

    iget-object v2, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static a(I)Z
    .locals 2

    .prologue
    .line 132
    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Z
    .locals 2

    .prologue
    .line 137
    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/a/d$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/load/a/d$a",
            "<-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 57
    invoke-static {}, Lcom/bumptech/glide/h/e;->a()J

    move-result-wide v2

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->b:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/g;->a()Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bumptech/glide/load/a/j;->b:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v5}, Lcom/bumptech/glide/load/b/g;->b()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/bumptech/glide/load/a/j;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object v0

    .line 60
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    const-string/jumbo v0, "HttpUrlFetcher"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "HttpUrlFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finished http url fetcher fetch in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_1
    const-string/jumbo v1, "HttpUrlFetcher"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string/jumbo v1, "HttpUrlFetcher"

    const-string/jumbo v4, "Failed to load data for url"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :cond_1
    invoke-interface {p2, v0}, Lcom/bumptech/glide/load/a/d$a;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    const-string/jumbo v0, "HttpUrlFetcher"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "HttpUrlFetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Finished http url fetcher fetch in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "HttpUrlFetcher"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const-string/jumbo v1, "HttpUrlFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finished http url fetcher fetch in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/bumptech/glide/h/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/a/j;->e:Ljava/net/HttpURLConnection;

    .line 167
    return-void

    .line 159
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/a/j;->g:Z

    .line 174
    return-void
.end method

.method public d()Lcom/bumptech/glide/load/a;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/bumptech/glide/load/a;->b:Lcom/bumptech/glide/load/a;

    return-object v0
.end method
