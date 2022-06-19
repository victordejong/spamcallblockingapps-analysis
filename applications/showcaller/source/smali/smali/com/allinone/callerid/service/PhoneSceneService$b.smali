.class Lcom/allinone/callerid/service/PhoneSceneService$b;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/i/j/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/allinone/callerid/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$b;->b:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/service/PhoneSceneService$b;->a:Landroid/content/Context;

    new-instance v1, Lcom/allinone/callerid/service/PhoneSceneService$b$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/service/PhoneSceneService$b$a;-><init>(Lcom/allinone/callerid/service/PhoneSceneService$b;)V

    invoke-static {v0, p1, v1}, Lcom/allinone/callerid/i/a/i/b;->a(Landroid/content/Context;Lorg/json/JSONArray;Lcom/allinone/callerid/i/a/i/a;)V

    return-void
.end method
