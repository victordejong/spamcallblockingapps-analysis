.class Lcom/callerid/block/main/MainActivity$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/main/MainActivity;
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

    iput-object p1, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, ""

    new-instance v1, Lcom/callerid/block/b/i;

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->v()Landroidx/fragment/app/j;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/callerid/block/b/i;-><init>(Landroidx/fragment/app/j;)V

    new-instance v2, Lcom/callerid/block/fragment/EZCallLogFragment;

    invoke-direct {v2}, Lcom/callerid/block/fragment/EZCallLogFragment;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/callerid/block/b/i;->x(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    new-instance v2, Lcom/callerid/block/fragment/a;

    invoke-direct {v2}, Lcom/callerid/block/fragment/a;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/callerid/block/b/i;->x(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    new-instance v2, Lcom/callerid/block/fragment/EZInterceptFragment;

    invoke-direct {v2}, Lcom/callerid/block/fragment/EZInterceptFragment;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/callerid/block/b/i;->x(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    new-instance v2, Lcom/callerid/block/fragment/b;

    invoke-direct {v2}, Lcom/callerid/block/fragment/b;-><init>()V

    iget-object v3, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/callerid/block/b/i;->x(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v2}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v1}, Lcom/callerid/block/main/MainActivity;->D0(Lcom/callerid/block/main/MainActivity;)Lcom/rey/material/widget/LTabIndicator;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v2}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rey/material/widget/LTabIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v1}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    :try_start_0
    iget-object v1, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    const-string v3, "clipboard"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_0

    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    new-instance v0, Lcom/callerid/block/main/MainActivity$n$a;

    invoke-direct {v0, p0, v1}, Lcom/callerid/block/main/MainActivity$n$a;-><init>(Lcom/callerid/block/main/MainActivity$n;Landroid/content/ClipboardManager;)V

    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "blockenable"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "download_db"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "tony"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "download_db111"

    invoke-static {v4, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v5, "noti_offlinedb_download"

    invoke-virtual {v0, v5}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "update_db"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_4

    const-string v0, "update_db111"

    invoke-static {v4, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v4, "noti_offlinedb_update"

    invoke-virtual {v0, v4}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "receiversms"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    const-string v2, "search_sms_ok_notifi_ok"

    invoke-virtual {v0, v2}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "fcm"

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "offline_notifi"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "open_offline"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_7

    invoke-static {v2, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v0}, Lcom/callerid/block/main/MainActivity;->C0(Lcom/callerid/block/main/MainActivity;)Lcom/callerid/block/customview/CustomViewPager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_8
    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "open_subscription"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_9

    invoke-static {v2, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    const-class v2, Lcom/callerid/block/start/GgGuideActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-static {v1}, Lcom/callerid/block/main/MainActivity;->F0(Lcom/callerid/block/main/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "isbug"

    const-string v2, "maigou"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    iget-object v1, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/callerid/block/main/MainActivity$n;->b:Lcom/callerid/block/main/MainActivity;

    const/high16 v1, 0x7f010000

    const v2, 0x7f010001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_b
    return-void
.end method
