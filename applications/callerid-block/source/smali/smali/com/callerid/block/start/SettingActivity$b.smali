.class Lcom/callerid/block/start/SettingActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/SettingActivity;->f0()V
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

    iput-object p1, p0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "wa_seeting_click"

    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/x0/b;->a(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p1, v0}, Lcom/callerid/block/start/SettingActivity;->Q(Lcom/callerid/block/start/SettingActivity;Z)Z

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/x0/b;->b(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    new-instance v0, Lcom/callerid/block/start/SettingActivity$b$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/start/SettingActivity$b$a;-><init>(Lcom/callerid/block/start/SettingActivity$b;)V

    invoke-static {p1, v0}, Lcom/callerid/block/start/SettingActivity;->S(Lcom/callerid/block/start/SettingActivity;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SettingActivity;->V(Lcom/callerid/block/start/SettingActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SettingActivity;->R(Lcom/callerid/block/start/SettingActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SettingActivity;->W(Lcom/callerid/block/start/SettingActivity;)Lcom/rey/material/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rey/material/widget/Switch;->isChecked()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SettingActivity;->W(Lcom/callerid/block/start/SettingActivity;)Lcom/rey/material/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    invoke-static {v1}, Lcom/callerid/block/util/n0;->w1(Z)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "whatsapp_identify_close"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/start/SettingActivity$b;->b:Lcom/callerid/block/start/SettingActivity;

    invoke-static {p1}, Lcom/callerid/block/start/SettingActivity;->W(Lcom/callerid/block/start/SettingActivity;)Lcom/rey/material/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/rey/material/widget/Switch;->setChecked(Z)V

    invoke-static {v0}, Lcom/callerid/block/util/n0;->w1(Z)V

    invoke-static {v1}, Lcom/callerid/block/util/n0;->l1(Z)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v0, "whatsapp_identify_open"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
