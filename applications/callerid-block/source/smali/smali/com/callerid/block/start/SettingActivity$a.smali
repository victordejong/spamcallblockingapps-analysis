.class Lcom/callerid/block/start/SettingActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/SettingActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/SettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity$a;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget-boolean p1, Lcom/callerid/block/util/t0;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    sput-boolean p1, Lcom/callerid/block/util/t0;->a:Z

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$a;->b:Lcom/callerid/block/start/SettingActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callerid/block/start/SettingActivity$a;->b:Lcom/callerid/block/start/SettingActivity;

    const-class v2, Lcom/callerid/block/main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$a;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$a;->b:Lcom/callerid/block/start/SettingActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
