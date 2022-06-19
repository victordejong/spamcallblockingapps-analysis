.class Lcom/callerid/block/start/SettingActivity$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SettingActivity$g;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/SettingActivity$g;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/SettingActivity$g;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity$g$a;->b:Lcom/callerid/block/start/SettingActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/callerid/block/d/d;->b()Lcom/callerid/block/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callerid/block/d/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/callerid/block/start/SettingActivity$g$a;->b:Lcom/callerid/block/start/SettingActivity$g;

    iget-object v0, v0, Lcom/callerid/block/start/SettingActivity$g;->b:Lcom/callerid/block/start/SettingActivity;

    new-instance v1, Lcom/callerid/block/start/SettingActivity$g$a$a;

    invoke-direct {v1, p0}, Lcom/callerid/block/start/SettingActivity$g$a$a;-><init>(Lcom/callerid/block/start/SettingActivity$g$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
