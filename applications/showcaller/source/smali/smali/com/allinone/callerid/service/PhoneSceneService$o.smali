.class Lcom/allinone/callerid/service/PhoneSceneService$o;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/k/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->z(Landroid/content/Context;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/allinone/callerid/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->d:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->a:Landroid/content/Context;

    iput p3, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->b:I

    iput-object p4, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 14

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->u0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->a:Landroid/content/Context;

    iget v1, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->b:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->d:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {p1}, Lcom/allinone/callerid/service/PhoneSceneService;->i(Lcom/allinone/callerid/service/PhoneSceneService;)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/allinone/callerid/util/z0;->d(Landroid/content/Context;IILjava/lang/String;ZII)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v7, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->a:Landroid/content/Context;

    iget v8, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->b:I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->c:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$o;->d:Lcom/allinone/callerid/service/PhoneSceneService;

    invoke-static {p1}, Lcom/allinone/callerid/service/PhoneSceneService;->i(Lcom/allinone/callerid/service/PhoneSceneService;)I

    move-result v13

    invoke-static/range {v7 .. v13}, Lcom/allinone/callerid/util/z0;->d(Landroid/content/Context;IILjava/lang/String;ZII)V

    :cond_1
    :goto_0
    return-void
.end method
