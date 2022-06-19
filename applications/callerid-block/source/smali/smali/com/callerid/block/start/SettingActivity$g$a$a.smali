.class Lcom/callerid/block/start/SettingActivity$g$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SettingActivity$g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/SettingActivity$g$a;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/SettingActivity$g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity$g$a$a;->b:Lcom/callerid/block/start/SettingActivity$g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.callerid.block.RELOAD_DATA_VEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/start/SettingActivity$g$a$a;->b:Lcom/callerid/block/start/SettingActivity$g$a;

    iget-object v1, v1, Lcom/callerid/block/start/SettingActivity$g$a;->b:Lcom/callerid/block/start/SettingActivity$g;

    iget-object v1, v1, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity$g$a$a;->b:Lcom/callerid/block/start/SettingActivity$g$a;

    iget-object v0, v0, Lcom/callerid/block/start/SettingActivity$g$a;->b:Lcom/callerid/block/start/SettingActivity$g;

    iget-object v0, v0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getCountry_code()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity$g$a$a;->b:Lcom/callerid/block/start/SettingActivity$g$a;

    iget-object v0, v0, Lcom/callerid/block/start/SettingActivity$g$a;->b:Lcom/callerid/block/start/SettingActivity$g;

    iget-object v0, v0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/callerid/block/util/j;->d(Landroid/content/Context;)Lcom/callerid/block/bean/EZCountryCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/bean/EZCountryCode;->getIso_code()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/callerid/block/start/SettingActivity$g$a$a;->b:Lcom/callerid/block/start/SettingActivity$g$a;

    iget-object v1, v1, Lcom/callerid/block/start/SettingActivity$g$a;->b:Lcom/callerid/block/start/SettingActivity$g;

    iget-object v1, v1, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callerid/block/start/SettingActivity$g$a$a;->b:Lcom/callerid/block/start/SettingActivity$g$a;

    iget-object v2, v2, Lcom/callerid/block/start/SettingActivity$g$a;->b:Lcom/callerid/block/start/SettingActivity$g;

    iget-object v2, v2, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/t0;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/callerid/block/start/SettingActivity$g$a$a;->b:Lcom/callerid/block/start/SettingActivity$g$a;

    iget-object v2, v2, Lcom/callerid/block/start/SettingActivity$g$a;->b:Lcom/callerid/block/start/SettingActivity$g;

    iget-object v2, v2, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/callerid/block/util/t0;->G(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v2, "60"

    const-string v4, "android"

    invoke-static/range {v1 .. v7}, Lcom/callerid/block/util/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
