.class public Lcom/callerid/block/util/p;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/Object;ILandroid/widget/ImageView;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bumptech/glide/b;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/g;->B0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/j;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/b;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/g;->B0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/b;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/g;->B0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/b;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->q(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-static {p0}, Lcom/bumptech/glide/b;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/h;->s(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/g;->v0(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    :goto_0
    invoke-virtual {p0, p4}, Lcom/bumptech/glide/g;->B0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/j;

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/b;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->q(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/bumptech/glide/b;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->q(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-static {p0}, Lcom/bumptech/glide/b;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/h;->s(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/g;->v0(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    :goto_1
    invoke-virtual {p0, p4}, Lcom/bumptech/glide/g;->B0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/j;

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/bumptech/glide/b;->t(Landroid/app/Activity;)Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->q(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/a;->d()Lcom/bumptech/glide/request/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
