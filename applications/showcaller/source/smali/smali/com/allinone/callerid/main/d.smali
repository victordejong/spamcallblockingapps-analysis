.class public Lcom/allinone/callerid/main/d;
.super Lcom/bumptech/glide/i;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/i;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/p;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Class;)Lcom/allinone/callerid/main/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/allinone/callerid/main/c<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/allinone/callerid/main/c;

    iget-object v1, p0, Lcom/bumptech/glide/i;->g:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/i;->h:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/allinone/callerid/main/c;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/i;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public D()Lcom/allinone/callerid/main/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/allinone/callerid/main/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/i;->k()Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/main/c;

    return-object v0
.end method

.method public E()Lcom/allinone/callerid/main/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/allinone/callerid/main/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/i;->l()Lcom/bumptech/glide/h;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/main/c;

    return-object v0
.end method

.method public F(Landroid/net/Uri;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/i;->q(Landroid/net/Uri;)Lcom/bumptech/glide/h;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public G(Ljava/lang/Object;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/i;->r(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public H(Ljava/lang/String;)Lcom/allinone/callerid/main/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/allinone/callerid/main/c<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/i;->s(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/c;

    return-object p1
.end method

.method public declared-synchronized I(Lcom/bumptech/glide/request/e;)Lcom/allinone/callerid/main/d;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/bumptech/glide/i;->x(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/i;

    move-result-object p1

    check-cast p1, Lcom/allinone/callerid/main/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic j(Ljava/lang/Class;)Lcom/bumptech/glide/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/d;->C(Ljava/lang/Class;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k()Lcom/bumptech/glide/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/main/d;->D()Lcom/allinone/callerid/main/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Lcom/bumptech/glide/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/allinone/callerid/main/d;->E()Lcom/allinone/callerid/main/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q(Landroid/net/Uri;)Lcom/bumptech/glide/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/d;->F(Landroid/net/Uri;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s(Ljava/lang/String;)Lcom/bumptech/glide/h;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/d;->H(Ljava/lang/String;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic x(Lcom/bumptech/glide/request/e;)Lcom/bumptech/glide/i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/d;->I(Lcom/bumptech/glide/request/e;)Lcom/allinone/callerid/main/d;

    move-result-object p1

    return-object p1
.end method

.method protected y(Lcom/bumptech/glide/request/e;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/allinone/callerid/main/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/i;->y(Lcom/bumptech/glide/request/e;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/allinone/callerid/main/b;

    invoke-direct {v0}, Lcom/allinone/callerid/main/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/main/b;->r0(Lcom/bumptech/glide/request/a;)Lcom/allinone/callerid/main/b;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/i;->y(Lcom/bumptech/glide/request/e;)V

    :goto_0
    return-void
.end method
