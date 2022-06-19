.class Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m$a;
.super Ljava/lang/Object;
.source "MyBlockListActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m$a;->a:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m$a;->a:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;->t0(Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;)V

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "add_blacklist"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m$a;->a:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;->d:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m$a;->a:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;

    iget-boolean v0, v0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;->c:Z

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/allinone/callerid/bean/CollectInfo;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/CollectInfo;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m$a;->a:Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;

    iget-object v1, v1, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity$m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setNumber(Ljava/lang/String;)V

    const-string v1, "1"

    .line 7
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_blocked(Ljava/lang/String;)V

    const-string v1, "0"

    .line 8
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_commented(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_reported(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/CollectInfo;->setUser_upload_recording(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/allinone/callerid/i/a/i/c;->c(Landroid/content/Context;Lcom/allinone/callerid/bean/CollectInfo;)V

    :cond_0
    return-void
.end method
