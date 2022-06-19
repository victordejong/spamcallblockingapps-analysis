.class public Lcom/dropbox/core/http/d;
.super Lcom/dropbox/core/http/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/d$a;,
        Lcom/dropbox/core/http/d$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/dropbox/core/http/d;

.field private static final d:Ljava/util/logging/Logger;

.field private static volatile e:Z


# instance fields
.field private final f:Lcom/dropbox/core/http/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/dropbox/core/http/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/d;->d:Ljava/util/logging/Logger;

    .line 36
    new-instance v0, Lcom/dropbox/core/http/d;

    sget-object v1, Lcom/dropbox/core/http/d$a;->a:Lcom/dropbox/core/http/d$a;

    invoke-direct {v0, v1}, Lcom/dropbox/core/http/d;-><init>(Lcom/dropbox/core/http/d$a;)V

    sput-object v0, Lcom/dropbox/core/http/d;->c:Lcom/dropbox/core/http/d;

    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/dropbox/core/http/d;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/http/d$a;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/dropbox/core/http/a;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/dropbox/core/http/d;->f:Lcom/dropbox/core/http/d$a;

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/http/d;Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/a$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5050
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 v0, 0x190

    if-ge p0, v0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 5055
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 5053
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 5058
    :goto_1
    new-instance v1, Lcom/dropbox/core/http/a$b;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p0, v0, p1}, Lcom/dropbox/core/http/a$b;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v1
.end method

.method static synthetic a(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 4131
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 4132
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Iterable;Z)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/dropbox/core/http/a$a;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/dropbox/core/http/d;->f:Lcom/dropbox/core/http/d$a;

    .line 1278
    iget-object p1, p1, Lcom/dropbox/core/http/d$a;->b:Ljava/net/Proxy;

    .line 200
    invoke-virtual {v0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 202
    iget-object v0, p0, Lcom/dropbox/core/http/d;->f:Lcom/dropbox/core/http/d$a;

    .line 1291
    iget-wide v0, v0, Lcom/dropbox/core/http/d$a;->c:J

    long-to-int v1, v0

    .line 202
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 203
    iget-object v0, p0, Lcom/dropbox/core/http/d;->f:Lcom/dropbox/core/http/d$a;

    .line 1304
    iget-wide v0, v0, Lcom/dropbox/core/http/d$a;->d:J

    long-to-int v1, v0

    .line 203
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 205
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    if-eqz p3, :cond_0

    const/16 p3, 0x4000

    .line 207
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 212
    :cond_0
    instance-of p3, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p3, :cond_1

    .line 213
    move-object p3, p1

    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {p3}, Lcom/dropbox/core/http/SSLConfig;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    goto :goto_0

    .line 2229
    :cond_1
    sget-boolean p3, Lcom/dropbox/core/http/d;->e:Z

    if-nez p3, :cond_2

    const/4 p3, 0x1

    .line 2230
    sput-boolean p3, Lcom/dropbox/core/http/d;->e:Z

    .line 2231
    sget-object p3, Lcom/dropbox/core/http/d;->d:Ljava/util/logging/Logger;

    const-string v0, "Certificate pinning disabled for HTTPS connections. This is likely because your JRE does not return javax.net.ssl.HttpsURLConnection objects for https network connections. Be aware your app may be prone to man-in-the-middle attacks without proper SSL certificate validation. If you are using Google App Engine, please configure DbxRequestConfig to use GoogleAppEngineRequestor."

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 221
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dropbox/core/http/a$a;

    .line 3065
    iget-object v0, p3, Lcom/dropbox/core/http/a$a;->a:Ljava/lang/String;

    .line 3074
    iget-object p3, p3, Lcom/dropbox/core/http/a$a;->b:Ljava/lang/String;

    .line 222
    invoke-virtual {p1, v0, p3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-object p1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4071
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/d;->a(Ljava/lang/String;Ljava/lang/Iterable;Z)Ljava/net/HttpURLConnection;

    move-result-object p1

    const-string p2, "POST"

    .line 4072
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 4073
    new-instance p2, Lcom/dropbox/core/http/d$b;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/http/d$b;-><init>(Lcom/dropbox/core/http/d;Ljava/net/HttpURLConnection;)V

    return-object p2
.end method

.method public final synthetic b(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/a$c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3079
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/d;->a(Ljava/lang/String;Ljava/lang/Iterable;Z)Ljava/net/HttpURLConnection;

    move-result-object p1

    const-string p2, "POST"

    .line 3080
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 3081
    new-instance p2, Lcom/dropbox/core/http/d$b;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/http/d$b;-><init>(Lcom/dropbox/core/http/d;Ljava/net/HttpURLConnection;)V

    return-object p2
.end method
