.class Lcom/allinone/callerid/service/PhoneSceneService$p$a;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/k/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService$p;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/service/PhoneSceneService;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/allinone/callerid/service/PhoneSceneService$p;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService$p;Lcom/allinone/callerid/service/PhoneSceneService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$p$a;->c:Lcom/allinone/callerid/service/PhoneSceneService$p;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$p$a;->a:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p3, p0, Lcom/allinone/callerid/service/PhoneSceneService$p$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$p$a;->a:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$p$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->b(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
