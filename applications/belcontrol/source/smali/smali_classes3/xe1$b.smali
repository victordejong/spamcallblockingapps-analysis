.class public Lxe1$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxe1;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lxe1;


# direct methods
.method public constructor <init>(Lxe1;)V
    .locals 0

    iput-object p1, p0, Lxe1$b;->a:Lxe1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "MoatJavaScriptBridge"

    const/4 v1, -0x1

    const-string v2, "null"

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "false"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lxe1$b;->a:Lxe1;

    invoke-static {p1, v1}, Lxe1;->f(Lxe1;I)I

    iget-object p1, p0, Lxe1$b;->a:Lxe1;

    invoke-static {p1}, Lxe1;->c(Lxe1;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lxe1$b;->a:Lxe1;

    invoke-static {v1}, Lxe1;->d(Lxe1;)Lmf1;

    move-result-object v1

    invoke-interface {v1}, Lmf1;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unusual value from Javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_0
    iget-object v3, p0, Lxe1$b;->a:Lxe1;

    invoke-static {v3}, Lxe1;->d(Lxe1;)Lmf1;

    move-result-object v3

    invoke-interface {v3}, Lmf1;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received value is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(String)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lxe1$b;->a:Lxe1;

    invoke-static {p1}, Lxe1;->e(Lxe1;)I

    move-result p1

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Lxe1$b;->a:Lxe1;

    invoke-static {p1}, Lxe1;->e(Lxe1;)I

    move-result p1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_6

    :cond_5
    iget-object p1, p0, Lxe1$b;->a:Lxe1;

    invoke-static {p1}, Lxe1;->h(Lxe1;)V

    :cond_6
    iget-object p1, p0, Lxe1$b;->a:Lxe1;

    invoke-static {p1}, Lxe1;->g(Lxe1;)I

    :cond_7
    :goto_2
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lxe1$b;->a(Ljava/lang/String;)V

    return-void
.end method
