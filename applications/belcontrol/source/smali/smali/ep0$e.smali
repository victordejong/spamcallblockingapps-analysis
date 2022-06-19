.class public Lep0$e;
.super Lfm0$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lep0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfm0<",
        "Lcom/facebook/share/model/ShareContent;",
        "Ljo0;",
        ">.a;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lep0;


# direct methods
.method public constructor <init>(Lep0;)V
    .locals 0

    iput-object p1, p0, Lep0$e;->a:Lep0;

    invoke-direct {p0, p1}, Lfm0$a;-><init>(Lfm0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lep0;Lep0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lep0$e;-><init>(Lep0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lep0$e;->d(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lyl0;
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lep0$e;->e(Lcom/facebook/share/model/ShareContent;)Lyl0;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lep0$d;->b:Lep0$d;

    return-object v0
.end method

.method public d(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-nez v1, :cond_4

    instance-of v1, p1, Lcom/facebook/share/model/ShareStoryContent;

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->f()Lcom/facebook/share/model/ShareHashtag;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-object p2, Lzo0;->g:Lzo0;

    invoke-static {p2}, Lem0;->a(Ldm0;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    instance-of v2, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {v2}, Lcom/facebook/share/model/ShareLinkContent;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfn0;->Q(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lzo0;->h:Lzo0;

    invoke-static {v2}, Lem0;->a(Ldm0;)Z

    move-result v2

    and-int/2addr p2, v2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lep0;->n(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public e(Lcom/facebook/share/model/ShareContent;)Lyl0;
    .locals 3

    iget-object v0, p0, Lep0$e;->a:Lep0;

    invoke-static {v0}, Lep0;->o(Lep0;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lep0$d;->b:Lep0$d;

    invoke-static {v0, v1, p1, v2}, Lep0;->p(Lep0;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lep0$d;)V

    invoke-static {p1}, Lyo0;->w(Lcom/facebook/share/model/ShareContent;)V

    iget-object v0, p0, Lep0$e;->a:Lep0;

    invoke-virtual {v0}, Lep0;->e()Lyl0;

    move-result-object v0

    iget-object v1, p0, Lep0$e;->a:Lep0;

    invoke-virtual {v1}, Lep0;->w()Z

    move-result v1

    new-instance v2, Lep0$e$a;

    invoke-direct {v2, p0, v0, p1, v1}, Lep0$e$a;-><init>(Lep0$e;Lyl0;Lcom/facebook/share/model/ShareContent;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lep0;->q(Ljava/lang/Class;)Ldm0;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lem0;->i(Lyl0;Lem0$a;Ldm0;)V

    return-object v0
.end method
