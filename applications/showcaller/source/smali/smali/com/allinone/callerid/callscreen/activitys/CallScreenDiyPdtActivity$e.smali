.class Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e;
.super Ljava/lang/Object;
.source "CallScreenDiyPdtActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->u0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->h0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    const-class v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenSelectActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p2}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "theme_name"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p2}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->i0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Lcom/allinone/callerid/callscreen/bean/HomeInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/allinone/callerid/callscreen/bean/HomeInfo;->isIsdefault()Z

    move-result p2

    const-string v0, "is_default"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    const/16 v0, 0x231d

    invoke-virtual {p2, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$e;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    const/high16 p2, 0x7f010000

    const v0, 0x7f010001

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
