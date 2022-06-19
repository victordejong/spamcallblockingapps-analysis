.class Lcom/allinone/callerid/service/PhoneSceneService$a$a$a;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/k/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService$a$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/service/PhoneSceneService$a$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a$a;

    iget-object p1, p1, Lcom/allinone/callerid/service/PhoneSceneService$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object p1, p1, Lcom/allinone/callerid/service/PhoneSceneService$a;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$a$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a$a;

    iget-object v1, v1, Lcom/allinone/callerid/service/PhoneSceneService$a$a;->a:Lcom/allinone/callerid/service/PhoneSceneService$a;

    iget-object v1, v1, Lcom/allinone/callerid/service/PhoneSceneService$a;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->b(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
