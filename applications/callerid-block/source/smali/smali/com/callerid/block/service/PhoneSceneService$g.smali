.class Lcom/callerid/block/service/PhoneSceneService$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/e/j/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/PhoneSceneService;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/service/PhoneSceneService$g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/service/PhoneSceneService$g;->a:Landroid/content/Context;

    new-instance v1, Lcom/callerid/block/service/PhoneSceneService$g$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/service/PhoneSceneService$g$a;-><init>(Lcom/callerid/block/service/PhoneSceneService$g;)V

    const-string v2, "en_online"

    invoke-static {v0, p1, v2, v1}, Lcom/callerid/block/h/a/e/b;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;Lcom/callerid/block/h/a/e/a;)V

    return-void
.end method
