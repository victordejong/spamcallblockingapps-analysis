.class Lcom/allinone/callerid/service/PhoneSceneService$f$a;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService$f;->a(Lcom/allinone/callerid/callscreen/bean/PersonaliseContact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/service/PhoneSceneService$f;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$f$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/allinone/callerid/callscreen/bean/HomeInfo;)V
    .locals 7

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdiy()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isUseVideoAudioRing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$f$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$f;

    iget-object p1, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/p0;->f(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Lcom/allinone/callerid/d/f/f;->p(Z)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/d/c/a;->y()Lcom/allinone/callerid/d/c/a;

    move-result-object v0

    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$f$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$f;

    iget-object v1, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->b:Ljava/lang/String;

    iget v4, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->c:I

    iget-object v5, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->d:Ljava/lang/String;

    iget v6, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->e:I

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/allinone/callerid/d/c/a;->N(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/callscreen/bean/HomeInfo;ILjava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$f$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$f;

    iget-object v2, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->b:Ljava/lang/String;

    const/4 v3, 0x1

    iget v4, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->c:I

    iget-object v5, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->d:Ljava/lang/String;

    iget v6, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->e:I

    invoke-virtual/range {v0 .. v6}, Lcom/allinone/callerid/h/c;->Q0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$f$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$f;

    iget-object p1, p1, Lcom/allinone/callerid/service/PhoneSceneService$f;->f:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
