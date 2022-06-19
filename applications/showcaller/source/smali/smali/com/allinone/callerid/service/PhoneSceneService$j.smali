.class Lcom/allinone/callerid/service/PhoneSceneService$j;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/k/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->p(Landroid/content/Context;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$j;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$j;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/allinone/callerid/service/PhoneSceneService$j;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$j;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/allinone/callerid/service/PhoneSceneService$j;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, p1, v2}, Lcom/allinone/callerid/service/PhoneSceneService;->h(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;IZLjava/lang/String;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$j;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$j;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$j;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/allinone/callerid/service/PhoneSceneService;->b(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
