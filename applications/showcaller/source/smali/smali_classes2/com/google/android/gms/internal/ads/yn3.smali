.class public final Lcom/google/android/gms/internal/ads/yn3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/w7;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/ol;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/w7;

.field private e:Lcom/google/android/gms/internal/ads/w7;

.field private f:Lcom/google/android/gms/internal/ads/w7;

.field private g:Lcom/google/android/gms/internal/ads/w7;

.field private h:Lcom/google/android/gms/internal/ads/w7;

.field private i:Lcom/google/android/gms/internal/ads/w7;

.field private j:Lcom/google/android/gms/internal/ads/w7;

.field private k:Lcom/google/android/gms/internal/ads/w7;

.field private l:Lcom/google/android/gms/internal/ads/w7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/w7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yn3;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yn3;->d:Lcom/google/android/gms/internal/ads/w7;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yn3;->c:Ljava/util/List;

    return-void
.end method

.method private final p()Lcom/google/android/gms/internal/ads/w7;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->f:Lcom/google/android/gms/internal/ads/w7;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/jn3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yn3;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jn3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->f:Lcom/google/android/gms/internal/ads/w7;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/yn3;->q(Lcom/google/android/gms/internal/ads/w7;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->f:Lcom/google/android/gms/internal/ads/w7;

    return-object v0
.end method

.method private final q(Lcom/google/android/gms/internal/ads/w7;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yn3;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yn3;->c:Ljava/util/List;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/ol;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/w7;->f(Lcom/google/android/gms/internal/ads/ol;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final r(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/ol;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/w7;->f(Lcom/google/android/gms/internal/ads/ol;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/z5;->c([BII)I

    move-result p1

    return p1
.end method

.method public final d()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w7;->d()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final e(Lcom/google/android/gms/internal/ads/fb;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/y8;->d(Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/fb;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/fb;->a:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/wa;->G(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/fb;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yn3;->p()Lcom/google/android/gms/internal/ads/w7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    goto/16 :goto_4

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->e:Lcom/google/android/gms/internal/ads/w7;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/bo3;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/bo3;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->e:Lcom/google/android/gms/internal/ads/w7;

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/yn3;->q(Lcom/google/android/gms/internal/ads/w7;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->e:Lcom/google/android/gms/internal/ads/w7;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    goto/16 :goto_4

    :cond_3
    const-string v2, "asset"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/yn3;->p()Lcom/google/android/gms/internal/ads/w7;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    goto/16 :goto_4

    :cond_4
    const-string v2, "content"

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->g:Lcom/google/android/gms/internal/ads/w7;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/rn3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yn3;->b:Landroid/content/Context;

    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/rn3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->g:Lcom/google/android/gms/internal/ads/w7;

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/yn3;->q(Lcom/google/android/gms/internal/ads/w7;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->g:Lcom/google/android/gms/internal/ads/w7;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    goto/16 :goto_4

    :cond_6
    const-string v2, "rtmp"

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->h:Lcom/google/android/gms/internal/ads/w7;

    if-nez v0, :cond_7

    :try_start_0
    const-string v0, "androidx.media3.datasource.rtmp.RtmpDataSource"

    .line 16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/w7;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->h:Lcom/google/android/gms/internal/ads/w7;

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/yn3;->q(Lcom/google/android/gms/internal/ads/w7;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    .line 20
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->h:Lcom/google/android/gms/internal/ads/w7;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->d:Lcom/google/android/gms/internal/ads/w7;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->h:Lcom/google/android/gms/internal/ads/w7;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->h:Lcom/google/android/gms/internal/ads/w7;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    goto :goto_4

    :cond_8
    const-string v1, "udp"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->i:Lcom/google/android/gms/internal/ads/w7;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/ads/to3;

    const/16 v1, 0x7d0

    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/to3;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->i:Lcom/google/android/gms/internal/ads/w7;

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/yn3;->q(Lcom/google/android/gms/internal/ads/w7;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->i:Lcom/google/android/gms/internal/ads/w7;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    goto :goto_4

    :cond_a
    const-string v1, "data"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->j:Lcom/google/android/gms/internal/ads/w7;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/sn3;

    .line 27
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sn3;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->j:Lcom/google/android/gms/internal/ads/w7;

    .line 28
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/yn3;->q(Lcom/google/android/gms/internal/ads/w7;)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->j:Lcom/google/android/gms/internal/ads/w7;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    goto :goto_4

    :cond_c
    const-string v1, "rawresource"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2

    .line 30
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->d:Lcom/google/android/gms/internal/ads/w7;

    goto :goto_3

    .line 31
    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->k:Lcom/google/android/gms/internal/ads/w7;

    if-nez v0, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/ads/mo3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yn3;->b:Landroid/content/Context;

    .line 32
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/mo3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->k:Lcom/google/android/gms/internal/ads/w7;

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/yn3;->q(Lcom/google/android/gms/internal/ads/w7;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->k:Lcom/google/android/gms/internal/ads/w7;

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    .line 34
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    .line 35
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/w7;->e(Lcom/google/android/gms/internal/ads/fb;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Lcom/google/android/gms/internal/ads/ol;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->d:Lcom/google/android/gms/internal/ads/w7;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/w7;->f(Lcom/google/android/gms/internal/ads/ol;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->c:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->e:Lcom/google/android/gms/internal/ads/w7;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yn3;->r(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/ol;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->f:Lcom/google/android/gms/internal/ads/w7;

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yn3;->r(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/ol;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->g:Lcom/google/android/gms/internal/ads/w7;

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yn3;->r(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/ol;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->h:Lcom/google/android/gms/internal/ads/w7;

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yn3;->r(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/ol;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->i:Lcom/google/android/gms/internal/ads/w7;

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yn3;->r(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/ol;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->j:Lcom/google/android/gms/internal/ads/w7;

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yn3;->r(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/ol;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->k:Lcom/google/android/gms/internal/ads/w7;

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/yn3;->r(Lcom/google/android/gms/internal/ads/w7;Lcom/google/android/gms/internal/ads/ol;)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w7;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    .line 2
    throw v0

    :cond_0
    return-void
.end method

.method public final zzi()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yn3;->l:Lcom/google/android/gms/internal/ads/w7;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/w7;->zzi()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
