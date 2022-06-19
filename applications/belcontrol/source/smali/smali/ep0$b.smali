.class public Lep0$b;
.super Lfm0$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lep0;
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
.field public final synthetic a:Lep0;


# direct methods
.method public constructor <init>(Lep0;)V
    .locals 0

    iput-object p1, p0, Lep0$b;->a:Lep0;

    invoke-direct {p0, p1}, Lfm0$a;-><init>(Lfm0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lep0;Lep0$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lep0$b;-><init>(Lep0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lep0$b;->d(Lcom/facebook/share/model/ShareContent;Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lyl0;
    .locals 0

    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lep0$b;->e(Lcom/facebook/share/model/ShareContent;)Lyl0;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lep0$d;->b:Lep0$d;

    return-object v0
.end method

.method public d(Lcom/facebook/share/model/ShareContent;Z)Z
    .locals 0

    instance-of p2, p1, Lcom/facebook/share/model/ShareCameraEffectContent;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lep0;->n(Ljava/lang/Class;)Z

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

    invoke-static {p1}, Lyo0;->w(Lcom/facebook/share/model/ShareContent;)V

    iget-object v0, p0, Lep0$b;->a:Lep0;

    invoke-virtual {v0}, Lep0;->e()Lyl0;

    move-result-object v0

    iget-object v1, p0, Lep0$b;->a:Lep0;

    invoke-virtual {v1}, Lep0;->w()Z

    move-result v1

    new-instance v2, Lep0$b$a;

    invoke-direct {v2, p0, v0, p1, v1}, Lep0$b$a;-><init>(Lep0$b;Lyl0;Lcom/facebook/share/model/ShareContent;Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lep0;->q(Ljava/lang/Class;)Ldm0;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lem0;->i(Lyl0;Lem0$a;Ldm0;)V

    return-object v0
.end method
