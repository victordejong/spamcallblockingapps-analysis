.class Lcom/callerid/block/start/SettingActivity$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SettingActivity$c;->a(Lcom/rey/material/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/SettingActivity$c;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/SettingActivity$c;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity$c$a;->b:Lcom/callerid/block/start/SettingActivity$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity$c$a;->b:Lcom/callerid/block/start/SettingActivity$c;

    iget-object v0, v0, Lcom/callerid/block/start/SettingActivity$c;->a:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/main/EZCallApplication;->e()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/start/SettingActivity$c$a;->b:Lcom/callerid/block/start/SettingActivity$c;

    iget-object v1, v1, Lcom/callerid/block/start/SettingActivity$c;->a:Lcom/callerid/block/start/SettingActivity;

    const-class v2, Lcom/callerid/block/start/StartActivityTest;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/start/SettingActivity$c$a;->b:Lcom/callerid/block/start/SettingActivity$c;

    iget-object v1, v1, Lcom/callerid/block/start/SettingActivity$c;->a:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
