.class public Lcom/allinone/callerid/util/t;
.super Ljava/lang/Object;
.source "GlideUtil.java"


# direct methods
.method public static a(Landroid/app/Activity;Ljava/lang/Object;ILandroid/widget/ImageView;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/allinone/callerid/main/a;->a(Landroid/app/Activity;)Lcom/allinone/callerid/main/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/d;->G(Ljava/lang/Object;)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/allinone/callerid/main/a;->a(Landroid/app/Activity;)Lcom/allinone/callerid/main/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/d;->G(Ljava/lang/Object;)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/allinone/callerid/main/a;->b(Landroid/content/Context;)Lcom/allinone/callerid/main/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/d;->G(Ljava/lang/Object;)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    if-eqz p0, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/allinone/callerid/main/a;->a(Landroid/app/Activity;)Lcom/allinone/callerid/main/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/main/d;->F(Landroid/net/Uri;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    invoke-static {p0}, Lcom/allinone/callerid/main/a;->a(Landroid/app/Activity;)Lcom/allinone/callerid/main/d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/allinone/callerid/main/d;->H(Ljava/lang/String;)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/allinone/callerid/main/c;->Q0(Lcom/bumptech/glide/h;)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/allinone/callerid/main/a;->a(Landroid/app/Activity;)Lcom/allinone/callerid/main/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/d;->F(Landroid/net/Uri;)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-static {p0}, Lcom/allinone/callerid/main/a;->a(Landroid/app/Activity;)Lcom/allinone/callerid/main/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/allinone/callerid/main/d;->F(Landroid/net/Uri;)Lcom/allinone/callerid/main/c;

    move-result-object p1

    invoke-static {p0}, Lcom/allinone/callerid/main/a;->a(Landroid/app/Activity;)Lcom/allinone/callerid/main/d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/allinone/callerid/main/d;->H(Ljava/lang/String;)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/allinone/callerid/main/c;->Q0(Lcom/bumptech/glide/h;)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {p0}, Lcom/allinone/callerid/main/a;->a(Landroid/app/Activity;)Lcom/allinone/callerid/main/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/allinone/callerid/main/d;->F(Landroid/net/Uri;)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/allinone/callerid/main/c;->Z0(I)Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/allinone/callerid/main/c;->K0()Lcom/allinone/callerid/main/c;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bumptech/glide/h;->A0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/h/i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
