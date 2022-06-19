.class Lcom/callerid/block/mvc/controller/CallLogActivity$2$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/d/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/CallLogActivity$2;->d(Lcom/rey/material/app/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/CallLogActivity$2;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/CallLogActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$2$a;->a:Lcom/callerid/block/mvc/controller/CallLogActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$2$a;->a:Lcom/callerid/block/mvc/controller/CallLogActivity$2;

    iget-object v0, v0, Lcom/callerid/block/mvc/controller/CallLogActivity$2;->n:Lcom/callerid/block/mvc/controller/CallLogActivity;

    invoke-virtual {v0}, Lcom/callerid/block/mvc/controller/CallLogActivity;->V()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.callerid.block.RELOAD_DATA_VEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/mvc/controller/CallLogActivity$2$a;->a:Lcom/callerid/block/mvc/controller/CallLogActivity$2;

    iget-object v1, v1, Lcom/callerid/block/mvc/controller/CallLogActivity$2;->n:Lcom/callerid/block/mvc/controller/CallLogActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
