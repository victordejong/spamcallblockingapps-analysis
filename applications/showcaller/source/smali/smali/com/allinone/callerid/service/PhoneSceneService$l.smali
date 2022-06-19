.class Lcom/allinone/callerid/service/PhoneSceneService$l;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->n(Landroid/content/Context;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$l;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$l;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/allinone/callerid/service/PhoneSceneService$l;->b:Ljava/lang/String;

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

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$l;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$l;->b:Ljava/lang/String;

    const-string v2, "1"

    invoke-static {p1, v0, v1, v2}, Lcom/allinone/callerid/service/PhoneSceneService;->d(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
