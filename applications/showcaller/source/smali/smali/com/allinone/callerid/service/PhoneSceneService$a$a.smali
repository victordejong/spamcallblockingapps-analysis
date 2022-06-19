.class Lcom/allinone/callerid/service/PhoneSceneService$a$a;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService$a;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/service/PhoneSceneService$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    .line 1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object p1, p1, Lcom/allinone/callerid/service/PhoneSceneService$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/p0;->f(Landroid/content/Context;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object p1, p1, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->m(Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object p1, p1, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/d;->h(Ljava/lang/String;J)V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "block_list"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object p1, p1, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v0, v0, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/service/PhoneSceneService$a$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/service/PhoneSceneService$a$a$a;-><init>(Lcom/allinone/callerid/service/PhoneSceneService$a$a;)V

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/i/a/k/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/b;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object p1, p1, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    :goto_1
    return-void
.end method
