.class Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e;
.super Ljava/lang/Object;
.source "NoDisturbActivity.java"

# interfaces
.implements Lcom/allinone/callerid/receiver/LocalBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v0, "\u52ff\u6270\u6a21\u5f0f\u603b\u5f00\u5173"

    .line 2
    invoke-static {p1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->i()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->b0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->g0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Lcom/allinone/callerid/customview/BlockLinearLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->g0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Lcom/allinone/callerid/customview/BlockLinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/customview/BlockLinearLayout;->setClick(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->b0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->g0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Lcom/allinone/callerid/customview/BlockLinearLayout;

    move-result-object p1

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->g0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Lcom/allinone/callerid/customview/BlockLinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/customview/BlockLinearLayout;->setClick(Z)V

    :goto_0
    return-void
.end method
