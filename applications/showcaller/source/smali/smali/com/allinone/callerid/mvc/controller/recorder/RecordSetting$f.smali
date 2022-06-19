.class Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;
.super Ljava/lang/Object;
.source "RecordSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->X(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->X(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->Y(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->Y(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->j0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->k0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->k0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->l0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->l0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->m0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->m0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->n0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->n0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->o0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->p0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->q0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->q0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->Z(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;

    invoke-static {p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->a0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    :goto_0
    return-void
.end method
