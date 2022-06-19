.class Lcom/allinone/callerid/service/PhoneSceneService$f;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->u(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/allinone/callerid/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->f:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->b:Ljava/lang/String;

    iput p4, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->c:I

    iput-object p5, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->d:Ljava/lang/String;

    iput p6, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 1
    new-instance v3, Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    invoke-direct {v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPath(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setPhone(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isIsdiy()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setIsdiy(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;->isUseVideoAudioRing()Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->setUseVideoAudioRing(Z)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdiy()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUseVideoAudioRing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/p0;->f(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Lcom/allinone/callerid/d/f/f;->p(Z)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/d/c/a;->y()Lcom/allinone/callerid/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->b:Ljava/lang/String;

    iget v4, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->c:I

    iget-object v5, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->d:Ljava/lang/String;

    iget v6, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->e:I

    invoke-virtual/range {v0 .. v6}, Lcom/allinone/callerid/d/c/a;->N(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/callscreen/bean/HomeInfo;ILjava/lang/String;I)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$f;->f:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Lcom/allinone/callerid/service/PhoneSceneService$f$a;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/service/PhoneSceneService$f$a;-><init>(Lcom/allinone/callerid/service/PhoneSceneService$f;)V

    invoke-static {p1}, Lcom/allinone/callerid/d/e/e/d;->b(Lcom/allinone/callerid/d/e/e/c;)V

    :goto_0
    return-void
.end method
