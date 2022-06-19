.class Lcom/callerid/block/start/PrivacyActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/PrivacyActivity;->Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callerid/block/start/PrivacyActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/PrivacyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/PrivacyActivity$a;->b:Lcom/callerid/block/start/PrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "privacy_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/callerid/block/util/n0;->k0(Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/callerid/block/start/PrivacyActivity$a;->b:Lcom/callerid/block/start/PrivacyActivity;

    const-class v2, Lcom/callerid/block/mvc/controller/RequestPerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "is_first"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/callerid/block/start/PrivacyActivity$a;->b:Lcom/callerid/block/start/PrivacyActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/callerid/block/start/PrivacyActivity$a;->b:Lcom/callerid/block/start/PrivacyActivity;

    const/high16 v0, 0x7f010000

    const v1, 0x7f010001

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/callerid/block/start/PrivacyActivity$a;->b:Lcom/callerid/block/start/PrivacyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
