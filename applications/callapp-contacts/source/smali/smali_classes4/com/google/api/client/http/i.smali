.class public final Lcom/google/api/client/http/i;
.super Lcom/google/api/client/a/n;
.source "SourceFile"


# static fields
.field private static final e:Lcom/google/api/client/a/a/b;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field d:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/google/api/client/a/a/c;

    const-string v1, "=&-_.!~*\'()@:$,;/?:"

    invoke-direct {v0, v1}, Lcom/google/api/client/a/a/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/http/i;->e:Lcom/google/api/client/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/api/client/a/n;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/google/api/client/http/i;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 195
    invoke-direct {p0}, Lcom/google/api/client/a/n;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/google/api/client/http/i;->h:I

    .line 196
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/http/i;->f:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/google/api/client/http/i;->a:Ljava/lang/String;

    .line 198
    iput p3, p0, Lcom/google/api/client/http/i;->h:I

    .line 199
    invoke-static {p4, p8}, Lcom/google/api/client/http/i;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/http/i;->b:Ljava/util/List;

    .line 200
    iput-boolean p8, p0, Lcom/google/api/client/http/i;->d:Z

    const/4 p1, 0x0

    if-eqz p8, :cond_0

    .line 202
    iput-object p5, p0, Lcom/google/api/client/http/i;->c:Ljava/lang/String;

    if-eqz p6, :cond_4

    const/4 p1, 0x0

    .line 204
    invoke-static {p6, p0, p1}, Lcom/google/api/client/http/af;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    .line 208
    invoke-static {p5}, Lcom/google/api/client/a/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/google/api/client/http/i;->c:Ljava/lang/String;

    if-eqz p6, :cond_2

    .line 210
    invoke-static {p6, p0}, Lcom/google/api/client/http/af;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz p7, :cond_3

    .line 212
    invoke-static {p7}, Lcom/google/api/client/a/a/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    goto :goto_1

    :cond_3
    move-object p7, p1

    :cond_4
    :goto_1
    iput-object p7, p0, Lcom/google/api/client/http/i;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 125
    invoke-static {p1}, Lcom/google/api/client/http/i;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/api/client/http/i;-><init>(Ljava/net/URL;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/i;-><init>(Ljava/net/URI;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Z)V
    .locals 9

    .line 147
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 150
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v5

    .line 152
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v8, p2

    .line 146
    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/i;-><init>(Ljava/net/URL;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Z)V
    .locals 9

    .line 177
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 180
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    .line 183
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move v8, p2

    .line 176
    invoke-direct/range {v0 .. v8}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 576
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 579
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_4

    const/16 v3, 0x2f

    .line 583
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 587
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 589
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    .line 591
    :cond_3
    invoke-static {v4}, Lcom/google/api/client/a/a/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v3, 0x1

    move v3, v5

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/util/Set;Ljava/lang/StringBuilder;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    .line 615
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 616
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 620
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 621
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/api/client/a/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 622
    :goto_1
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 623
    check-cast v2, Ljava/util/Collection;

    .line 624
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 625
    invoke-static {v0, p1, v1, v3, p2}, Lcom/google/api/client/http/i;->a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    goto :goto_2

    .line 628
    :cond_2
    invoke-static {v0, p1, v1, v2, p2}, Lcom/google/api/client/http/i;->a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static a(ZLjava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/16 v0, 0x3f

    .line 638
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    .line 640
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 642
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    .line 644
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/api/client/a/a/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 645
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_2

    const/16 p3, 0x3d

    .line 646
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/net/URL;
    .locals 1

    .line 677
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/google/api/client/http/i;->f:Ljava/lang/String;

    .line 1125
    invoke-static {v1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 389
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    iget-object v1, p0, Lcom/google/api/client/http/i;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 392
    iget-boolean v2, p0, Lcom/google/api/client/http/i;->d:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/api/client/a/a/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/google/api/client/http/i;->a:Ljava/lang/String;

    .line 2125
    invoke-static {v1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 394
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    iget v1, p0, Lcom/google/api/client/http/i;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    iget-object v1, p0, Lcom/google/api/client/http/i;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/i;->a(Ljava/lang/StringBuilder;)V

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/client/http/i;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/api/client/http/i;->d:Z

    invoke-static {v1, v0, v2}, Lcom/google/api/client/http/i;->a(Ljava/util/Set;Ljava/lang/StringBuilder;Z)V

    .line 419
    iget-object v1, p0, Lcom/google/api/client/http/i;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/16 v2, 0x23

    .line 421
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/api/client/http/i;->d:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/google/api/client/http/i;->e:Lcom/google/api/client/a/a/b;

    invoke-virtual {v2, v1}, Lcom/google/api/client/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/api/client/http/i;
    .locals 3

    .line 240
    invoke-super {p0}, Lcom/google/api/client/a/n;->clone()Lcom/google/api/client/a/n;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/i;

    .line 241
    iget-object v1, p0, Lcom/google/api/client/http/i;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/api/client/http/i;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/api/client/http/i;->b:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 2447
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/http/i;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 462
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 464
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method final a(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 598
    iget-object v0, p0, Lcom/google/api/client/http/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 600
    iget-object v2, p0, Lcom/google/api/client/http/i;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_0

    const/16 v3, 0x2f

    .line 602
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    iget-boolean v3, p0, Lcom/google/api/client/http/i;->d:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/google/api/client/a/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/api/client/http/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/api/client/http/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Lcom/google/api/client/a/n;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/api/client/http/i;->a()Lcom/google/api/client/http/i;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/google/api/client/http/i;->a()Lcom/google/api/client/http/i;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 226
    :cond_0
    invoke-super {p0, p1}, Lcom/google/api/client/a/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/google/api/client/http/i;

    if-nez v0, :cond_1

    goto :goto_0

    .line 229
    :cond_1
    check-cast p1, Lcom/google/api/client/http/i;

    .line 230
    invoke-virtual {p0}, Lcom/google/api/client/http/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/google/api/client/http/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;
    .locals 0

    .line 3249
    invoke-super {p0, p1, p2}, Lcom/google/api/client/a/n;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/n;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/i;

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/google/api/client/http/i;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
