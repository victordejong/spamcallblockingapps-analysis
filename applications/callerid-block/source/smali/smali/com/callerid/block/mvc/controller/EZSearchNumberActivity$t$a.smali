.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/e/l/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t;Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t$a;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t$a$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t$a$a;-><init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$t$a;)V

    const-string v2, "en"

    invoke-static {v0, p1, v2, v1}, Lcom/callerid/block/h/a/e/b;->a(Landroid/content/Context;Lorg/json/JSONArray;Ljava/lang/String;Lcom/callerid/block/h/a/e/a;)V

    :cond_0
    return-void
.end method
