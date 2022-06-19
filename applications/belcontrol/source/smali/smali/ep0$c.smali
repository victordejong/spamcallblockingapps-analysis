.class public Lep0$c;
.super Lfm0$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lep0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
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

    iput-object p1, p0, Lep0$c;->a:Lep0;

    invoke-direct {p0, p1}, Lfm0$a;-><init>(Lfm0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lep0;Lep0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lep0$c;-><init>(Lep0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lep0$c;->d(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lyl0;
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lep0$c;->e(Lcom/facebook/share/model/ShareContent;)Lyl0;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lep0$d;->d:Lep0$d;

    return-object v0
.end method

.method public d(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 0

    instance-of p2, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-nez p2, :cond_1

    instance-of p1, p1, Lcom/facebook/share/internal/ShareFeedContent;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e(Lcom/facebook/share/model/ShareContent;)Lyl0;
    .locals 3

    iget-object v0, p0, Lep0$c;->a:Lep0;

    invoke-static {v0}, Lep0;->m(Lep0;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lep0$d;->d:Lep0$d;

    invoke-static {v0, v1, p1, v2}, Lep0;->p(Lep0;Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lep0$d;)V

    iget-object v0, p0, Lep0$c;->a:Lep0;

    invoke-virtual {v0}, Lep0;->e()Lyl0;

    move-result-object v0

    instance-of v1, p1, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {p1}, Lyo0;->y(Lcom/facebook/share/model/ShareContent;)V

    invoke-static {p1}, Lcp0;->f(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    invoke-static {p1}, Lcp0;->e(Lcom/facebook/share/internal/ShareFeedContent;)Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const-string v1, "feed"

    invoke-static {v0, v1, p1}, Lem0;->k(Lyl0;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
