.class Lcom/callerid/block/start/BlockSettingActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/rey/material/widget/Switch$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/BlockSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/start/BlockSettingActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/BlockSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity$d;->a:Lcom/callerid/block/start/BlockSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/rey/material/widget/Switch;Z)V
    .locals 2

    iget-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity$d;->a:Lcom/callerid/block/start/BlockSettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/BlockSettingActivity;->U(Lcom/callerid/block/start/BlockSettingActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/start/BlockSettingActivity$d;->a:Lcom/callerid/block/start/BlockSettingActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f1001de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity$d;->a:Lcom/callerid/block/start/BlockSettingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f1000e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity$d;->a:Lcom/callerid/block/start/BlockSettingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/callerid/block/util/n0;->K0(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/callerid/block/start/BlockSettingActivity$d;->a:Lcom/callerid/block/start/BlockSettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/BlockSettingActivity;->V(Lcom/callerid/block/start/BlockSettingActivity;)Lcom/rey/material/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    return-void
.end method
