.class public Lcom/facebook/GraphRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;,
        Lcom/facebook/GraphRequest$GraphJSONObjectCallback;,
        Lcom/facebook/GraphRequest$GraphJSONArrayCallback;,
        Lcom/facebook/GraphRequest$d;,
        Lcom/facebook/GraphRequest$b;,
        Lcom/facebook/GraphRequest$e;,
        Lcom/facebook/GraphRequest$c;,
        Lcom/facebook/GraphRequest$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "GraphRequest"

.field private static final i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/util/regex/Pattern;

.field private static volatile r:Ljava/lang/String;


# instance fields
.field b:Lcom/facebook/AccessToken;

.field public c:Lorg/json/JSONObject;

.field public d:Landroid/os/Bundle;

.field e:Lcom/facebook/GraphRequest$b;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/String;

.field public h:Z

.field private l:Lcom/facebook/k;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "^/?v\\d+\\.\\d+/(.*)"

    .line 124
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->k:Ljava/util/regex/Pattern;

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/16 v3, 0xb

    .line 146
    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 148
    array-length v5, v0

    invoke-virtual {v2, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    aget-char v5, v0, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/GraphRequest;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 155
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 192
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 219
    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;Ljava/lang/String;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->p:Z

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->h:Z

    .line 248
    iput-object p1, p0, Lcom/facebook/GraphRequest;->b:Lcom/facebook/AccessToken;

    .line 249
    iput-object p2, p0, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    .line 250
    iput-object p6, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    .line 252
    invoke-virtual {p0, p5}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$b;)V

    .line 253
    invoke-direct {p0, p4}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/k;)V

    if-eqz p3, :cond_0

    .line 256
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    goto :goto_0

    .line 258
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    .line 261
    :goto_0
    iget-object p1, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 262
    invoke-static {}, Lcom/facebook/g;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method constructor <init>(Lcom/facebook/AccessToken;Ljava/net/URL;)V
    .locals 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->p:Z

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->h:Z

    .line 267
    iput-object p1, p0, Lcom/facebook/GraphRequest;->b:Lcom/facebook/AccessToken;

    .line 268
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/GraphRequest;->q:Ljava/lang/String;

    .line 270
    sget-object p1, Lcom/facebook/k;->GET:Lcom/facebook/k;

    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/k;)V

    .line 272
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    return-void
.end method

.method public static a(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;
    .locals 7

    .line 327
    new-instance v6, Lcom/facebook/GraphRequest;

    sget-object v4, Lcom/facebook/k;->POST:Lcom/facebook/k;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    .line 2667
    iput-object p2, v6, Lcom/facebook/GraphRequest;->c:Lorg/json/JSONObject;

    return-object v6
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 7

    .line 368
    new-instance v6, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/k;Lcom/facebook/GraphRequest$b;)V

    return-object v6
.end method

.method public static a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/facebook/GraphRequest;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 1068
    invoke-static {v1}, Lcom/facebook/GraphRequest;->a([Lcom/facebook/GraphRequest;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1070
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1074
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/j;

    return-object p0

    .line 1071
    :cond_0
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "invalid state: expected a single response"

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 3

    .line 1415
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/facebook/GraphRequest;->l:Lcom/facebook/k;

    sget-object v0, Lcom/facebook/k;->POST:Lcom/facebook/k;

    if-ne p2, v0, :cond_0

    return-object p1

    .line 1419
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1421
    iget-object p2, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 1422
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1423
    iget-object v1, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 1429
    :cond_1
    invoke-static {v1}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1430
    invoke-static {v1}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1442
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1432
    :cond_2
    iget-object v0, p0, Lcom/facebook/GraphRequest;->l:Lcom/facebook/k;

    sget-object v2, Lcom/facebook/k;->GET:Lcom/facebook/k;

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 1433
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1437
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Unsupported parameter type for GET request: %s"

    .line 1434
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1445
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lcom/facebook/i;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/i;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    .line 1127
    invoke-static {p0, v0}, Lcom/facebook/internal/af;->a(Ljava/util/Collection;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1132
    :try_start_0
    invoke-static {p0}, Lcom/facebook/GraphRequest;->c(Lcom/facebook/i;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1141
    :try_start_1
    invoke-static {v0, p0}, Lcom/facebook/GraphRequest;->a(Ljava/net/HttpURLConnection;Lcom/facebook/i;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/net/URLConnection;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13168
    :try_start_2
    iget-object v2, p0, Lcom/facebook/i;->b:Ljava/util/List;

    .line 1136
    new-instance v3, Lcom/facebook/FacebookException;

    invoke-direct {v3, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 1135
    invoke-static {v2, v0, v3}, Lcom/facebook/j;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v1

    .line 1137
    invoke-static {p0, v1}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/i;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1145
    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/net/URLConnection;)V

    return-object v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/net/URLConnection;)V

    .line 1146
    throw p0
.end method

.method public static a(Ljava/net/HttpURLConnection;Lcom/facebook/i;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/i;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation

    .line 1238
    invoke-static {p0, p1}, Lcom/facebook/j;->a(Ljava/net/HttpURLConnection;Lcom/facebook/i;)Ljava/util/List;

    move-result-object v0

    .line 1240
    invoke-static {p0}, Lcom/facebook/internal/ae;->a(Ljava/net/URLConnection;)V

    .line 1242
    invoke-virtual {p1}, Lcom/facebook/i;->size()I

    move-result p0

    .line 1243
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 1252
    invoke-static {p1, v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/i;Ljava/util/List;)V

    .line 1255
    invoke-static {}, Lcom/facebook/b;->a()Lcom/facebook/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/b;->b()V

    return-object v0

    .line 1244
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 1249
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "Received %d responses while expecting %d"

    .line 1245
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation

    .line 1109
    new-instance v0, Lcom/facebook/i;

    invoke-direct {v0, p0}, Lcom/facebook/i;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static varargs a([Lcom/facebook/GraphRequest;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/GraphRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/j;",
            ">;"
        }
    .end annotation

    const-string v0, "requests"

    .line 1091
    invoke-static {p0, v0}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/os/Bundle;Lcom/facebook/GraphRequest$e;Lcom/facebook/GraphRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1845
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1847
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1848
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1849
    invoke-static {v2}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1850
    invoke-virtual {p1, v1, v2, p2}, Lcom/facebook/GraphRequest$e;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Lcom/facebook/GraphRequest$e;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/GraphRequest$e;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1870
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1871
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest;

    .line 1872
    invoke-direct {v2, v0, p2}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p2, "batch"

    .line 1875
    invoke-virtual {p0, p2, v0, p1}, Lcom/facebook/GraphRequest$e;->a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    return-void
.end method

.method private static a(Lcom/facebook/i;Lcom/facebook/internal/x;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1708
    new-instance v0, Lcom/facebook/GraphRequest$e;

    invoke-direct {v0, p4, p1, p5}, Lcom/facebook/GraphRequest$e;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/x;Z)V

    const-string p4, "  Attachments:\n"

    const/4 p5, 0x1

    if-ne p2, p5, :cond_5

    const/4 p2, 0x0

    .line 1711
    invoke-virtual {p0, p2}, Lcom/facebook/i;->a(I)Lcom/facebook/GraphRequest;

    move-result-object p0

    .line 1713
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1714
    iget-object p5, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {p5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1715
    iget-object v2, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1716
    invoke-static {v2}, Lcom/facebook/GraphRequest;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1717
    new-instance v3, Lcom/facebook/GraphRequest$a;

    invoke-direct {v3, p0, v2}, Lcom/facebook/GraphRequest$a;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string p5, "  Parameters:\n"

    .line 1722
    invoke-virtual {p1, p5}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)V

    .line 1724
    :cond_2
    iget-object p5, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-static {p5, v0, p0}, Lcom/facebook/GraphRequest;->a(Landroid/os/Bundle;Lcom/facebook/GraphRequest$e;Lcom/facebook/GraphRequest;)V

    if-eqz p1, :cond_3

    .line 1727
    invoke-virtual {p1, p4}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)V

    .line 1729
    :cond_3
    invoke-static {p2, v0}, Lcom/facebook/GraphRequest;->a(Ljava/util/Map;Lcom/facebook/GraphRequest$e;)V

    .line 1731
    iget-object p0, p0, Lcom/facebook/GraphRequest;->c:Lorg/json/JSONObject;

    if-eqz p0, :cond_4

    .line 1732
    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$c;)V

    :cond_4
    return-void

    .line 1735
    :cond_5
    invoke-static {p0}, Lcom/facebook/GraphRequest;->f(Lcom/facebook/i;)Ljava/lang/String;

    move-result-object p2

    .line 1736
    invoke-static {p2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "batch_app_id"

    .line 1740
    invoke-virtual {v0, p3, p2}, Lcom/facebook/GraphRequest$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1745
    invoke-static {v0, p0, p2}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest$e;Ljava/util/Collection;Ljava/util/Map;)V

    if-eqz p1, :cond_6

    .line 1748
    invoke-virtual {p1, p4}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)V

    .line 1750
    :cond_6
    invoke-static {p2, v0}, Lcom/facebook/GraphRequest;->a(Ljava/util/Map;Lcom/facebook/GraphRequest$e;)V

    return-void

    .line 1737
    :cond_7
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "App ID was not specified at the request or Settings."

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/facebook/i;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/i;",
            "Ljava/util/List<",
            "Lcom/facebook/j;",
            ">;)V"
        }
    .end annotation

    .line 1331
    invoke-virtual {p0}, Lcom/facebook/i;->size()I

    move-result v0

    .line 1335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1338
    invoke-virtual {p0, v2}, Lcom/facebook/i;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 1339
    iget-object v4, v3, Lcom/facebook/GraphRequest;->e:Lcom/facebook/GraphRequest$b;

    if-eqz v4, :cond_0

    .line 1340
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Lcom/facebook/GraphRequest;->e:Lcom/facebook/GraphRequest$b;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1344
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 1345
    new-instance p1, Lcom/facebook/GraphRequest$3;

    invoke-direct {p1, v1, p0}, Lcom/facebook/GraphRequest$3;-><init>(Ljava/util/ArrayList;Lcom/facebook/i;)V

    .line 14160
    iget-object p0, p0, Lcom/facebook/i;->a:Landroid/os/Handler;

    if-nez p0, :cond_2

    .line 1362
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1365
    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private a(Lcom/facebook/k;)V
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/facebook/GraphRequest;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/k;->GET:Lcom/facebook/k;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    .line 706
    :cond_2
    sget-object p1, Lcom/facebook/k;->GET:Lcom/facebook/k;

    :goto_1
    iput-object p1, p0, Lcom/facebook/GraphRequest;->l:Lcom/facebook/k;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$c;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1794
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1796
    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 1797
    check-cast p1, Lorg/json/JSONObject;

    if-eqz p3, :cond_1

    .line 1801
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1802
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1803
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object v1, v5, v3

    const-string v6, "%s[%s]"

    .line 1804
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1805
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$c;Z)V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "id"

    .line 1810
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1811
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$c;Z)V

    return-void

    :cond_2
    const-string v0, "url"

    .line 1812
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1813
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$c;Z)V

    return-void

    :cond_3
    const-string v0, "fbsdk:create_object"

    .line 1814
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1815
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    return-void

    .line 1818
    :cond_5
    const-class v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1819
    check-cast p1, Lorg/json/JSONArray;

    .line 1820
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1822
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p0, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "%s[%d]"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1823
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6, p2, p3}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$c;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 1825
    :cond_7
    const-class p3, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_a

    const-class p3, Ljava/lang/Number;

    .line 1826
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_a

    const-class p3, Ljava/lang/Boolean;

    .line 1827
    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_3

    .line 1829
    :cond_8
    const-class p3, Ljava/util/Date;

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 1830
    check-cast p1, Ljava/util/Date;

    .line 1837
    new-instance p3, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {p3, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1839
    invoke-virtual {p3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/facebook/GraphRequest$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 1828
    :cond_a
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/facebook/GraphRequest$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/facebook/GraphRequest$e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$a;",
            ">;",
            "Lcom/facebook/GraphRequest$e;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1857
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1859
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1860
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest$a;

    .line 16502
    iget-object v3, v2, Lcom/facebook/GraphRequest$a;->b:Ljava/lang/Object;

    .line 1861
    invoke-static {v3}, Lcom/facebook/GraphRequest;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17502
    iget-object v3, v2, Lcom/facebook/GraphRequest$a;->b:Ljava/lang/Object;

    .line 18498
    iget-object v2, v2, Lcom/facebook/GraphRequest$a;->a:Lcom/facebook/GraphRequest;

    .line 1862
    invoke-virtual {p1, v1, v3, v2}, Lcom/facebook/GraphRequest$e;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/GraphRequest$a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1508
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1510
    iget-object v1, p0, Lcom/facebook/GraphRequest;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "name"

    .line 1511
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1512
    iget-boolean v1, p0, Lcom/facebook/GraphRequest;->p:Z

    const-string v2, "omit_response_on_success"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1515
    :cond_0
    iget-object v1, p0, Lcom/facebook/GraphRequest;->o:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "depends_on"

    .line 1516
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1519
    :cond_1
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "relative_url"

    .line 1520
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1521
    iget-object v2, p0, Lcom/facebook/GraphRequest;->l:Lcom/facebook/k;

    const-string v3, "method"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1522
    iget-object v2, p0, Lcom/facebook/GraphRequest;->b:Lcom/facebook/AccessToken;

    if-eqz v2, :cond_2

    .line 1523
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 1524
    invoke-static {v2}, Lcom/facebook/internal/x;->b(Ljava/lang/String;)V

    .line 1528
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1529
    iget-object v3, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1530
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1531
    iget-object v5, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1532
    invoke-static {v4}, Lcom/facebook/GraphRequest;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1534
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "file"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 1535
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "%s%d"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1536
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1537
    new-instance v6, Lcom/facebook/GraphRequest$a;

    invoke-direct {v6, p0, v4}, Lcom/facebook/GraphRequest$a;-><init>(Lcom/facebook/GraphRequest;Ljava/lang/Object;)V

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1541
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, ","

    .line 1542
    invoke-static {p2, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "attached_files"

    .line 1543
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1546
    :cond_5
    iget-object p2, p0, Lcom/facebook/GraphRequest;->c:Lorg/json/JSONObject;

    if-eqz p2, :cond_6

    .line 1548
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    iget-object v2, p0, Lcom/facebook/GraphRequest;->c:Lorg/json/JSONObject;

    new-instance v3, Lcom/facebook/GraphRequest$4;

    invoke-direct {v3, p0, p2}, Lcom/facebook/GraphRequest$4;-><init>(Lcom/facebook/GraphRequest;Ljava/util/ArrayList;)V

    invoke-static {v2, v1, v3}, Lcom/facebook/GraphRequest;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$c;)V

    const-string v1, "&"

    .line 1559
    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "body"

    .line 1560
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1563
    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/facebook/GraphRequest$c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15755
    sget-object v0, Lcom/facebook/GraphRequest;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 15756
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 15758
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const-string v1, "me/"

    .line 15760
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string v1, "/me/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    const-string v0, ":"

    .line 1776
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "?"

    .line 1777
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    if-ge v0, p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 1782
    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1783
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1784
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1785
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz p1, :cond_5

    const-string v5, "image"

    .line 1786
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    .line 1787
    :goto_5
    invoke-static {v1, v4, p2, v5}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest$c;Z)V

    goto :goto_4

    :cond_6
    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/facebook/GraphRequest;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Lcom/facebook/i;)Lcom/facebook/h;
    .locals 2

    const-string v0, "requests"

    .line 1198
    invoke-static {p0, v0}, Lcom/facebook/internal/af;->a(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1200
    new-instance v0, Lcom/facebook/h;

    invoke-direct {v0, p0}, Lcom/facebook/h;-><init>(Lcom/facebook/i;)V

    .line 1201
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Lcom/facebook/h;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/facebook/GraphRequest;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/facebook/i;)Ljava/net/HttpURLConnection;
    .locals 15

    const-string v0, "User-Agent"

    .line 3621
    invoke-virtual {p0}, Lcom/facebook/i;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Request"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/GraphRequest;

    .line 3622
    sget-object v7, Lcom/facebook/k;->GET:Lcom/facebook/k;

    .line 3694
    iget-object v8, v2, Lcom/facebook/GraphRequest;->l:Lcom/facebook/k;

    .line 3622
    invoke-virtual {v7, v8}, Lcom/facebook/k;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4716
    iget-object v7, v2, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    .line 4606
    invoke-static {v7}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const-string v8, "v"

    .line 4610
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4611
    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :cond_3
    const-string v8, "\\."

    .line 4613
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4615
    array-length v8, v7

    if-lt v8, v4, :cond_4

    aget-object v8, v7, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-gt v8, v4, :cond_1

    :cond_4
    aget-object v8, v7, v5

    .line 4616
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lt v8, v4, :cond_5

    aget-object v4, v7, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x4

    if-lt v4, v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_0

    .line 4740
    iget-object v4, v2, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    const-string v7, "fields"

    .line 3625
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3626
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3627
    :cond_6
    sget-object v4, Lcom/facebook/m;->DEVELOPER_ERRORS:Lcom/facebook/m;

    new-array v6, v6, [Ljava/lang/Object;

    .line 5676
    iget-object v2, v2, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    aput-object v2, v6, v5

    const-string v2, "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter."

    .line 3627
    invoke-static {v4, v3, v2, v6}, Lcom/facebook/internal/x;->b(Lcom/facebook/m;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1028
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/i;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4

    const-string v2, "%s/%s"

    if-ne v1, v6, :cond_a

    .line 1030
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/facebook/i;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 1033
    new-instance v7, Ljava/net/URL;

    .line 6462
    iget-object v8, v1, Lcom/facebook/GraphRequest;->q:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 6463
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 6694
    :cond_8
    iget-object v8, v1, Lcom/facebook/GraphRequest;->l:Lcom/facebook/k;

    .line 6467
    sget-object v9, Lcom/facebook/k;->POST:Lcom/facebook/k;

    if-ne v8, v9, :cond_9

    iget-object v8, v1, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    if-eqz v8, :cond_9

    const-string v9, "/videos"

    .line 6469
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 6470
    invoke-static {}, Lcom/facebook/internal/ac;->g()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 6472
    :cond_9
    invoke-static {}, Lcom/facebook/internal/ac;->f()Ljava/lang/String;

    move-result-object v8

    :goto_3
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v8, v9, v5

    .line 6474
    invoke-direct {v1}, Lcom/facebook/GraphRequest;->g()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v6

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 6476
    invoke-direct {v1}, Lcom/facebook/GraphRequest;->e()V

    .line 6477
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v8, v9}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    :goto_4
    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 1037
    :cond_a
    new-instance v7, Ljava/net/URL;

    invoke-static {}, Lcom/facebook/internal/ac;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_5
    const/4 v1, 0x0

    .line 7376
    :try_start_2
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 7885
    sget-object v8, Lcom/facebook/GraphRequest;->r:Ljava/lang/String;

    if-nez v8, :cond_b

    const-string v8, "%s.%s"

    new-array v9, v4, [Ljava/lang/Object;

    const-string v10, "FBAndroidSDK"

    aput-object v10, v9, v5

    const-string v10, "9.1.1"

    aput-object v10, v9, v6

    .line 7886
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/facebook/GraphRequest;->r:Ljava/lang/String;

    .line 7889
    invoke-static {}, Lcom/facebook/internal/v;->a()Ljava/lang/String;

    move-result-object v8

    .line 7890
    invoke-static {v8}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 7891
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v10, Lcom/facebook/GraphRequest;->r:Ljava/lang/String;

    aput-object v10, v4, v5

    aput-object v8, v4, v6

    invoke-static {v9, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/GraphRequest;->r:Ljava/lang/String;

    .line 7895
    :cond_b
    sget-object v2, Lcom/facebook/GraphRequest;->r:Ljava/lang/String;

    .line 7378
    invoke-virtual {v7, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    .line 7379
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7381
    invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8641
    :try_start_3
    new-instance v2, Lcom/facebook/internal/x;

    sget-object v4, Lcom/facebook/m;->REQUESTS:Lcom/facebook/m;

    invoke-direct {v2, v4, v3}, Lcom/facebook/internal/x;-><init>(Lcom/facebook/m;Ljava/lang/String;)V

    .line 8643
    invoke-virtual {p0}, Lcom/facebook/i;->size()I

    move-result v3

    .line 8644
    invoke-static {p0}, Lcom/facebook/GraphRequest;->e(Lcom/facebook/i;)Z

    move-result v4

    if-ne v3, v6, :cond_c

    .line 8647
    invoke-virtual {p0, v5}, Lcom/facebook/i;->a(I)Lcom/facebook/GraphRequest;

    move-result-object v8

    iget-object v8, v8, Lcom/facebook/GraphRequest;->l:Lcom/facebook/k;

    goto :goto_6

    :cond_c
    sget-object v8, Lcom/facebook/k;->POST:Lcom/facebook/k;

    .line 8648
    :goto_6
    invoke-virtual {v8}, Lcom/facebook/k;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v9, "Content-Type"

    if-eqz v4, :cond_d

    :try_start_4
    const-string v10, "application/x-www-form-urlencoded"

    .line 9585
    invoke-virtual {v7, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "Content-Encoding"

    const-string v11, "gzip"

    .line 9586
    invoke-virtual {v7, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    const-string v10, "multipart/form-data; boundary=%s"

    new-array v11, v6, [Ljava/lang/Object;

    .line 9879
    sget-object v12, Lcom/facebook/GraphRequest;->i:Ljava/lang/String;

    aput-object v12, v11, v5

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 9588
    invoke-virtual {v7, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8651
    :goto_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v14

    const-string v10, "Request:\n"

    .line 8652
    invoke-virtual {v2, v10}, Lcom/facebook/internal/x;->a(Ljava/lang/String;)V

    const-string v10, "Id"

    .line 10156
    iget-object v11, p0, Lcom/facebook/i;->d:Ljava/lang/String;

    .line 8653
    invoke-virtual {v2, v10, v11}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "URL"

    .line 8654
    invoke-virtual {v2, v10, v14}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v10, "Method"

    .line 8655
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8656
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v0, v10}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8657
    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11085
    iget v0, p0, Lcom/facebook/i;->c:I

    .line 8659
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 12085
    iget v0, p0, Lcom/facebook/i;->c:I

    .line 8660
    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 8664
    sget-object v0, Lcom/facebook/k;->POST:Lcom/facebook/k;

    if-ne v8, v0, :cond_e

    const/4 v5, 0x1

    :cond_e
    if-nez v5, :cond_f

    .line 8666
    invoke-virtual {v2}, Lcom/facebook/internal/x;->a()V

    goto :goto_9

    .line 8670
    :cond_f
    invoke-virtual {v7, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 8674
    :try_start_5
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_10

    .line 8676
    :try_start_6
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_a

    :cond_10
    move-object v1, v0

    .line 8679
    :goto_8
    :try_start_7
    invoke-static {p0}, Lcom/facebook/GraphRequest;->d(Lcom/facebook/i;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8681
    new-instance v0, Lcom/facebook/p;

    .line 12160
    iget-object v5, p0, Lcom/facebook/i;->a:Landroid/os/Handler;

    .line 8681
    invoke-direct {v0, v5}, Lcom/facebook/p;-><init>(Landroid/os/Handler;)V

    const/4 v9, 0x0

    move-object v8, p0

    move v10, v3

    move-object v11, v14

    move-object v12, v0

    move v13, v4

    .line 8682
    invoke-static/range {v8 .. v13}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/i;Lcom/facebook/internal/x;ILjava/net/URL;Ljava/io/OutputStream;Z)V

    .line 13047
    iget v5, v0, Lcom/facebook/p;->b:I

    .line 13051
    iget-object v11, v0, Lcom/facebook/p;->a:Ljava/util/Map;

    .line 8687
    new-instance v0, Lcom/facebook/q;

    int-to-long v12, v5

    move-object v8, v0

    move-object v9, v1

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/facebook/q;-><init>(Ljava/io/OutputStream;Lcom/facebook/i;Ljava/util/Map;J)V

    move-object v1, v0

    :cond_11
    move-object v8, p0

    move-object v9, v2

    move v10, v3

    move-object v11, v14

    move-object v12, v1

    move v13, v4

    .line 8690
    invoke-static/range {v8 .. v13}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/i;Lcom/facebook/internal/x;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 8693
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 8697
    invoke-virtual {v2}, Lcom/facebook/internal/x;->a()V

    :goto_9
    return-object v7

    :catchall_1
    move-exception p0

    :goto_a
    if-eqz v1, :cond_12

    .line 8693
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 8695
    :cond_12
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    goto :goto_b

    :catch_1
    move-exception p0

    :goto_b
    move-object v1, v7

    goto :goto_c

    :catch_2
    move-exception p0

    goto :goto_c

    :catch_3
    move-exception p0

    .line 1049
    :goto_c
    invoke-static {v1}, Lcom/facebook/internal/ae;->a(Ljava/net/URLConnection;)V

    .line 1051
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "could not construct request body"

    invoke-direct {v0, v1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    .line 1040
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "could not construct URL for request"

    invoke-direct {v0, v1, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static c(Ljava/lang/Object;)Z
    .locals 1

    .line 1919
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    instance-of v0, p0, [B

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/net/Uri;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/facebook/GraphRequest;->i:Ljava/lang/String;

    return-object v0
.end method

.method private static d(Lcom/facebook/i;)Z
    .locals 3

    .line 14172
    iget-object v0, p0, Lcom/facebook/i;->e:Ljava/util/List;

    .line 1567
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/i$a;

    .line 1568
    instance-of v1, v1, Lcom/facebook/i$b;

    if-eqz v1, :cond_0

    return v2

    .line 1573
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/i;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 14870
    iget-object v0, v0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/GraphRequest$b;

    .line 1574
    instance-of v0, v0, Lcom/facebook/GraphRequest$d;

    if-eqz v0, :cond_2

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 1

    .line 1927
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/util/Date;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static e(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1934
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1935
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1936
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1938
    :cond_1
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 1939
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1941
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1943
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported parameter type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1937
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 1386
    iget-object v0, p0, Lcom/facebook/GraphRequest;->b:Lcom/facebook/AccessToken;

    const-string v1, "access_token"

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1388
    iget-object v0, p0, Lcom/facebook/GraphRequest;->b:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 1389
    invoke-static {v0}, Lcom/facebook/internal/x;->b(Ljava/lang/String;)V

    .line 1390
    iget-object v2, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1392
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/GraphRequest;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1393
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v0

    .line 1394
    invoke-static {}, Lcom/facebook/g;->o()Ljava/lang/String;

    move-result-object v2

    .line 1395
    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1397
    iget-object v2, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1399
    :cond_1
    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    .line 1404
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    const-string v1, "sdk"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    sget-object v0, Lcom/facebook/m;->GRAPH_API_DEBUG_INFO:Lcom/facebook/m;

    invoke-static {v0}, Lcom/facebook/g;->b(Lcom/facebook/m;)Z

    move-result v0

    const-string v1, "debug"

    if-eqz v0, :cond_3

    .line 1408
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    const-string v2, "info"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1409
    :cond_3
    sget-object v0, Lcom/facebook/m;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/m;

    invoke-static {v0}, Lcom/facebook/g;->b(Lcom/facebook/m;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1410
    iget-object v0, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    const-string v2, "warning"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private static e(Lcom/facebook/i;)Z
    .locals 4

    .line 1593
    invoke-virtual {p0}, Lcom/facebook/i;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1594
    iget-object v1, v0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1595
    iget-object v3, v0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1596
    invoke-static {v2}, Lcom/facebook/GraphRequest;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private f()Ljava/lang/String;
    .locals 5

    .line 1449
    iget-object v0, p0, Lcom/facebook/GraphRequest;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 1454
    invoke-static {}, Lcom/facebook/internal/ac;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/facebook/GraphRequest;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s/%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1455
    invoke-direct {p0}, Lcom/facebook/GraphRequest;->e()V

    .line 1456
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2}, Lcom/facebook/GraphRequest;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    .line 1457
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1458
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "%s?%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1450
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t override URL for a batch request"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static f(Lcom/facebook/i;)Ljava/lang/String;
    .locals 1

    .line 19181
    iget-object v0, p0, Lcom/facebook/i;->f:Ljava/lang/String;

    .line 1899
    invoke-static {v0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20181
    iget-object p0, p0, Lcom/facebook/i;->f:Ljava/lang/String;

    return-object p0

    .line 1903
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/i;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 1904
    iget-object v0, v0, Lcom/facebook/GraphRequest;->b:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_1

    .line 1906
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 1912
    :cond_2
    sget-object p0, Lcom/facebook/GraphRequest;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1913
    sget-object p0, Lcom/facebook/GraphRequest;->j:Ljava/lang/String;

    return-object p0

    .line 1915
    :cond_3
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g()Ljava/lang/String;
    .locals 3

    .line 1481
    sget-object v0, Lcom/facebook/GraphRequest;->k:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1482
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1485
    iget-object v2, p0, Lcom/facebook/GraphRequest;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "%s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 731
    iput-boolean v0, p0, Lcom/facebook/GraphRequest;->h:Z

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    return-void
.end method

.method public final a(Lcom/facebook/GraphRequest$b;)V
    .locals 1

    .line 880
    sget-object v0, Lcom/facebook/m;->GRAPH_API_DEBUG_INFO:Lcom/facebook/m;

    invoke-static {v0}, Lcom/facebook/g;->b(Lcom/facebook/m;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/facebook/m;->GRAPH_API_DEBUG_WARNING:Lcom/facebook/m;

    .line 881
    invoke-static {v0}, Lcom/facebook/g;->b(Lcom/facebook/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    iput-object p1, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/GraphRequest$b;

    return-void

    .line 882
    :cond_1
    :goto_0
    new-instance v0, Lcom/facebook/GraphRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/GraphRequest$2;-><init>(Lcom/facebook/GraphRequest;Lcom/facebook/GraphRequest$b;)V

    .line 923
    iput-object v0, p0, Lcom/facebook/GraphRequest;->e:Lcom/facebook/GraphRequest$b;

    return-void
.end method

.method public final b()Lcom/facebook/j;
    .locals 1

    .line 962
    invoke-static {p0}, Lcom/facebook/GraphRequest;->a(Lcom/facebook/GraphRequest;)Lcom/facebook/j;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/facebook/h;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "requests"

    .line 3162
    invoke-static {v0, v1}, Lcom/facebook/internal/af;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3164
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3181
    new-instance v1, Lcom/facebook/i;

    invoke-direct {v1, v0}, Lcom/facebook/i;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lcom/facebook/GraphRequest;->b(Lcom/facebook/i;)Lcom/facebook/h;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Request:  accessToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1316
    iget-object v1, p0, Lcom/facebook/GraphRequest;->b:Lcom/facebook/AccessToken;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 1317
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphPath: "

    .line 1318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->m:Ljava/lang/String;

    .line 1319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", graphObject: "

    .line 1320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->c:Lorg/json/JSONObject;

    .line 1321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpMethod: "

    .line 1322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->l:Lcom/facebook/k;

    .line 1323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parameters: "

    .line 1324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/GraphRequest;->d:Landroid/os/Bundle;

    .line 1325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 1326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
