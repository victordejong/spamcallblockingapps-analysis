.class public Lno0$i;
.super Lxo0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lno0;->T(Landroid/os/Bundle;)Lxo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lno0;


# direct methods
.method public constructor <init>(Lno0;Lpi0;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lno0$i;->b:Lno0;

    iput-object p3, p0, Lno0$i;->a:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Lxo0;-><init>(Lpi0;)V

    return-void
.end method


# virtual methods
.method public a(Lyl0;)V
    .locals 1

    new-instance v0, Lti0;

    invoke-direct {v0}, Lti0;-><init>()V

    invoke-virtual {p0, p1, v0}, Lno0$i;->b(Lyl0;Lri0;)V

    return-void
.end method

.method public b(Lyl0;Lri0;)V
    .locals 4

    sget-object v0, Ldj0;->a:Ldj0;

    invoke-static {}, Lno0;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v3, "Like Dialog failed with error : %s"

    invoke-static {v0, v1, v3, v2}, Lxm0;->h(Ldj0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lno0$i;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lyl0;->b()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "call_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lno0$i;->b:Lno0;

    const-string v1, "present_dialog"

    invoke-static {p1, v1, v0}, Lno0;->h(Lno0;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, p0, Lno0$i;->b:Lno0;

    invoke-static {p2}, Lzm0;->i(Lri0;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {p1, v0, p2}, Lno0;->i(Lno0;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Lyl0;Landroid/os/Bundle;)V
    .locals 9

    if-eqz p2, :cond_5

    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v1, p0, Lno0$i;->b:Lno0;

    invoke-static {v1}, Lno0;->C(Lno0;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lno0$i;->b:Lno0;

    invoke-static {v2}, Lno0;->D(Lno0;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "like_count_string"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    move-object v5, v2

    :goto_0
    iget-object v1, p0, Lno0$i;->b:Lno0;

    invoke-static {v1}, Lno0;->E(Lno0;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lno0$i;->b:Lno0;

    invoke-static {v2}, Lno0;->c(Lno0;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "social_sentence"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v7, v6

    goto :goto_1

    :cond_2
    move-object v6, v1

    move-object v7, v2

    :goto_1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "unlike_token"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lno0$i;->b:Lno0;

    invoke-static {p2}, Lno0;->d(Lno0;)Ljava/lang/String;

    move-result-object p2

    :goto_2
    move-object v8, p2

    iget-object p2, p0, Lno0$i;->a:Landroid/os/Bundle;

    if-nez p2, :cond_4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_4
    invoke-virtual {p1}, Lyl0;->b()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "call_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lno0$i;->b:Lno0;

    invoke-static {p1}, Lno0;->f(Lno0;)Lxj0;

    move-result-object p1

    const-string v0, "fb_like_control_dialog_did_succeed"

    invoke-virtual {p1, v0, p2}, Lxj0;->i(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, p0, Lno0$i;->b:Lno0;

    invoke-static/range {v2 .. v8}, Lno0;->g(Lno0;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method
