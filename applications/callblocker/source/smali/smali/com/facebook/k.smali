.class public Lcom/facebook/k;
.super Ljava/lang/Object;
.source "GraphRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/k$f;,
        Lcom/facebook/k$c;,
        Lcom/facebook/k$e;,
        Lcom/facebook/k$b;,
        Lcom/facebook/k$g;,
        Lcom/facebook/k$d;,
        Lcom/facebook/k$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/regex/Pattern;

.field private static volatile r:Ljava/lang/String;


# instance fields
.field private e:Lcom/facebook/a;

.field private f:Lcom/facebook/o;

.field private g:Ljava/lang/String;

.field private h:Lorg/json/JSONObject;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Landroid/os/Bundle;

.field private m:Lcom/facebook/k$b;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Object;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 82
    const-class v0, Lcom/facebook/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->a:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "^/?v\\d+\\.\\d+/(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->d:Ljava/util/regex/Pattern;

    .line 150
    const-string/jumbo v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 155
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v4, v0, 0x1e

    .line 156
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 157
    array-length v5, v1

    invoke-virtual {v3, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    aget-char v5, v1, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->b:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 166
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V
    .locals 7

    .prologue
    .line 230
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public constructor <init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/k;->k:Z

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/k;->q:Z

    .line 259
    iput-object p1, p0, Lcom/facebook/k;->e:Lcom/facebook/a;

    .line 260
    iput-object p2, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    .line 261
    iput-object p6, p0, Lcom/facebook/k;->p:Ljava/lang/String;

    .line 263
    invoke-virtual {p0, p5}, Lcom/facebook/k;->a(Lcom/facebook/k$b;)V

    .line 264
    invoke-virtual {p0, p4}, Lcom/facebook/k;->a(Lcom/facebook/o;)V

    .line 266
    if-eqz p3, :cond_1

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/facebook/k;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 273
    invoke-static {}, Lcom/facebook/j;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/k;->p:Ljava/lang/String;

    .line 275
    :cond_0
    return-void

    .line 269
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static a(Lcom/facebook/a;Lcom/facebook/k$c;)Lcom/facebook/k;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 313
    new-instance v5, Lcom/facebook/k$1;

    invoke-direct {v5, p1}, Lcom/facebook/k$1;-><init>(Lcom/facebook/k$c;)V

    .line 321
    new-instance v0, Lcom/facebook/k;

    const-string/jumbo v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/a;Ljava/lang/String;Lcom/facebook/k$b;)Lcom/facebook/k;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 387
    new-instance v0, Lcom/facebook/k;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/a;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/k$b;)Lcom/facebook/k;
    .locals 6

    .prologue
    .line 340
    new-instance v0, Lcom/facebook/k;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/o;->b:Lcom/facebook/o;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/k;-><init>(Lcom/facebook/a;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/o;Lcom/facebook/k$b;)V

    .line 346
    invoke-virtual {v0, p2}, Lcom/facebook/k;->a(Lorg/json/JSONObject;)V

    .line 347
    return-object v0
.end method

.method public static a(Lcom/facebook/k;)Lcom/facebook/n;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1108
    new-array v0, v3, [Lcom/facebook/k;

    aput-object p0, v0, v2

    invoke-static {v0}, Lcom/facebook/k;->a([Lcom/facebook/k;)Ljava/util/List;

    move-result-object v0

    .line 1110
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1111
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "invalid state: expected a single response"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/n;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1464
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/k;->f:Lcom/facebook/o;

    sget-object v1, Lcom/facebook/o;->b:Lcom/facebook/o;

    if-ne v0, v1, :cond_0

    .line 1494
    :goto_0
    return-object p1

    .line 1468
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1470
    iget-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1471
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1472
    iget-object v1, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1474
    if-nez v1, :cond_2

    .line 1475
    const-string/jumbo v1, ""

    .line 1478
    :cond_2
    invoke-static {v1}, Lcom/facebook/k;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1479
    invoke-static {v1}, Lcom/facebook/k;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1491
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1481
    :cond_3
    iget-object v0, p0, Lcom/facebook/k;->f:Lcom/facebook/o;

    sget-object v4, Lcom/facebook/o;->a:Lcom/facebook/o;

    if-ne v0, v4, :cond_1

    .line 1482
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "Unsupported parameter type for GET request: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1486
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    .line 1483
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1494
    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static a(Lcom/facebook/m;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1064
    invoke-static {p0}, Lcom/facebook/k;->d(Lcom/facebook/m;)V

    .line 1068
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/m;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1070
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/m;->a(I)Lcom/facebook/k;

    move-result-object v1

    .line 1073
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/facebook/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :goto_0
    const/4 v1, 0x0

    .line 1085
    :try_start_1
    invoke-static {v0}, Lcom/facebook/k;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 1087
    invoke-static {p0, v1}, Lcom/facebook/k;->a(Lcom/facebook/m;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1094
    return-object v1

    .line 1077
    :cond_0
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/internal/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "could not construct URL for request"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1088
    :catch_1
    move-exception v0

    .line 1089
    :goto_1
    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/net/URLConnection;)V

    .line 1091
    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "could not construct request body"

    invoke-direct {v1, v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1088
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 1425
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1427
    const-string/jumbo v1, "User-Agent"

    invoke-static {}, Lcom/facebook/k;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    const-string/jumbo v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1431
    return-object v0
.end method

.method public static a(Ljava/net/HttpURLConnection;Lcom/facebook/m;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/m;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    invoke-static {p0, p1}, Lcom/facebook/n;->a(Ljava/net/HttpURLConnection;Lcom/facebook/m;)Ljava/util/List;

    move-result-object v0

    .line 1287
    invoke-static {p0}, Lcom/facebook/internal/x;->a(Ljava/net/URLConnection;)V

    .line 1289
    invoke-virtual {p1}, Lcom/facebook/m;->size()I

    move-result v1

    .line 1290
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1291
    new-instance v2, Lcom/facebook/FacebookException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "Received %d responses while expecting %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1294
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    .line 1295
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1292
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1298
    :cond_0
    invoke-static {p1, v0}, Lcom/facebook/k;->a(Lcom/facebook/m;Ljava/util/List;)V

    .line 1301
    invoke-static {}, Lcom/facebook/c;->a()Lcom/facebook/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/c;->e()V

    .line 1303
    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/k;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    new-instance v0, Lcom/facebook/m;

    invoke-direct {v0, p0}, Lcom/facebook/m;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/k;->b(Lcom/facebook/m;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Lcom/facebook/k;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/k;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1131
    const-string/jumbo v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1133
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/k;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/os/Bundle;Lcom/facebook/k$g;Lcom/facebook/k;)V
    .locals 4

    .prologue
    .line 1924
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1926
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1927
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1928
    invoke-static {v2}, Lcom/facebook/k;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1929
    invoke-virtual {p1, v0, v2, p2}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/k;)V

    goto :goto_0

    .line 1932
    :cond_1
    return-void
.end method

.method private static a(Lcom/facebook/k$g;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/k$g;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/k;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/k$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1953
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1954
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    .line 1955
    invoke-direct {v0, v1, p2}, Lcom/facebook/k;->a(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    .line 1958
    :cond_0
    const-string/jumbo v0, "batch"

    invoke-virtual {p0, v0, v1, p1}, Lcom/facebook/k$g;->a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 1959
    return-void
.end method

.method private static a(Lcom/facebook/m;Lcom/facebook/internal/r;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 7

    .prologue
    .line 1764
    new-instance v1, Lcom/facebook/k$g;

    invoke-direct {v1, p4, p1, p5}, Lcom/facebook/k$g;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/r;Z)V

    .line 1766
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    .line 1767
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/m;->a(I)Lcom/facebook/k;

    move-result-object v2

    .line 1769
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1770
    iget-object v0, v2, Lcom/facebook/k;->l:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1771
    iget-object v5, v2, Lcom/facebook/k;->l:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1772
    invoke-static {v5}, Lcom/facebook/k;->d(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1773
    new-instance v6, Lcom/facebook/k$a;

    invoke-direct {v6, v2, v5}, Lcom/facebook/k$a;-><init>(Lcom/facebook/k;Ljava/lang/Object;)V

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1777
    :cond_1
    if-eqz p1, :cond_2

    .line 1778
    const-string/jumbo v0, "  Parameters:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/internal/r;->c(Ljava/lang/String;)V

    .line 1780
    :cond_2
    iget-object v0, v2, Lcom/facebook/k;->l:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/facebook/k;->a(Landroid/os/Bundle;Lcom/facebook/k$g;Lcom/facebook/k;)V

    .line 1782
    if-eqz p1, :cond_3

    .line 1783
    const-string/jumbo v0, "  Attachments:\n"

    invoke-virtual {p1, v0}, Lcom/facebook/internal/r;->c(Ljava/lang/String;)V

    .line 1785
    :cond_3
    invoke-static {v3, v1}, Lcom/facebook/k;->a(Ljava/util/Map;Lcom/facebook/k$g;)V

    .line 1787
    iget-object v0, v2, Lcom/facebook/k;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    .line 1788
    iget-object v0, v2, Lcom/facebook/k;->h:Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/facebook/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/k$d;)V

    .line 1809
    :cond_4
    :goto_1
    return-void

    .line 1791
    :cond_5
    invoke-static {p0}, Lcom/facebook/k;->g(Lcom/facebook/m;)Ljava/lang/String;

    move-result-object v0

    .line 1792
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1793
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "App ID was not specified at the request or Settings."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1797
    :cond_6
    const-string/jumbo v2, "batch_app_id"

    invoke-virtual {v1, v2, v0}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1802
    invoke-static {v1, p0, v0}, Lcom/facebook/k;->a(Lcom/facebook/k$g;Ljava/util/Collection;Ljava/util/Map;)V

    .line 1804
    if-eqz p1, :cond_7

    .line 1805
    const-string/jumbo v2, "  Attachments:\n"

    invoke-virtual {p1, v2}, Lcom/facebook/internal/r;->c(Ljava/lang/String;)V

    .line 1807
    :cond_7
    invoke-static {v0, v1}, Lcom/facebook/k;->a(Ljava/util/Map;Lcom/facebook/k$g;)V

    goto :goto_1
.end method

.method static final a(Lcom/facebook/m;Ljava/net/HttpURLConnection;)V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1702
    new-instance v12, Lcom/facebook/internal/r;

    sget-object v0, Lcom/facebook/q;->a:Lcom/facebook/q;

    const-string/jumbo v2, "Request"

    invoke-direct {v12, v0, v2}, Lcom/facebook/internal/r;-><init>(Lcom/facebook/q;Ljava/lang/String;)V

    .line 1704
    invoke-virtual {p0}, Lcom/facebook/m;->size()I

    move-result v2

    .line 1705
    invoke-static {p0}, Lcom/facebook/k;->f(Lcom/facebook/m;)Z

    move-result v5

    .line 1707
    if-ne v2, v1, :cond_0

    .line 1708
    invoke-virtual {p0, v6}, Lcom/facebook/m;->a(I)Lcom/facebook/k;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/k;->f:Lcom/facebook/o;

    .line 1709
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/o;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1710
    invoke-static {p1, v5}, Lcom/facebook/k;->a(Ljava/net/HttpURLConnection;Z)V

    .line 1712
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 1713
    const-string/jumbo v7, "Request:\n"

    invoke-virtual {v12, v7}, Lcom/facebook/internal/r;->c(Ljava/lang/String;)V

    .line 1714
    const-string/jumbo v7, "Id"

    invoke-virtual {p0}, Lcom/facebook/m;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1715
    const-string/jumbo v7, "URL"

    invoke-virtual {v12, v7, v3}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1716
    const-string/jumbo v7, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1717
    const-string/jumbo v7, "User-Agent"

    const-string/jumbo v8, "User-Agent"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1718
    const-string/jumbo v7, "Content-Type"

    const-string/jumbo v8, "Content-Type"

    invoke-virtual {p1, v8}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v7, v8}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1720
    invoke-virtual {p0}, Lcom/facebook/m;->a()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1721
    invoke-virtual {p0}, Lcom/facebook/m;->a()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1725
    sget-object v7, Lcom/facebook/o;->b:Lcom/facebook/o;

    if-ne v0, v7, :cond_1

    move v0, v1

    .line 1726
    :goto_1
    if-nez v0, :cond_2

    .line 1727
    invoke-virtual {v12}, Lcom/facebook/internal/r;->a()V

    .line 1759
    :goto_2
    return-void

    .line 1708
    :cond_0
    sget-object v0, Lcom/facebook/o;->b:Lcom/facebook/o;

    goto :goto_0

    :cond_1
    move v0, v6

    .line 1725
    goto :goto_1

    .line 1731
    :cond_2
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1735
    :try_start_0
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1736
    if-eqz v5, :cond_3

    .line 1737
    :try_start_1
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v7, v0

    .line 1740
    :cond_3
    invoke-static {p0}, Lcom/facebook/k;->e(Lcom/facebook/m;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1742
    new-instance v4, Lcom/facebook/u;

    invoke-virtual {p0}, Lcom/facebook/m;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/facebook/u;-><init>(Landroid/os/Handler;)V

    .line 1743
    const/4 v1, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/k;->a(Lcom/facebook/m;Lcom/facebook/internal/r;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 1745
    invoke-virtual {v4}, Lcom/facebook/u;->a()I

    move-result v0

    .line 1746
    invoke-virtual {v4}, Lcom/facebook/u;->b()Ljava/util/Map;

    move-result-object v9

    .line 1748
    new-instance v6, Lcom/facebook/v;

    int-to-long v10, v0

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/v;-><init>(Ljava/io/OutputStream;Lcom/facebook/m;Ljava/util/Map;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v6

    :goto_3
    move-object v0, p0

    move-object v1, v12

    .line 1751
    :try_start_2
    invoke-static/range {v0 .. v5}, Lcom/facebook/k;->a(Lcom/facebook/m;Lcom/facebook/internal/r;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1753
    if-eqz v4, :cond_4

    .line 1754
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 1758
    :cond_4
    invoke-virtual {v12}, Lcom/facebook/internal/r;->a()V

    goto :goto_2

    .line 1753
    :catchall_0
    move-exception v0

    move-object v7, v4

    :goto_4
    if-eqz v7, :cond_5

    .line 1754
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 1756
    :cond_5
    throw v0

    .line 1753
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v7, v4

    goto :goto_4

    :cond_6
    move-object v4, v7

    goto :goto_3
.end method

.method static a(Lcom/facebook/m;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/m;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/n;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1381
    invoke-virtual {p0}, Lcom/facebook/m;->size()I

    move-result v1

    .line 1385
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1387
    invoke-virtual {p0, v0}, Lcom/facebook/m;->a(I)Lcom/facebook/k;

    move-result-object v3

    .line 1388
    iget-object v4, v3, Lcom/facebook/k;->m:Lcom/facebook/k$b;

    if-eqz v4, :cond_0

    .line 1389
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/k;->m:Lcom/facebook/k$b;

    .line 1390
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1389
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1394
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1395
    new-instance v0, Lcom/facebook/k$3;

    invoke-direct {v0, v2, p0}, Lcom/facebook/k$3;-><init>(Ljava/util/ArrayList;Lcom/facebook/m;)V

    .line 1408
    invoke-virtual {p0}, Lcom/facebook/m;->c()Landroid/os/Handler;

    move-result-object v1

    .line 1409
    if-nez v1, :cond_3

    .line 1411
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1417
    :cond_2
    :goto_1
    return-void

    .line 1414
    :cond_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/k$d;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1857
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1859
    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1860
    check-cast p1, Lorg/json/JSONObject;

    .line 1861
    if-eqz p3, :cond_0

    .line 1864
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 1865
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1866
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1867
    const-string/jumbo v3, "%s[%s]"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1870
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1868
    invoke-static {v3, v0, p2, p3}, Lcom/facebook/k;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/k$d;Z)V

    goto :goto_0

    .line 1877
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1878
    const-string/jumbo v0, "id"

    .line 1880
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1878
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/k;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/k$d;Z)V

    .line 1917
    :cond_1
    :goto_1
    return-void

    .line 1883
    :cond_2
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1884
    const-string/jumbo v0, "url"

    .line 1886
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1884
    invoke-static {p0, v0, p2, p3}, Lcom/facebook/k;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/k$d;Z)V

    goto :goto_1

    .line 1889
    :cond_3
    const-string/jumbo v0, "fbsdk:create_object"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1890
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/facebook/k;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/k$d;Z)V

    goto :goto_1

    .line 1893
    :cond_4
    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1894
    check-cast p1, Lorg/json/JSONArray;

    .line 1895
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v0, v1

    .line 1896
    :goto_2
    if-ge v0, v2, :cond_1

    .line 1897
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v4, "%s[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1898
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4, p2, p3}, Lcom/facebook/k;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/k$d;Z)V

    .line 1896
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1900
    :cond_5
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Ljava/lang/Number;

    .line 1901
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Ljava/lang/Boolean;

    .line 1902
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1903
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/k$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1904
    :cond_7
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1905
    check-cast p1, Ljava/util/Date;

    .line 1912
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1915
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/k$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static a(Ljava/net/HttpURLConnection;Z)V
    .locals 2

    .prologue
    .line 1640
    if-eqz p1, :cond_0

    .line 1641
    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    const-string/jumbo v0, "Content-Encoding"

    const-string/jumbo v1, "gzip"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1646
    :goto_0
    return-void

    .line 1644
    :cond_0
    const-string/jumbo v0, "Content-Type"

    invoke-static {}, Lcom/facebook/k;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Map;Lcom/facebook/k$g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/k$a;",
            ">;",
            "Lcom/facebook/k$g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1938
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1940
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1941
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/k$a;

    .line 1942
    invoke-virtual {v1}, Lcom/facebook/k$a;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/k;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1943
    invoke-virtual {v1}, Lcom/facebook/k$a;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcom/facebook/k$a;->a()Lcom/facebook/k;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/k;)V

    goto :goto_0

    .line 1946
    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/k$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1559
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1561
    iget-object v0, p0, Lcom/facebook/k;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1562
    const-string/jumbo v0, "name"

    iget-object v2, p0, Lcom/facebook/k;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1563
    const-string/jumbo v0, "omit_response_on_success"

    iget-boolean v2, p0, Lcom/facebook/k;->k:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/facebook/k;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1568
    const-string/jumbo v0, "depends_on"

    iget-object v2, p0, Lcom/facebook/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1571
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/k;->k()Ljava/lang/String;

    move-result-object v2

    .line 1572
    const-string/jumbo v0, "relative_url"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1573
    const-string/jumbo v0, "method"

    iget-object v3, p0, Lcom/facebook/k;->f:Lcom/facebook/o;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1574
    iget-object v0, p0, Lcom/facebook/k;->e:Lcom/facebook/a;

    if-eqz v0, :cond_2

    .line 1575
    iget-object v0, p0, Lcom/facebook/k;->e:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 1576
    invoke-static {v0}, Lcom/facebook/internal/r;->a(Ljava/lang/String;)V

    .line 1580
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1581
    iget-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1582
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1583
    iget-object v5, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1584
    invoke-static {v0}, Lcom/facebook/k;->d(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1586
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v6, "%s%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "file"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1590
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1586
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1591
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    new-instance v6, Lcom/facebook/k$a;

    invoke-direct {v6, p0, v0}, Lcom/facebook/k$a;-><init>(Lcom/facebook/k;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1596
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1597
    const-string/jumbo v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1598
    const-string/jumbo v3, "attached_files"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1601
    :cond_5
    iget-object v0, p0, Lcom/facebook/k;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    .line 1603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1604
    iget-object v3, p0, Lcom/facebook/k;->h:Lorg/json/JSONObject;

    new-instance v4, Lcom/facebook/k$4;

    invoke-direct {v4, p0, v0}, Lcom/facebook/k$4;-><init>(Lcom/facebook/k;Ljava/util/ArrayList;)V

    invoke-static {v3, v2, v4}, Lcom/facebook/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/k$d;)V

    .line 1614
    const-string/jumbo v2, "&"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    const-string/jumbo v2, "body"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1618
    :cond_6
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1619
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/k$d;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1834
    .line 1835
    invoke-static {p1}, Lcom/facebook/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1836
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1837
    const-string/jumbo v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1838
    const/4 v4, 0x3

    if-le v0, v4, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    move v3, v0

    .line 1842
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1843
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1844
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1845
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1846
    if-eqz v3, :cond_2

    const-string/jumbo v4, "image"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    .line 1847
    :goto_3
    invoke-static {v0, v6, p2, v4}, Lcom/facebook/k;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/k$d;Z)V

    goto :goto_2

    :cond_1
    move v0, v2

    .line 1838
    goto :goto_0

    :cond_2
    move v4, v2

    .line 1846
    goto :goto_3

    .line 1849
    :cond_3
    return-void

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1812
    sget-object v1, Lcom/facebook/k;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1813
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1815
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 1817
    :cond_0
    const-string/jumbo v1, "me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "/me/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1820
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Collection;)Lcom/facebook/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/k;",
            ">;)",
            "Lcom/facebook/l;"
        }
    .end annotation

    .prologue
    .line 1223
    new-instance v0, Lcom/facebook/m;

    invoke-direct {v0, p0}, Lcom/facebook/m;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/k;->c(Lcom/facebook/m;)Lcom/facebook/l;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b([Lcom/facebook/k;)Lcom/facebook/l;
    .locals 1

    .prologue
    .line 1204
    const-string/jumbo v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1206
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/k;->b(Ljava/util/Collection;)Lcom/facebook/l;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/facebook/m;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/m;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/n;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1168
    const-string/jumbo v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/y;->c(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1173
    :try_start_0
    invoke-static {p0}, Lcom/facebook/k;->a(Lcom/facebook/m;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1183
    :try_start_1
    invoke-static {v1, p0}, Lcom/facebook/k;->a(Ljava/net/HttpURLConnection;Lcom/facebook/m;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1187
    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/net/URLConnection;)V

    .line 1185
    :goto_0
    return-object v0

    .line 1174
    :catch_0
    move-exception v0

    .line 1176
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/m;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 1175
    invoke-static {v2, v3, v4}, Lcom/facebook/n;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v0

    .line 1179
    invoke-static {p0, v0}, Lcom/facebook/k;->a(Lcom/facebook/m;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1187
    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/net/URLConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/net/URLConnection;)V

    .line 1188
    throw v0
.end method

.method static final b(Lcom/facebook/k;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1661
    invoke-virtual {p0}, Lcom/facebook/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 1662
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1671
    :goto_0
    return v2

    .line 1666
    :cond_0
    const-string/jumbo v3, "v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1667
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1669
    :cond_1
    const-string/jumbo v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1671
    array-length v3, v0

    if-lt v3, v4, :cond_2

    aget-object v3, v0, v1

    .line 1672
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v4, :cond_3

    :cond_2
    aget-object v3, v0, v1

    .line 1673
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v4, :cond_4

    aget-object v0, v0, v2

    .line 1674
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-lt v0, v3, :cond_4

    :cond_3
    move v0, v2

    :goto_1
    move v2, v0

    .line 1671
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1674
    goto :goto_1
.end method

.method static synthetic b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/facebook/k;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/facebook/m;)Lcom/facebook/l;
    .locals 3

    .prologue
    .line 1241
    const-string/jumbo v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/y;->c(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1243
    new-instance v0, Lcom/facebook/l;

    invoke-direct {v0, p0}, Lcom/facebook/l;-><init>(Lcom/facebook/m;)V

    .line 1244
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/l;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1245
    return-object v0
.end method

.method static synthetic c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lcom/facebook/k;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static final d(Lcom/facebook/m;)V
    .locals 8

    .prologue
    .line 1679
    invoke-virtual {p0}, Lcom/facebook/m;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    .line 1680
    sget-object v2, Lcom/facebook/o;->a:Lcom/facebook/o;

    invoke-virtual {v0}, Lcom/facebook/k;->c()Lcom/facebook/o;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1681
    invoke-static {v0}, Lcom/facebook/k;->b(Lcom/facebook/k;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1682
    invoke-virtual {v0}, Lcom/facebook/k;->e()Landroid/os/Bundle;

    move-result-object v2

    .line 1683
    const-string/jumbo v3, "fields"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "fields"

    .line 1684
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1685
    :cond_1
    sget-object v2, Lcom/facebook/q;->f:Lcom/facebook/q;

    const/4 v3, 0x5

    const-string/jumbo v4, "Request"

    const-string/jumbo v5, "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1691
    invoke-virtual {v0}, Lcom/facebook/k;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 1685
    invoke-static {v2, v3, v4, v5, v6}, Lcom/facebook/internal/r;->a(Lcom/facebook/q;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1696
    :cond_2
    return-void
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2006
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/facebook/k$f;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Lcom/facebook/m;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1622
    invoke-virtual {p0}, Lcom/facebook/m;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/m$a;

    .line 1623
    instance-of v0, v0, Lcom/facebook/m$b;

    if-eqz v0, :cond_0

    move v0, v1

    .line 1634
    :goto_0
    return v0

    .line 1628
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/m;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    .line 1629
    invoke-virtual {v0}, Lcom/facebook/k;->g()Lcom/facebook/k$b;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/k$e;

    if-eqz v0, :cond_2

    move v0, v1

    .line 1630
    goto :goto_0

    .line 1634
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2014
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2019
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2020
    check-cast p0, Ljava/lang/String;

    .line 2026
    :goto_0
    return-object p0

    .line 2021
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 2022
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2023
    :cond_2
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_3

    .line 2024
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2026
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2028
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported parameter type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f(Lcom/facebook/m;)Z
    .locals 5

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/facebook/m;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    .line 1650
    iget-object v1, v0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1651
    iget-object v4, v0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1652
    invoke-static {v1}, Lcom/facebook/k;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1653
    const/4 v0, 0x0

    .line 1657
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static g(Lcom/facebook/m;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1986
    invoke-virtual {p0}, Lcom/facebook/m;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1987
    invoke-virtual {p0}, Lcom/facebook/m;->f()Ljava/lang/String;

    move-result-object v0

    .line 2002
    :goto_0
    return-object v0

    .line 1990
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/m;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    .line 1991
    iget-object v0, v0, Lcom/facebook/k;->e:Lcom/facebook/a;

    .line 1992
    if-eqz v0, :cond_1

    .line 1993
    invoke-virtual {v0}, Lcom/facebook/a;->l()Ljava/lang/String;

    move-result-object v0

    .line 1994
    if-eqz v0, :cond_1

    goto :goto_0

    .line 1999
    :cond_2
    sget-object v0, Lcom/facebook/k;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2000
    sget-object v0, Lcom/facebook/k;->c:Ljava/lang/String;

    goto :goto_0

    .line 2002
    :cond_3
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/facebook/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 1436
    iget-object v0, p0, Lcom/facebook/k;->e:Lcom/facebook/a;

    if-eqz v0, :cond_2

    .line 1437
    iget-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/facebook/k;->e:Lcom/facebook/a;

    invoke-virtual {v0}, Lcom/facebook/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 1439
    invoke-static {v0}, Lcom/facebook/internal/r;->a(Ljava/lang/String;)V

    .line 1440
    iget-object v1, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    const-string/jumbo v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "sdk"

    const-string/jumbo v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "format"

    const-string/jumbo v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    sget-object v0, Lcom/facebook/q;->h:Lcom/facebook/q;

    invoke-static {v0}, Lcom/facebook/j;->a(Lcom/facebook/q;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1457
    iget-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "debug"

    const-string/jumbo v2, "info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    :cond_1
    :goto_1
    return-void

    .line 1442
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/k;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1443
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v0

    .line 1444
    invoke-static {}, Lcom/facebook/j;->n()Ljava/lang/String;

    move-result-object v1

    .line 1445
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1447
    iget-object v1, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    const-string/jumbo v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1449
    :cond_3
    sget-object v0, Lcom/facebook/k;->a:Ljava/lang/String;

    const-string/jumbo v1, "Warning: Request without access token missing application ID or client token."

    invoke-static {v0, v1}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1458
    :cond_4
    sget-object v0, Lcom/facebook/q;->g:Lcom/facebook/q;

    invoke-static {v0}, Lcom/facebook/j;->a(Lcom/facebook/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    const-string/jumbo v1, "debug"

    const-string/jumbo v2, "warning"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1530
    sget-object v0, Lcom/facebook/k;->d:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1531
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    .line 1534
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/k;->p:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static p()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1962
    const-string/jumbo v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/k;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static q()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1968
    sget-object v0, Lcom/facebook/k;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1969
    const-string/jumbo v0, "%s.%s"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "FBAndroidSDK"

    aput-object v2, v1, v5

    const-string/jumbo v2, "5.15.3"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->r:Ljava/lang/String;

    .line 1972
    invoke-static {}, Lcom/facebook/internal/p;->a()Ljava/lang/String;

    move-result-object v0

    .line 1973
    invoke-static {v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1974
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v2, "%s/%s"

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/facebook/k;->r:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/k;->r:Ljava/lang/String;

    .line 1982
    :cond_0
    sget-object v0, Lcom/facebook/k;->r:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/facebook/k;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    .line 791
    return-void
.end method

.method public final a(Lcom/facebook/k$b;)V
    .locals 1

    .prologue
    .line 923
    sget-object v0, Lcom/facebook/q;->h:Lcom/facebook/q;

    invoke-static {v0}, Lcom/facebook/j;->a(Lcom/facebook/q;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/q;->g:Lcom/facebook/q;

    .line 924
    invoke-static {v0}, Lcom/facebook/j;->a(Lcom/facebook/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    :cond_0
    new-instance v0, Lcom/facebook/k$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/k$2;-><init>(Lcom/facebook/k;Lcom/facebook/k$b;)V

    .line 962
    iput-object v0, p0, Lcom/facebook/k;->m:Lcom/facebook/k$b;

    .line 967
    :goto_0
    return-void

    .line 964
    :cond_1
    iput-object p1, p0, Lcom/facebook/k;->m:Lcom/facebook/k$b;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/o;)V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/facebook/k;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/o;->a:Lcom/facebook/o;

    if-eq p1, v0, :cond_0

    .line 743
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/facebook/k;->f:Lcom/facebook/o;

    .line 746
    return-void

    .line 745
    :cond_1
    sget-object p1, Lcom/facebook/o;->a:Lcom/facebook/o;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcom/facebook/k;->o:Ljava/lang/Object;

    .line 978
    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/facebook/k;->h:Lorg/json/JSONObject;

    .line 707
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 772
    iput-boolean p1, p0, Lcom/facebook/k;->q:Z

    .line 773
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/facebook/o;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/facebook/k;->f:Lcom/facebook/o;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/facebook/k;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    return-object v0
.end method

.method public final f()Lcom/facebook/a;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/facebook/k;->e:Lcom/facebook/a;

    return-object v0
.end method

.method public final g()Lcom/facebook/k$b;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/facebook/k;->m:Lcom/facebook/k$b;

    return-object v0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/facebook/k;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()Lcom/facebook/n;
    .locals 1

    .prologue
    .line 1002
    invoke-static {p0}, Lcom/facebook/k;->a(Lcom/facebook/k;)Lcom/facebook/n;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/facebook/l;
    .locals 2

    .prologue
    .line 1017
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/k;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/k;->b([Lcom/facebook/k;)Lcom/facebook/l;

    move-result-object v0

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1498
    iget-object v0, p0, Lcom/facebook/k;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1499
    new-instance v0, Lcom/facebook/FacebookException;

    const-string/jumbo v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1502
    :cond_0
    const-string/jumbo v0, "%s/%s"

    new-array v1, v3, [Ljava/lang/Object;

    .line 1503
    invoke-static {}, Lcom/facebook/internal/v;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-direct {p0}, Lcom/facebook/k;->o()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1504
    invoke-direct {p0}, Lcom/facebook/k;->n()V

    .line 1505
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/k;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    .line 1506
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1507
    const-string/jumbo v1, "%s?%s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final l()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1511
    iget-object v0, p0, Lcom/facebook/k;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/facebook/k;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1526
    :goto_0
    return-object v0

    .line 1516
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/k;->c()Lcom/facebook/o;

    move-result-object v0

    sget-object v1, Lcom/facebook/o;->b:Lcom/facebook/o;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    const-string/jumbo v1, "/videos"

    .line 1518
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1519
    invoke-static {}, Lcom/facebook/internal/v;->c()Ljava/lang/String;

    move-result-object v0

    .line 1523
    :goto_1
    const-string/jumbo v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/facebook/k;->o()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1525
    invoke-direct {p0}, Lcom/facebook/k;->n()V

    .line 1526
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/k;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1521
    :cond_1
    invoke-static {}, Lcom/facebook/internal/v;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Request: "

    .line 1365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " accessToken: "

    .line 1366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/k;->e:Lcom/facebook/a;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 1367
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", graphPath: "

    .line 1368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/k;->g:Ljava/lang/String;

    .line 1369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", graphObject: "

    .line 1370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/k;->h:Lorg/json/JSONObject;

    .line 1371
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", httpMethod: "

    .line 1372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/k;->f:Lcom/facebook/o;

    .line 1373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parameters: "

    .line 1374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/k;->l:Landroid/os/Bundle;

    .line 1375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 1376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1364
    return-object v0

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/facebook/k;->e:Lcom/facebook/a;

    goto :goto_0
.end method
