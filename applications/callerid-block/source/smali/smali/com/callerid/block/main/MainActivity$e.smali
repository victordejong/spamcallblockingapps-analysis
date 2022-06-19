.class Lcom/callerid/block/main/MainActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/MainActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->M0(Lcom/callerid/block/main/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->M0(Lcom/callerid/block/main/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "missedcall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->M0(Lcom/callerid/block/main/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "blockenable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->M0(Lcom/callerid/block/main/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "download_db"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "tony"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_2

    invoke-static {v4, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v3, "noti_offlinedb_download"

    invoke-virtual {v0, v3}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->M0(Lcom/callerid/block/main/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "update_db"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_4

    invoke-static {v4, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "noti_offlinedb_update"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->M0(Lcom/callerid/block/main/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "receiversms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v1, "search_sms_ok_notifi_ok"

    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$e;->b:Lcom/callerid/block/main/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callerid/block/main/MainActivity;->N0(Lcom/callerid/block/main/MainActivity;Landroid/content/Intent;)Landroid/content/Intent;

    :cond_7
    return-void
.end method
