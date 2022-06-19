.class public Ln7/n;
.super Ln7/s;
.source "SourceFile"


# instance fields
.field public h:Ljavax/net/ssl/SSLContext;

.field public i:Ljavax/net/ssl/HostnameVerifier;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln7/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln7/a;)V
    .locals 2

    const-string v0, "https"

    const/16 v1, 0x1bb

    .line 1
    invoke-direct {p0, p1, v0, v1}, Ln7/s;-><init>(Ln7/a;Ljava/lang/String;I)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln7/n;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public o(Ln7/g$a;Landroid/net/Uri;IZLl7/b;)Ll7/b;
    .locals 8

    .line 1
    new-instance v7, Ln7/n$a;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ln7/n$a;-><init>(Ln7/n;Ll7/b;ZLn7/g$a;Landroid/net/Uri;I)V

    return-object v7
.end method

.method public p(Lk7/j;Ln7/g$a;Landroid/net/Uri;ILl7/b;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    .line 3
    iget-object v0, p0, Ln7/n;->h:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lk7/c;->t:Ljavax/net/ssl/SSLContext;

    :goto_0
    const/4 v1, 0x0

    .line 5
    iget-object v3, p0, Ln7/n;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln7/l;

    .line 6
    invoke-interface {v1, v0, p3, p4}, Ln7/l;->b(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_2
    move-object v4, v1

    .line 7
    iget-object v0, p0, Ln7/n;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln7/l;

    .line 8
    invoke-interface {v1, v4, p2, p3, p4}, Ln7/l;->a(Ljavax/net/ssl/SSLEngine;Ln7/g$a;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 9
    iget-object v6, p0, Ln7/n;->i:Ljavax/net/ssl/HostnameVerifier;

    const/4 v7, 0x1

    .line 10
    new-instance p2, Ln7/m;

    invoke-direct {p2, p0, p5}, Ln7/m;-><init>(Ln7/n;Ll7/b;)V

    .line 11
    new-instance p3, Lk7/c;

    move-object v0, p3

    move-object v1, p1

    move v3, p4

    invoke-direct/range {v0 .. v7}, Lk7/c;-><init>(Lk7/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V

    .line 12
    iput-object p2, p3, Lk7/c;->i:Lk7/c$g;

    .line 13
    new-instance p4, Lk7/d;

    invoke-direct {p4, p2}, Lk7/d;-><init>(Lk7/c$g;)V

    invoke-interface {p1, p4}, Lk7/o;->g(Ll7/a;)V

    .line 14
    :try_start_0
    iget-object p1, p3, Lk7/c;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 15
    iget-object p1, p3, Lk7/c;->d:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    invoke-virtual {p3, p1}, Lk7/c;->c(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p3, p1}, Lk7/c;->o(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method
