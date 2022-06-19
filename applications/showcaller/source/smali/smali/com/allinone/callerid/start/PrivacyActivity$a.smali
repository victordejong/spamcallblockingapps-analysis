.class Lcom/allinone/callerid/start/PrivacyActivity$a;
.super Ljava/lang/Object;
.source "PrivacyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/PrivacyActivity;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/start/PrivacyActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/PrivacyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/PrivacyActivity$a;->d:Lcom/allinone/callerid/start/PrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "privacy_click"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/start/PrivacyActivity$a;->d:Lcom/allinone/callerid/start/PrivacyActivity;

    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/PrivacyActivity$a;->d:Lcom/allinone/callerid/start/PrivacyActivity;

    const-class v1, Lcom/allinone/callerid/mvc/controller/permission/OverlayPerActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/start/PrivacyActivity$a;->d:Lcom/allinone/callerid/start/PrivacyActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/start/PrivacyActivity$a;->d:Lcom/allinone/callerid/start/PrivacyActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/start/PrivacyActivity$a;->d:Lcom/allinone/callerid/start/PrivacyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
