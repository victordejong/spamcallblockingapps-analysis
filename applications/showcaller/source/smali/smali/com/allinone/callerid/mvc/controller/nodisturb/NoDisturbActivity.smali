.class public Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;
.super Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;
.source "NoDisturbActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/CheckBox;

.field private E:Landroid/widget/CheckBox;

.field private F:Landroid/widget/LinearLayout;

.field private G:Lcom/allinone/callerid/customview/BlockLinearLayout;

.field private H:Z

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/bean/WeekInfo;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

.field private O:Landroid/widget/Switch;

.field private final v:Ljava/lang/String;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/Switch;

.field private y:Landroid/widget/Switch;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;-><init>()V

    const-string v0, "NoDisturbActivity"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->v:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->H:Z

    return-void
.end method

.method static synthetic a0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->D:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/Switch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->x:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->L:I

    return p1
.end method

.method static synthetic d0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->o0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->C:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->H:Z

    return p1
.end method

.method static synthetic g0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Lcom/allinone/callerid/customview/BlockLinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->G:Lcom/allinone/callerid/customview/BlockLinearLayout;

    return-object p0
.end method

.method static synthetic h0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->F:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic i0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->M:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic j0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->B:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic k0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->I:I

    return p1
.end method

.method static synthetic l0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->J:I

    return p1
.end method

.method static synthetic m0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n0(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->K:I

    return p1
.end method

.method private o0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->K:I

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->I:I

    const v2, 0x7f10000b

    const-string v3, " "

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->A:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->A:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 5
    iget v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->L:I

    iget v1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->J:I

    if-le v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->A:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->A:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected W()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->W()V

    .line 2
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->u:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->w:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->i()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->x:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->G:Lcom/allinone/callerid/customview/BlockLinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->G:Lcom/allinone/callerid/customview/BlockLinearLayout;

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/customview/BlockLinearLayout;->setClick(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->x:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 9
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->G:Lcom/allinone/callerid/customview/BlockLinearLayout;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->G:Lcom/allinone/callerid/customview/BlockLinearLayout;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/customview/BlockLinearLayout;->setClick(Z)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->x:Landroid/widget/Switch;

    new-instance v3, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h;

    invoke-direct {v3, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$h;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->y:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->F:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->y:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 17
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->c()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->C:Landroid/widget/TextView;

    const v3, 0x7f100018

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->C:Landroid/widget/TextView;

    const v3, 0x7f100294

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_2
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->O:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->O:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 23
    :goto_3
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->a()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->I:I

    .line 24
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->b()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->J:I

    .line 25
    iget v1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->I:I

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/i;->l(II)Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->d()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->K:I

    .line 28
    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->e()I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->L:I

    .line 29
    iget v1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->K:I

    invoke-static {v1, v0}, Lcom/allinone/callerid/util/i;->l(II)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-direct {p0, v0}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->o0(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->D:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 32
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->E:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/allinone/callerid/util/i1/a;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 33
    new-instance v0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$i;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/l/d;->b(Lcom/allinone/callerid/i/a/l/c;)V

    return-void
.end method

.method protected X()V
    .locals 22

    move-object/from16 v1, p0

    const v0, 0x7f0c0046

    .line 1
    :try_start_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const v0, 0x7f090156

    .line 2
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->w:Landroid/widget/ImageView;

    const v0, 0x7f09016f

    .line 3
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090173

    .line 4
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f090175

    .line 5
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090174

    .line 6
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->x:Landroid/widget/Switch;

    const v4, 0x7f09016b

    .line 7
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f09016e

    .line 8
    invoke-virtual {v1, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09016c

    .line 9
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->y:Landroid/widget/Switch;

    const v6, 0x7f090161

    .line 10
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v7, 0x7f090163

    .line 11
    invoke-virtual {v1, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090162

    .line 12
    invoke-virtual {v1, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->z:Landroid/widget/TextView;

    const v8, 0x7f090170

    .line 13
    invoke-virtual {v1, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v9, 0x7f090172

    .line 14
    invoke-virtual {v1, v9}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f090171

    .line 15
    invoke-virtual {v1, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->A:Landroid/widget/TextView;

    const v10, 0x7f090168

    .line 16
    invoke-virtual {v1, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v11, 0x7f09016a

    .line 17
    invoke-virtual {v1, v11}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f090169

    .line 18
    invoke-virtual {v1, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->B:Landroid/widget/TextView;

    const v12, 0x7f090157

    .line 19
    invoke-virtual {v1, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v13, 0x7f09015a

    .line 20
    invoke-virtual {v1, v13}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f090159

    .line 21
    invoke-virtual {v1, v14}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->C:Landroid/widget/TextView;

    const v14, 0x7f090158

    .line 22
    invoke-virtual {v1, v14}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    const v14, 0x7f09014e

    .line 23
    invoke-virtual {v1, v14}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f090150

    .line 24
    invoke-virtual {v1, v15}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v15, 0x7f090151

    .line 25
    invoke-virtual {v1, v15}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v16, v12

    const v12, 0x7f09014f

    .line 26
    invoke-virtual {v1, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->D:Landroid/widget/CheckBox;

    const v12, 0x7f090153

    .line 27
    invoke-virtual {v1, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v12, 0x7f090155

    .line 28
    invoke-virtual {v1, v12}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v17, v10

    const v10, 0x7f090154

    .line 29
    invoke-virtual {v1, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    move-object/from16 v18, v10

    const v10, 0x7f090152

    .line 30
    invoke-virtual {v1, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    iput-object v10, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->E:Landroid/widget/CheckBox;

    const v10, 0x7f090164

    .line 31
    invoke-virtual {v1, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    move-object/from16 v19, v10

    const v10, 0x7f090167

    .line 32
    invoke-virtual {v1, v10}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v20, v8

    const v8, 0x7f090166

    .line 33
    invoke-virtual {v1, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v21, v6

    const v6, 0x7f090165

    .line 34
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->O:Landroid/widget/Switch;

    const v6, 0x7f09016d

    .line 35
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->F:Landroid/widget/LinearLayout;

    const v6, 0x7f090552

    .line 36
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/allinone/callerid/customview/BlockLinearLayout;

    iput-object v6, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->G:Lcom/allinone/callerid/customview/BlockLinearLayout;

    .line 37
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v6

    .line 38
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 42
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 43
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 49
    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 50
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v6, v21

    .line 57
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v8, v20

    .line 58
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v10, v17

    .line 59
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v12, v16

    .line 60
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v10, v18

    .line 61
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v10, v19

    .line 62
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->D:Landroid/widget/CheckBox;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;

    invoke-direct {v2, v1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$a;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->E:Landroid/widget/CheckBox;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$d;

    invoke-direct {v2, v1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$d;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    new-instance v0, Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e;

    invoke-direct {v2, v1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$e;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V

    invoke-direct {v0, v2}, Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;-><init>(Lcom/allinone/callerid/receiver/LocalBroadcastReceiver$a;)V

    iput-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->N:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

    .line 66
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->y:Landroid/widget/Switch;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$f;

    invoke-direct {v2, v1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$f;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v0, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->O:Landroid/widget/Switch;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$g;

    invoke-direct {v2, v1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$g;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 68
    invoke-static/range {p0 .. p0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v2, v1, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->N:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.allinone.callerid.DISTURB_NOTIFICATION_UPDATA"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lb/p/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->x:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->x:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->x:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 5
    :sswitch_1
    new-instance p1, Landroid/app/TimePickerDialog;

    new-instance v4, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$k;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$k;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V

    iget v5, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->K:I

    iget v6, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->L:I

    .line 6
    invoke-static {p0}, Lcom/allinone/callerid/util/i;->p(Landroid/content/Context;)Z

    move-result v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    goto/16 :goto_0

    .line 7
    :sswitch_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->y:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->y:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->F:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    invoke-static {v0}, Lcom/allinone/callerid/util/i1/a;->t(Z)V

    goto/16 :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->y:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->F:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    invoke-static {v1}, Lcom/allinone/callerid/util/i1/a;->t(Z)V

    goto/16 :goto_0

    .line 14
    :sswitch_3
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->M:Ljava/util/ArrayList;

    new-instance v0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$b;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$b;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V

    invoke-static {p0, p1, v0}, Lcom/allinone/callerid/dialog/m;->e(Landroid/content/Context;Ljava/util/ArrayList;Lcom/allinone/callerid/i/a/l/c;)V

    goto/16 :goto_0

    .line 15
    :sswitch_4
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->O:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->O:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 17
    invoke-static {v0}, Lcom/allinone/callerid/util/i1/a;->r(Z)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->O:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 19
    invoke-static {v1}, Lcom/allinone/callerid/util/i1/a;->r(Z)V

    goto :goto_0

    .line 20
    :sswitch_5
    new-instance p1, Landroid/app/TimePickerDialog;

    new-instance v4, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$j;

    invoke-direct {v4, p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$j;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;)V

    iget v5, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->I:I

    iget v6, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->J:I

    .line 21
    invoke-static {p0}, Lcom/allinone/callerid/util/i;->p(Landroid/content/Context;)Z

    move-result v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    goto :goto_0

    .line 22
    :sswitch_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f100294

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f100018

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v0, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;

    invoke-direct {v3, p0, p1}, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity$c;-><init>(Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;Ljava/util/ArrayList;)V

    .line 27
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 30
    :sswitch_7
    invoke-virtual {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->V()V

    goto :goto_0

    .line 31
    :sswitch_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbCustomActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x7f010000

    const v0, 0x7f010001

    .line 32
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090154 -> :sswitch_8
        0x7f090156 -> :sswitch_7
        0x7f090157 -> :sswitch_6
        0x7f090161 -> :sswitch_5
        0x7f090164 -> :sswitch_4
        0x7f090168 -> :sswitch_3
        0x7f09016b -> :sswitch_2
        0x7f090170 -> :sswitch_1
        0x7f090173 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->N:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lb/p/a/a;->b(Landroid/content/Context;)Lb/p/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->N:Lcom/allinone/callerid/receiver/LocalBroadcastReceiver;

    invoke-virtual {v0, v1}, Lb/p/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
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
    invoke-super {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/mvc/controller/nodisturb/DisturbBaseActivity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->H:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/j1/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/allinone/callerid/util/i1/a;->m(I)V

    .line 5
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->C:Landroid/widget/TextView;

    const v2, 0x7f100018

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/allinone/callerid/mvc/controller/nodisturb/NoDisturbActivity;->H:Z

    .line 7
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/allinone/callerid/main/EZCallApplication;->f:Z

    if-nez v1, :cond_0

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "openNotificationManagerCount"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 9
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iput-boolean v0, v1, Lcom/allinone/callerid/main/EZCallApplication;->f:Z

    :cond_1
    return-void
.end method
