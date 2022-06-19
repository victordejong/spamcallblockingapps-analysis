.class Lcom/allinone/callerid/service/PhoneSceneService$n;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->r(Landroid/content/Context;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$n;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$n;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/allinone/callerid/service/PhoneSceneService$n;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$n;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$n;->b:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/service/PhoneSceneService$n$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/service/PhoneSceneService$n$a;-><init>(Lcom/allinone/callerid/service/PhoneSceneService$n;)V

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/i/a/k/f;->a(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/i/a/k/d;)V

    :cond_0
    return-void
.end method
