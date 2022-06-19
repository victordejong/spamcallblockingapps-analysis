.class Lcom/allinone/callerid/service/PhoneSceneService$a;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/l/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->m(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/allinone/callerid/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->c()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/service/PhoneSceneService$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/service/PhoneSceneService$a$a;-><init>(Lcom/allinone/callerid/service/PhoneSceneService$a;)V

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/i/a/k/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/d;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/p0;->f(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->m(Landroid/content/Context;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/d;->h(Ljava/lang/String;J)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/service/PhoneSceneService$a$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/service/PhoneSceneService$a$b;-><init>(Lcom/allinone/callerid/service/PhoneSceneService$a;)V

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/i/a/k/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/b;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    .line 9
    :cond_2
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "callstatus"

    const-string v0, "NotDisturb"

    .line 10
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_3
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object p1

    iget-object p1, p1, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/allinone/callerid/service/PhoneSceneService$a$c;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/service/PhoneSceneService$a$c;-><init>(Lcom/allinone/callerid/service/PhoneSceneService$a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
