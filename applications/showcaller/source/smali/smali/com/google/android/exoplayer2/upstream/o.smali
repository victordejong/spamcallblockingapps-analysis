.class public final Lcom/google/android/exoplayer2/upstream/o;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/j;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/upstream/x;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/upstream/j;

.field private e:Lcom/google/android/exoplayer2/upstream/j;

.field private f:Lcom/google/android/exoplayer2/upstream/j;

.field private g:Lcom/google/android/exoplayer2/upstream/j;

.field private h:Lcom/google/android/exoplayer2/upstream/j;

.field private i:Lcom/google/android/exoplayer2/upstream/j;

.field private j:Lcom/google/android/exoplayer2/upstream/j;

.field private k:Lcom/google/android/exoplayer2/upstream/j;

.field private l:Lcom/google/android/exoplayer2/upstream/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o;->b:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/j;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o;->d:Lcom/google/android/exoplayer2/upstream/j;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/o;->c:Ljava/util/List;

    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/upstream/j;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/x;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/upstream/j;->a(Lcom/google/android/exoplayer2/upstream/x;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()Lcom/google/android/exoplayer2/upstream/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->f:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->f:Lcom/google/android/exoplayer2/upstream/j;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/o;->d(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->f:Lcom/google/android/exoplayer2/upstream/j;

    return-object v0
.end method

.method private f()Lcom/google/android/exoplayer2/upstream/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->g:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->g:Lcom/google/android/exoplayer2/upstream/j;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/o;->d(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->g:Lcom/google/android/exoplayer2/upstream/j;

    return-object v0
.end method

.method private g()Lcom/google/android/exoplayer2/upstream/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->j:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/h;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->j:Lcom/google/android/exoplayer2/upstream/j;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/o;->d(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->j:Lcom/google/android/exoplayer2/upstream/j;

    return-object v0
.end method

.method private h()Lcom/google/android/exoplayer2/upstream/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->e:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->e:Lcom/google/android/exoplayer2/upstream/j;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/o;->d(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->e:Lcom/google/android/exoplayer2/upstream/j;

    return-object v0
.end method

.method private i()Lcom/google/android/exoplayer2/upstream/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->k:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->k:Lcom/google/android/exoplayer2/upstream/j;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/o;->d(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->k:Lcom/google/android/exoplayer2/upstream/j;

    return-object v0
.end method

.method private j()Lcom/google/android/exoplayer2/upstream/j;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->h:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->h:Lcom/google/android/exoplayer2/upstream/j;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/o;->d(Lcom/google/android/exoplayer2/upstream/j;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->h:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->d:Lcom/google/android/exoplayer2/upstream/j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->h:Lcom/google/android/exoplayer2/upstream/j;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->h:Lcom/google/android/exoplayer2/upstream/j;

    return-object v0
.end method

.method private k()Lcom/google/android/exoplayer2/upstream/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->i:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->i:Lcom/google/android/exoplayer2/upstream/j;

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/o;->d(Lcom/google/android/exoplayer2/upstream/j;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->i:Lcom/google/android/exoplayer2/upstream/j;

    return-object v0
.end method

.method private l(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/x;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/upstream/j;->a(Lcom/google/android/exoplayer2/upstream/x;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/x;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->d:Lcom/google/android/exoplayer2/upstream/j;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/j;->a(Lcom/google/android/exoplayer2/upstream/x;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->e:Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/o;->l(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/x;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->f:Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/o;->l(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/x;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->g:Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/o;->l(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/x;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->h:Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/o;->l(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/x;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->i:Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/o;->l(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/x;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->j:Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/o;->l(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/x;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->k:Lcom/google/android/exoplayer2/upstream/j;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/upstream/o;->l(Lcom/google/android/exoplayer2/upstream/j;Lcom/google/android/exoplayer2/upstream/x;)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/l;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->f(Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/l;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/l;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/h0;->W(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/l;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/o;->e()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/o;->h()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    goto :goto_1

    :cond_2
    const-string v1, "asset"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/o;->e()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    goto :goto_1

    :cond_3
    const-string v1, "content"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/o;->f()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    goto :goto_1

    :cond_4
    const-string v1, "rtmp"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/o;->j()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    goto :goto_1

    :cond_5
    const-string v1, "udp"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/o;->k()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    goto :goto_1

    :cond_6
    const-string v1, "data"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/o;->g()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    goto :goto_1

    :cond_7
    const-string v1, "rawresource"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/o;->i()Lcom/google/android/exoplayer2/upstream/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    goto :goto_1

    .line 20
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->d:Lcom/google/android/exoplayer2/upstream/j;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/j;->b(Lcom/google/android/exoplayer2/upstream/l;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/j;->c()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/j;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    .line 4
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/j;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public read([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/o;->l:Lcom/google/android/exoplayer2/upstream/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/e;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/j;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/j;->read([BII)I

    move-result p1

    return p1
.end method
