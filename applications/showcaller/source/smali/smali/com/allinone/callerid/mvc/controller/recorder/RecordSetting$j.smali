.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;
.super Ljava/lang/Object;
.source "RecordSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    .line 2
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->Y(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;

    move-result-object p2

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->Y(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->j0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->k0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 6
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->k0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->l0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->l0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 9
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->m0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 10
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->m0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 11
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->n0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 12
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->n0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 13
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->o0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 14
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->p0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 15
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->q0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 16
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->q0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 17
    iget-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p2}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->Z(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/Switch;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;->a:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->a0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    :goto_0
    return-void
.end method
