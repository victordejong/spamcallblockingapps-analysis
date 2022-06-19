.class Lcom/allinone/callerid/service/PhoneSceneService$n$a;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService$n;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/service/PhoneSceneService$n;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$n$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->y2()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$n$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$n;

    iget-object v0, p1, Lcom/allinone/callerid/service/PhoneSceneService$n;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    iget-object v1, p1, Lcom/allinone/callerid/service/PhoneSceneService$n;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/allinone/callerid/service/PhoneSceneService$n;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/allinone/callerid/service/PhoneSceneService;->j(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$n$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$n;

    iget-object v0, v0, Lcom/allinone/callerid/service/PhoneSceneService$n;->a:Landroid/content/Context;

    const-class v1, Lcom/allinone/callerid/mvc/controller/recommend/RecommendActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$n$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$n;

    iget-object v0, v0, Lcom/allinone/callerid/service/PhoneSceneService$n;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
