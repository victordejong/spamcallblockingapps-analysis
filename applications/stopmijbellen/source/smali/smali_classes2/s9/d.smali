.class public final Ls9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls9/d$a;
    }
.end annotation


# instance fields
.field public final a:Lp9/a;

.field public final b:Lf/t;

.field public final c:Lp9/o;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp9/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/a;Lf/t;Lp9/e;Lp9/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Ls9/d;->d:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Ls9/d;->f:Ljava/util/List;

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Ls9/d;->g:Ljava/util/List;

    .line 5
    iput-object p1, p0, Ls9/d;->a:Lp9/a;

    .line 6
    iput-object p2, p0, Ls9/d;->b:Lf/t;

    .line 7
    iput-object p4, p0, Ls9/d;->c:Lp9/o;

    .line 8
    iget-object p2, p1, Lp9/a;->a:Lp9/s;

    .line 9
    iget-object p3, p1, Lp9/a;->h:Ljava/net/Proxy;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 10
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls9/d;->d:Ljava/util/List;

    goto :goto_1

    .line 11
    :cond_0
    iget-object p1, p1, Lp9/a;->g:Ljava/net/ProxySelector;

    .line 12
    invoke-virtual {p2}, Lp9/s;->p()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    invoke-static {p1}, Lq9/c;->n(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/net/Proxy;

    .line 15
    sget-object p2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object p2, p1, p4

    invoke-static {p1}, Lq9/c;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ls9/d;->d:Ljava/util/List;

    .line 16
    :goto_1
    iput p4, p0, Ls9/d;->e:I

    return-void
.end method


# virtual methods
.method public a(Lp9/e0;Ljava/io/IOException;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lp9/e0;->b:Ljava/net/Proxy;

    .line 2
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ls9/d;->a:Lp9/a;

    .line 3
    iget-object v1, v0, Lp9/a;->g:Ljava/net/ProxySelector;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v0, Lp9/a;->a:Lp9/s;

    .line 5
    invoke-virtual {v0}, Lp9/s;->p()Ljava/net/URI;

    move-result-object v0

    .line 6
    iget-object v2, p1, Lp9/e0;->b:Ljava/net/Proxy;

    .line 7
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v0, v2, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 9
    :cond_0
    iget-object p2, p0, Ls9/d;->b:Lf/t;

    .line 10
    monitor-enter p2

    .line 11
    :try_start_0
    iget-object v0, p2, Lf/t;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls9/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ls9/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget v0, p0, Ls9/d;->e:I

    iget-object v1, p0, Ls9/d;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
