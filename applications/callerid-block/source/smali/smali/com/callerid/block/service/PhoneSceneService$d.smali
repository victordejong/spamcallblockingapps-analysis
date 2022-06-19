.class Lcom/callerid/block/service/PhoneSceneService$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/f/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/service/PhoneSceneService;->m(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callerid/block/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/callerid/block/service/PhoneSceneService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$d;->b:Lcom/callerid/block/service/PhoneSceneService;

    iput-object p2, p0, Lcom/callerid/block/service/PhoneSceneService$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/callerid/block/service/PhoneSceneService$d;->b:Lcom/callerid/block/service/PhoneSceneService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/service/PhoneSceneService$d;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/callerid/block/service/PhoneSceneService;->h(Lcom/callerid/block/service/PhoneSceneService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
