.class public Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "RecordSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/ImageView;

.field private C:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

.field private D:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private E:Landroid/widget/CheckBox;

.field private F:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private G:Landroid/widget/CheckBox;

.field private H:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private I:Landroid/widget/FrameLayout;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/Switch;

.field private L:Z

.field private M:Ljava/util/TimerTask;

.field private N:Ljava/util/Timer;

.field private final u:Ljava/lang/String;

.field private v:Landroid/widget/Switch;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/graphics/Typeface;

.field private y:Landroid/widget/FrameLayout;

.field private z:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "RecordSetting"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->u:Ljava/lang/String;

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/Switch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->v:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic Y(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->w:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic Z(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/Switch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->K:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->r0()V

    return-void
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x0()V

    return-void
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->J:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->w0()V

    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->s0()V

    return-void
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->t0()V

    return-void
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->v0()V

    return-void
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->C:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    return-object p0
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->y:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic o0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->E:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic p0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->G:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic q0(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->I:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private r0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->t0()V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 5
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$k;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    invoke-static {p0, v0}, Lcom/allinone/callerid/util/recorder/f;->w(Landroid/app/Activity;Lcom/allinone/callerid/i/a/c;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Lcom/allinone/callerid/util/recorder/f;->v(Landroid/app/Activity;Lcom/allinone/callerid/i/a/d;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$l;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$l;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private s0()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/allinone/callerid/util/j1/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/allinone/callerid/util/j1/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->r(Z)V

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "call_record_enabled"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->t0()V

    :cond_0
    return-void
.end method

.method private t0()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->e()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "record"

    const-string v3, "\u5f00\u542f\u4e86\u5f55\u97f3"

    .line 3
    invoke-static {v0, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->v:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->w:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 12
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->E:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->G:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->K:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->v:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->w:Landroid/widget/FrameLayout;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 24
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 25
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 27
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 28
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 29
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 30
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 33
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->E:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 34
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->G:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 35
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 36
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 37
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->K:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 38
    invoke-static {}, Lcom/allinone/callerid/util/recorder/d;->c()V

    .line 39
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->E:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->E:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method private u0()V
    .locals 15

    const v0, 0x7f09054a

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->y:Landroid/widget/FrameLayout;

    const v0, 0x7f09054b

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v0, 0x7f09054e

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09055b

    .line 4
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f09054c

    .line 5
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->A:Landroid/widget/TextView;

    const v1, 0x7f09054d

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->B:Landroid/widget/ImageView;

    const v1, 0x7f090549

    .line 7
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->C:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    const v1, 0x7f090550

    .line 8
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f090551

    .line 9
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09054f

    .line 10
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->E:Landroid/widget/CheckBox;

    const v2, 0x7f090544

    .line 11
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v2, 0x7f090545

    .line 12
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090543

    .line 13
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->G:Landroid/widget/CheckBox;

    const v3, 0x7f090547

    .line 14
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v3, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v3, 0x7f090548

    .line 15
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090546

    .line 16
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v4, 0x7f090557

    .line 17
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f09055c

    .line 18
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09055a

    .line 19
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090559

    .line 20
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Switch;

    iput-object v7, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->v:Landroid/widget/Switch;

    const v7, 0x7f090553

    .line 21
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    const v8, 0x7f090556

    .line 22
    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090555

    .line 23
    invoke-virtual {p0, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f090540

    .line 24
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    iput-object v10, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->w:Landroid/widget/FrameLayout;

    const v10, 0x7f090542

    .line 25
    invoke-virtual {p0, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f09053f

    .line 26
    invoke-virtual {p0, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f09053a

    .line 27
    invoke-virtual {p0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    iput-object v12, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->I:Landroid/widget/FrameLayout;

    .line 28
    invoke-virtual {v12, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f09053c

    .line 29
    invoke-virtual {p0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->J:Landroid/widget/TextView;

    const v12, 0x7f09053e

    .line 30
    invoke-virtual {p0, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f09053d

    .line 31
    invoke-virtual {p0, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Switch;

    iput-object v13, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->K:Landroid/widget/Switch;

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, "Roboto-Regular.ttf"

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    iput-object v13, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    .line 33
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 35
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->A:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f090367

    .line 46
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08015b

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    :cond_0
    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$e;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->g()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->G:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->G:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->w:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    sget-object v0, Lcom/allinone/callerid/util/recorder/c;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x3e99999a    # 0.3f

    .line 55
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 56
    new-instance v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$f;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->h()I

    move-result v0

    if-nez v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->A:Landroid/widget/TextView;

    const v3, 0x7f1002e3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->C:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->g(Z)V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    .line 60
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->A:Landroid/widget/TextView;

    const v3, 0x7f1002e4

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->C:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->g(Z)V

    .line 62
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->E:Landroid/widget/CheckBox;

    new-instance v3, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$g;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$g;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->G:Landroid/widget/CheckBox;

    new-instance v3, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$h;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$h;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->z:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-static {}, Lcom/allinone/callerid/util/recorder/b;->b()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f1002df

    .line 69
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "$$"

    if-eqz v0, :cond_4

    const-string v5, ""

    .line 70
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 71
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->K:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_4
    const-string v0, "X"

    .line 74
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->J:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->K:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 77
    :goto_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->K:Landroid/widget/Switch;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$i;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$i;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 78
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->t0()V

    .line 79
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->v:Landroid/widget/Switch;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$j;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private v0()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/allinone/callerid/util/j1/a;->g(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "record"

    if-eqz v0, :cond_1

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->M:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->N:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "\u5f00\u542f\u4e86"

    .line 5
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "permissions_accessibility_enabled"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->r(Z)V

    .line 8
    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->q(Z)V

    .line 9
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "call_record_enabled"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->t0()V

    goto :goto_0

    .line 11
    :cond_1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "\u672a\u5f00\u542f"

    .line 12
    invoke-static {v1, v0}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private w0()V
    .locals 7

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "permissions_accessibility_request"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->L:Z

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 5
    invoke-static {p0}, Lcom/allinone/callerid/util/recorder/f;->A(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->M:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 8
    :cond_0
    new-instance v2, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$m;

    invoke-direct {v2, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$m;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    iput-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->M:Ljava/util/TimerTask;

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->N:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private x0()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090142

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/BaseEditText;

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->x:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f10000d

    .line 5
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f1002bc

    .line 7
    new-instance v3, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$a;

    invoke-direct {v3, p0, v1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;Lcom/allinone/callerid/customview/BaseEditText;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$b;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private y0(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/allinone/callerid/mvc/view/recorder/b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/view/recorder/b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f1002e3

    .line 2
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1002e4

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/b;->b([Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;

    invoke-direct {v1, p0, v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$c;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;Lcom/allinone/callerid/mvc/view/recorder/b;)V

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/mvc/view/recorder/b;->a(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->B:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->y0(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->E:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "auto_record_unknown_call_unselect"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->E:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6
    invoke-static {v3}, Lcom/allinone/callerid/util/recorder/b;->u(Z)V

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->E:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8
    invoke-static {v2}, Lcom/allinone/callerid/util/recorder/b;->u(Z)V

    goto :goto_0

    .line 9
    :sswitch_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v2, "auto_record_custom"

    invoke-virtual {p1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/allinone/callerid/mvc/controller/recorder/CustomActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "customType"

    .line 11
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 14
    :sswitch_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->G:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->G:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    invoke-static {v3}, Lcom/allinone/callerid/util/recorder/b;->s(Z)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->G:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 18
    invoke-static {v2}, Lcom/allinone/callerid/util/recorder/b;->s(Z)V

    goto :goto_0

    .line 19
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 20
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 21
    :sswitch_5
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->K:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->K:Landroid/widget/Switch;

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    const-string p1, ""

    .line 23
    invoke-static {p1}, Lcom/allinone/callerid/util/recorder/b;->n(Ljava/lang/String;)V

    const p1, 0x7f1002df

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "$$"

    const-string v1, "X"

    .line 25
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->J:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->K:Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09053a -> :sswitch_5
        0x7f090540 -> :sswitch_4
        0x7f090544 -> :sswitch_3
        0x7f090547 -> :sswitch_2
        0x7f090550 -> :sswitch_1
        0x7f09055b -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0055

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->u0()V

    .line 7
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->N:Ljava/util/Timer;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->L:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->L:Z

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->M:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->C:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    invoke-virtual {v0}, Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;->e()V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->C:Lcom/allinone/callerid/mvc/view/recorder/ExpandLayout;

    new-instance v1, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting$d;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordSetting;->t0()V

    :cond_1
    return-void
.end method
