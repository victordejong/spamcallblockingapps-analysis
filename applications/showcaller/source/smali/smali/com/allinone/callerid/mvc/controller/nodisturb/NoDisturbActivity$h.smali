.class Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h;
.super Ljava/lang/Object;
.source "NoDisturbActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->W()V
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
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->g0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Lcom/allinone/callerid/customview/BlockLinearLayout;

    move-result-object p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->g0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Lcom/allinone/callerid/customview/BlockLinearLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/allinone/callerid/customview/BlockLinearLayout;->setClick(Z)V

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/i1/a;->s(Z)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/l0;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->g0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Lcom/allinone/callerid/customview/BlockLinearLayout;

    move-result-object p2

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->g0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Lcom/allinone/callerid/customview/BlockLinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/allinone/callerid/customview/BlockLinearLayout;->setClick(Z)V

    .line 7
    invoke-static {p1}, Lcom/allinone/callerid/util/i1/a;->s(Z)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h;->a:Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/l0;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
