.class public final Lts;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lls;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lht;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lls;

.field public d:Lls;

.field public e:Lls;

.field public f:Lls;

.field public g:Lls;

.field public h:Lls;

.field public i:Lls;

.field public j:Lls;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lts;->a:Landroid/content/Context;

    invoke-static {p2}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lls;

    iput-object p2, p0, Lts;->c:Lls;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lts;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Los;)J
    .locals 2

    iget-object v0, p0, Lts;->j:Lls;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lit;->f(Z)V

    iget-object v0, p1, Los;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Los;->a:Landroid/net/Uri;

    invoke-static {v1}, Lnu;->U(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p1, Los;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lts;->g()Lls;

    move-result-object v0

    goto :goto_2

    :cond_2
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {p0}, Lts;->d()Lls;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lts;->j:Lls;

    goto :goto_3

    :cond_3
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lts;->e()Lls;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v1, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lts;->i()Lls;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lts;->f()Lls;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lts;->h()Lls;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lts;->c:Lls;

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lts;->j:Lls;

    invoke-interface {v0, p1}, Lls;->a(Los;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lht;)V
    .locals 1

    iget-object v0, p0, Lts;->c:Lls;

    invoke-interface {v0, p1}, Lls;->b(Lht;)V

    iget-object v0, p0, Lts;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lts;->d:Lls;

    invoke-virtual {p0, v0, p1}, Lts;->j(Lls;Lht;)V

    iget-object v0, p0, Lts;->e:Lls;

    invoke-virtual {p0, v0, p1}, Lts;->j(Lls;Lht;)V

    iget-object v0, p0, Lts;->f:Lls;

    invoke-virtual {p0, v0, p1}, Lts;->j(Lls;Lht;)V

    iget-object v0, p0, Lts;->g:Lls;

    invoke-virtual {p0, v0, p1}, Lts;->j(Lls;Lht;)V

    iget-object v0, p0, Lts;->h:Lls;

    invoke-virtual {p0, v0, p1}, Lts;->j(Lls;Lht;)V

    iget-object v0, p0, Lts;->i:Lls;

    invoke-virtual {p0, v0, p1}, Lts;->j(Lls;Lht;)V

    return-void
.end method

.method public final c(Lls;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lts;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lts;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lht;

    invoke-interface {p1, v1}, Lls;->b(Lht;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lts;->j:Lls;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lls;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lts;->j:Lls;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lts;->j:Lls;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final d()Lls;
    .locals 2

    iget-object v0, p0, Lts;->e:Lls;

    if-nez v0, :cond_0

    new-instance v0, Lfs;

    iget-object v1, p0, Lts;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lts;->e:Lls;

    invoke-virtual {p0, v0}, Lts;->c(Lls;)V

    :cond_0
    iget-object v0, p0, Lts;->e:Lls;

    return-object v0
.end method

.method public final e()Lls;
    .locals 2

    iget-object v0, p0, Lts;->f:Lls;

    if-nez v0, :cond_0

    new-instance v0, Lis;

    iget-object v1, p0, Lts;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lis;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lts;->f:Lls;

    invoke-virtual {p0, v0}, Lts;->c(Lls;)V

    :cond_0
    iget-object v0, p0, Lts;->f:Lls;

    return-object v0
.end method

.method public final f()Lls;
    .locals 1

    iget-object v0, p0, Lts;->h:Lls;

    if-nez v0, :cond_0

    new-instance v0, Ljs;

    invoke-direct {v0}, Ljs;-><init>()V

    iput-object v0, p0, Lts;->h:Lls;

    invoke-virtual {p0, v0}, Lts;->c(Lls;)V

    :cond_0
    iget-object v0, p0, Lts;->h:Lls;

    return-object v0
.end method

.method public final g()Lls;
    .locals 1

    iget-object v0, p0, Lts;->d:Lls;

    if-nez v0, :cond_0

    new-instance v0, Lys;

    invoke-direct {v0}, Lys;-><init>()V

    iput-object v0, p0, Lts;->d:Lls;

    invoke-virtual {p0, v0}, Lts;->c(Lls;)V

    :cond_0
    iget-object v0, p0, Lts;->d:Lls;

    return-object v0
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

    iget-object v0, p0, Lts;->j:Lls;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lls;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lts;->j:Lls;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lls;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h()Lls;
    .locals 2

    iget-object v0, p0, Lts;->i:Lls;

    if-nez v0, :cond_0

    new-instance v0, Lft;

    iget-object v1, p0, Lts;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lft;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lts;->i:Lls;

    invoke-virtual {p0, v0}, Lts;->c(Lls;)V

    :cond_0
    iget-object v0, p0, Lts;->i:Lls;

    return-object v0
.end method

.method public final i()Lls;
    .locals 3

    iget-object v0, p0, Lts;->g:Lls;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "androidx.media2.exoplayer.external.ext.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lls;

    iput-object v0, p0, Lts;->g:Lls;

    invoke-virtual {p0, v0}, Lts;->c(Lls;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Lst;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lts;->g:Lls;

    if-nez v0, :cond_0

    iget-object v0, p0, Lts;->c:Lls;

    iput-object v0, p0, Lts;->g:Lls;

    :cond_0
    iget-object v0, p0, Lts;->g:Lls;

    return-object v0
.end method

.method public final j(Lls;Lht;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lls;->b(Lht;)V

    :cond_0
    return-void
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lts;->j:Lls;

    invoke-static {v0}, Lit;->e(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lls;

    invoke-interface {v0, p1, p2, p3}, Lls;->read([BII)I

    move-result p1

    return p1
.end method
