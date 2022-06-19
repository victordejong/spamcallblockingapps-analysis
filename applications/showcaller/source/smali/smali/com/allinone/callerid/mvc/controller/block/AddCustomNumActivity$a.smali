.class Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$a;
.super Ljava/lang/Object;
.source "AddCustomNumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    new-instance v1, Lcom/allinone/callerid/util/m;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/allinone/callerid/util/m;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->Y(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;Lcom/allinone/callerid/util/m;)Lcom/allinone/callerid/util/m;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity$a;->d:Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;->Z(Lcom/allinone/callerid/mvc/controller/block/AddCustomNumActivity;)V

    return-void
.end method
