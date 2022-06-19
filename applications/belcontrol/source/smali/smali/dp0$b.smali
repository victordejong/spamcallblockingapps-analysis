.class public Ldp0$b;
.super Lfm0$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
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
.field public final synthetic a:Ldp0;


# direct methods
.method public constructor <init>(Ldp0;)V
    .locals 0

    iput-object p1, p0, Ldp0$b;->a:Ldp0;

    invoke-direct {p0, p1}, Lfm0$a;-><init>(Lfm0;)V

    return-void
.end method

.method public synthetic constructor <init>(Ldp0;Ldp0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ldp0$b;-><init>(Ldp0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Ldp0$b;->d(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lyl0;
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Ldp0$b;->e(Lcom/facebook/share/model/ShareContent;)Lyl0;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ldp0;->o(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Lcom/facebook/share/model/ShareContent;)Lyl0;
    .locals 3

    invoke-static {p1}, Lyo0;->v(Lcom/facebook/share/model/ShareContent;)V

    iget-object v0, p0, Ldp0$b;->a:Ldp0;

    invoke-virtual {v0}, Ldp0;->e()Lyl0;

    move-result-object v0

    iget-object v1, p0, Ldp0$b;->a:Ldp0;

    invoke-virtual {v1}, Ldp0;->q()Z

    move-result v1

    iget-object v2, p0, Ldp0$b;->a:Ldp0;

    invoke-static {v2}, Ldp0;->l(Ldp0;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, v0}, Ldp0;->m(Landroid/content/Context;Lcom/facebook/share/model/ShareContent;Lyl0;)V

    new-instance v2, Ldp0$b$a;

    invoke-direct {v2, p0, v0, p1, v1}, Ldp0$b$a;-><init>(Ldp0$b;Lyl0;Lcom/facebook/share/model/ShareContent;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ldp0;->n(Ljava/lang/Class;)Ldm0;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lem0;->i(Lyl0;Lem0$a;Ldm0;)V

    return-object v0
.end method
