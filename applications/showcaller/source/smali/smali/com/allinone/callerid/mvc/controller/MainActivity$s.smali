.class Lcom/allinone/callerid/mvc/controller/MainActivity$s;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/MainActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/MainActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/MainActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$s;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$s;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->O0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$s;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->O0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "missedcall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$s;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->V0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/main/CustomViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$s;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->V0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Lcom/allinone/callerid/main/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$s;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/MainActivity;->O0(Lcom/allinone/callerid/mvc/controller/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "blockedcall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/MainActivity$s;->d:Lcom/allinone/callerid/mvc/controller/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/allinone/callerid/mvc/controller/MainActivity;->P0(Lcom/allinone/callerid/mvc/controller/MainActivity;Landroid/content/Intent;)Landroid/content/Intent;

    :cond_1
    return-void
.end method
