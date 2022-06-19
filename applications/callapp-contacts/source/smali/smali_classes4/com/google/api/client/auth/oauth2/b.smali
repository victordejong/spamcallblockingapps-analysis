.class public Lcom/google/api/client/auth/oauth2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/m;
.implements Lcom/google/api/client/http/s;
.implements Lcom/google/api/client/http/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/auth/oauth2/b$b;,
        Lcom/google/api/client/auth/oauth2/b$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Lcom/google/api/client/auth/oauth2/b$a;

.field private final d:Lcom/google/api/client/a/i;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/String;

.field private final h:Lcom/google/api/client/http/w;

.field private final i:Lcom/google/api/client/http/m;

.field private final j:Lcom/google/api/client/json/JsonFactory;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/google/api/client/http/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/google/api/client/auth/oauth2/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/auth/oauth2/b;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/auth/oauth2/b$a;)V
    .locals 1

    .line 166
    new-instance v0, Lcom/google/api/client/auth/oauth2/b$b;

    invoke-direct {v0, p1}, Lcom/google/api/client/auth/oauth2/b$b;-><init>(Lcom/google/api/client/auth/oauth2/b$a;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/auth/oauth2/b;-><init>(Lcom/google/api/client/auth/oauth2/b$b;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/auth/oauth2/b$b;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    .line 174
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/b$b;->a:Lcom/google/api/client/auth/oauth2/b$a;

    .line 1125
    invoke-static {v0}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 174
    check-cast v0, Lcom/google/api/client/auth/oauth2/b$a;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->c:Lcom/google/api/client/auth/oauth2/b$a;

    .line 175
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/b$b;->b:Lcom/google/api/client/http/w;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->h:Lcom/google/api/client/http/w;

    .line 176
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/b$b;->c:Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->j:Lcom/google/api/client/json/JsonFactory;

    .line 177
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/b$b;->d:Lcom/google/api/client/http/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/b$b;->d:Lcom/google/api/client/http/i;

    invoke-virtual {v0}, Lcom/google/api/client/http/i;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->k:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/b$b;->f:Lcom/google/api/client/http/m;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->i:Lcom/google/api/client/http/m;

    .line 179
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/b$b;->g:Lcom/google/api/client/http/s;

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->m:Lcom/google/api/client/http/s;

    .line 180
    iget-object v0, p1, Lcom/google/api/client/auth/oauth2/b$b;->h:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->l:Ljava/util/Collection;

    .line 181
    iget-object p1, p1, Lcom/google/api/client/auth/oauth2/b$b;->e:Lcom/google/api/client/a/i;

    .line 2125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 181
    check-cast p1, Lcom/google/api/client/a/i;

    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/b;->d:Lcom/google/api/client/a/i;

    return-void
.end method

.method private a(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/b;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 401
    :try_start_0
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/b;->f:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    iget-object p1, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 404
    throw p1
.end method

.method private a()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5540
    :try_start_0
    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/b;->g:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 5543
    :cond_0
    new-instance v3, Lcom/google/api/client/auth/oauth2/c;

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/b;->h:Lcom/google/api/client/http/w;

    iget-object v5, p0, Lcom/google/api/client/auth/oauth2/b;->j:Lcom/google/api/client/json/JsonFactory;

    new-instance v6, Lcom/google/api/client/http/i;

    iget-object v7, p0, Lcom/google/api/client/auth/oauth2/b;->k:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/api/client/auth/oauth2/b;->g:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/api/client/auth/oauth2/c;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/i;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/b;->i:Lcom/google/api/client/http/m;

    .line 5545
    invoke-virtual {v3, v4}, Lcom/google/api/client/auth/oauth2/c;->a(Lcom/google/api/client/http/m;)Lcom/google/api/client/auth/oauth2/c;

    move-result-object v3

    iget-object v4, p0, Lcom/google/api/client/auth/oauth2/b;->m:Lcom/google/api/client/http/s;

    .line 5546
    invoke-virtual {v3, v4}, Lcom/google/api/client/auth/oauth2/c;->a(Lcom/google/api/client/http/s;)Lcom/google/api/client/auth/oauth2/c;

    move-result-object v3

    .line 5547
    invoke-virtual {v3}, Lcom/google/api/client/auth/oauth2/c;->b()Lcom/google/api/client/auth/oauth2/TokenResponse;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_6

    .line 6513
    invoke-virtual {v3}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/api/client/auth/oauth2/b;->a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/b;

    .line 6516
    invoke-virtual {v3}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6517
    invoke-virtual {v3}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/api/client/auth/oauth2/b;->b(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/b;

    .line 6519
    :cond_1
    invoke-virtual {v3}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/api/client/auth/oauth2/b;->b(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/b;

    .line 473
    iget-object v3, p0, Lcom/google/api/client/auth/oauth2/b;->l:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/api/client/auth/oauth2/TokenResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 496
    :cond_2
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v3

    const/16 v4, 0x190

    .line 479
    :try_start_1
    invoke-virtual {v3}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->getStatusCode()I

    move-result v5

    if-gt v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/google/api/client/auth/oauth2/TokenResponseException;->getStatusCode()I

    move-result v4

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 7056
    :goto_2
    iget-object v4, v3, Lcom/google/api/client/auth/oauth2/TokenResponseException;->a:Lcom/google/api/client/auth/oauth2/TokenErrorResponse;

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 484
    invoke-virtual {p0, v2}, Lcom/google/api/client/auth/oauth2/b;->a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/b;

    .line 485
    invoke-direct {p0, v2}, Lcom/google/api/client/auth/oauth2/b;->b(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/b;

    .line 487
    :cond_4
    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/b;->l:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    if-nez v0, :cond_7

    .line 496
    :cond_6
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    .line 491
    :cond_7
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 496
    :goto_4
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 497
    throw v0
.end method

.method private b(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/b;
    .locals 6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->d:Lcom/google/api/client/a/i;

    .line 436
    invoke-interface {v0}, Lcom/google/api/client/a/i;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 435
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/api/client/auth/oauth2/b;->a(Ljava/lang/Long;)Lcom/google/api/client/auth/oauth2/b;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/b;
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_1

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->j:Lcom/google/api/client/json/JsonFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->h:Lcom/google/api/client/http/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->i:Lcom/google/api/client/http/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Please use the Builder and call setJsonFactory, setTransport, setClientAuthentication and setTokenServerUrl/setTokenServerEncodedUrl"

    .line 5047
    invoke-static {v0, v1}, Lcom/google/common/base/m;->a(ZLjava/lang/Object;)V

    .line 371
    :cond_1
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/b;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-object p1, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 374
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/api/client/auth/oauth2/b;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 296
    :try_start_0
    iput-object p1, p0, Lcom/google/api/client/auth/oauth2/b;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object p1, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 299
    throw p1
.end method

.method public a(Lcom/google/api/client/http/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4563
    iput-object p0, p1, Lcom/google/api/client/http/q;->c:Lcom/google/api/client/http/m;

    .line 4583
    iput-object p0, p1, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/x;

    return-void
.end method

.method public final a(Lcom/google/api/client/http/q;Lcom/google/api/client/http/t;Z)Z
    .locals 4

    .line 2273
    iget-object p3, p2, Lcom/google/api/client/http/t;->e:Lcom/google/api/client/http/q;

    .line 2519
    iget-object p3, p3, Lcom/google/api/client/http/q;->e:Lcom/google/api/client/http/n;

    .line 2743
    iget-object p3, p3, Lcom/google/api/client/http/n;->authenticate:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 235
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Bearer "

    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    sget-object p3, Lcom/google/api/client/auth/oauth2/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 3292
    iget p2, p2, Lcom/google/api/client/http/t;->c:I

    const/16 p3, 0x191

    if-ne p2, p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :cond_3
    :goto_1
    if-eqz p3, :cond_6

    .line 252
    :try_start_0
    iget-object p2, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :try_start_1
    iget-object p2, p0, Lcom/google/api/client/auth/oauth2/b;->e:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/api/client/auth/oauth2/b;->c:Lcom/google/api/client/auth/oauth2/b$a;

    invoke-interface {p3, p1}, Lcom/google/api/client/auth/oauth2/b$a;->a(Lcom/google/api/client/http/q;)Ljava/lang/String;

    move-result-object p1

    .line 4039
    invoke-static {p2, p1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 256
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/b;->a()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 258
    :cond_5
    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 259
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 261
    sget-object p2, Lcom/google/api/client/auth/oauth2/b;->a:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v0, "unable to refresh token"

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return v1
.end method

.method public final getExpiresInSeconds()Ljava/lang/Long;
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->f:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    return-object v0

    .line 418
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/api/client/auth/oauth2/b;->d:Lcom/google/api/client/a/i;

    invoke-interface {v2}, Lcom/google/api/client/a/i;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 421
    throw v0
.end method

.method public intercept(Lcom/google/api/client/http/q;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/auth/oauth2/b;->getExpiresInSeconds()Ljava/lang/Long;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/google/api/client/auth/oauth2/b;->a()Z

    .line 202
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 209
    :goto_0
    iget-object p1, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 207
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->c:Lcom/google/api/client/auth/oauth2/b$a;

    iget-object v1, p0, Lcom/google/api/client/auth/oauth2/b;->e:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/google/api/client/auth/oauth2/b$a;->a(Lcom/google/api/client/http/q;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 209
    iget-object v0, p0, Lcom/google/api/client/auth/oauth2/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 210
    throw p1
.end method
