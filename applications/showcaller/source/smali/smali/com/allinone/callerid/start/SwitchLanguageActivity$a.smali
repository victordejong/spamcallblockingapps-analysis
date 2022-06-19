.class Lcom/allinone/callerid/start/SwitchLanguageActivity$a;
.super Ljava/lang/Object;
.source "SwitchLanguageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/SwitchLanguageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/SwitchLanguageActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/SwitchLanguageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/SwitchLanguageActivity$a;->d:Lcom/allinone/callerid/start/SwitchLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/start/SwitchLanguageActivity$a;->d:Lcom/allinone/callerid/start/SwitchLanguageActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/allinone/callerid/start/SwitchLanguageActivity$a;->d:Lcom/allinone/callerid/start/SwitchLanguageActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/allinone/callerid/start/CommonSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/start/SwitchLanguageActivity$a;->d:Lcom/allinone/callerid/start/SwitchLanguageActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/start/SwitchLanguageActivity$a;->d:Lcom/allinone/callerid/start/SwitchLanguageActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
