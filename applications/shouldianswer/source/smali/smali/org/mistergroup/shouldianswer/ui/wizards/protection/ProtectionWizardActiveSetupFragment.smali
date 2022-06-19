.class public final Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "ProtectionWizardActiveSetupFragment.kt"


# instance fields
.field public b:Lorg/mistergroup/shouldianswer/a/bs;

.field private c:Z

.field private d:Lorg/mistergroup/shouldianswer/model/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    .line 37
    sget-object v0, Lorg/mistergroup/shouldianswer/model/a;->a:Lorg/mistergroup/shouldianswer/model/a;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->d:Lorg/mistergroup/shouldianswer/model/a;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->e()V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)Lorg/mistergroup/shouldianswer/ui/a;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p0

    return-object p0
.end method

.method private final e()V
    .locals 15

    .line 143
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "ProtectionWizard.updateUI"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->d:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v3, Lorg/mistergroup/shouldianswer/model/a;->a:Lorg/mistergroup/shouldianswer/model/a;

    const-string v4, "binding.tvRequiredActions"

    const-string v5, "binding.llActionCallScreening"

    const-string v6, "binding.llActionSystemPermissions"

    const-string v7, "binding.llActionDefaultPhoneApp"

    const-string v8, "binding.llActionOverlay"

    const/16 v9, 0x8

    const-string v10, "binding"

    if-ne v0, v3, :cond_5

    .line 145
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_0

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bs;->o:Landroid/widget/LinearLayout;

    invoke-static {v0, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_1

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bs;->q:Landroid/widget/LinearLayout;

    invoke-static {v0, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_2

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bs;->n:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_3

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bs;->p:Landroid/widget/LinearLayout;

    invoke-static {v0, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_4

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bs;->u:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 150
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "Hide permissions due no AlertType choosed"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 154
    :cond_5
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v0

    const/16 v3, 0x1d

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_6

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->d:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v13, Lorg/mistergroup/shouldianswer/model/a;->b:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v0, v13, :cond_7

    :cond_6
    move v0, v11

    goto :goto_0

    :cond_7
    move v0, v12

    .line 155
    :goto_0
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v13, v3, :cond_8

    sget-object v3, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/c;->D()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->d:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v13, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v3, v13, :cond_8

    move v3, v11

    goto :goto_1

    :cond_8
    move v3, v12

    .line 159
    :goto_1
    sget-object v13, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->d:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v14, Lorg/mistergroup/shouldianswer/model/a;->b:Lorg/mistergroup/shouldianswer/model/a;

    if-eq v13, v14, :cond_a

    :cond_9
    sget-object v13, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/model/c;->D()Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->d:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v14, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v13, v14, :cond_b

    :cond_a
    sget-object v13, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v13}, Lorg/mistergroup/shouldianswer/utils/o;->m()Z

    move-result v13

    if-nez v13, :cond_b

    move v13, v11

    goto :goto_2

    :cond_b
    move v13, v12

    :goto_2
    if-eqz v3, :cond_c

    .line 160
    sget-object v14, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v14}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v14

    if-eqz v14, :cond_c

    move v3, v12

    :cond_c
    if-nez v0, :cond_d

    if-nez v3, :cond_d

    if-nez v13, :cond_d

    goto :goto_3

    :cond_d
    move v11, v12

    .line 163
    :goto_3
    iget-object v14, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v14, :cond_e

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v14, v14, Lorg/mistergroup/shouldianswer/a/bs;->o:Landroid/widget/LinearLayout;

    invoke-static {v14, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_f

    move v0, v12

    goto :goto_4

    :cond_f
    move v0, v9

    :goto_4
    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_10

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bs;->n:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_11

    move v3, v12

    goto :goto_5

    :cond_11
    move v3, v9

    :goto_5
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_12

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bs;->q:Landroid/widget/LinearLayout;

    invoke-static {v0, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v13, :cond_13

    move v3, v12

    goto :goto_6

    :cond_13
    move v3, v9

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->d:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v3, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v0, v3, :cond_17

    .line 168
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->l()Z

    move-result v0

    .line 169
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v3, :cond_14

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/bs;->p:Landroid/widget/LinearLayout;

    invoke-static {v3, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_16

    iget-boolean v5, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->c:Z

    if-eqz v5, :cond_15

    goto :goto_7

    :cond_15
    move v9, v12

    :cond_16
    :goto_7
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez v0, :cond_19

    .line 170
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->c:Z

    if-nez v0, :cond_19

    move v11, v12

    goto :goto_8

    .line 173
    :cond_17
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_18

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_18
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bs;->p:Landroid/widget/LinearLayout;

    invoke-static {v0, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_19
    :goto_8
    if-eqz v11, :cond_1a

    .line 177
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "We can continue to next screen"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 178
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/mistergroup/shouldianswer/model/af;)V

    .line 179
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->d:Lorg/mistergroup/shouldianswer/model/a;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ai;->a(Lorg/mistergroup/shouldianswer/model/a;)V

    .line 180
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp;->c()V

    .line 181
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/ui/a;->finish()V

    .line 182
    sget-object v0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneActivity;->l:Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneActivity$a;

    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupDoneActivity$a;->a(Landroid/content/Context;)V

    return-void

    .line 185
    :cond_1a
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_1b

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1b
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bs;->u:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->d:Lorg/mistergroup/shouldianswer/model/a;

    return-void
.end method

.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bs;->l:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$a;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$a;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bs;->m:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$c;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bs;->e:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bs;->d:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$e;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez p2, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bs;->h:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$f;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez p2, :cond_5

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/bs;->f:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$g;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/bs;->g:Landroid/widget/Button;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$h;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/bs;->j:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$i;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/bs;->k:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$j;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$j;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez p1, :cond_9

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/bs;->i:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$b;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->e()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->c:Z

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/bs;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public final d()Lorg/mistergroup/shouldianswer/a/bs;
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0056

    const/4 v0, 0x0

    .line 40
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/bs;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    .line 41
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->b:Lorg/mistergroup/shouldianswer/a/bs;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/bs;->d()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 194
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    .line 195
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/wizards/protection/ProtectionWizardActiveSetupFragment;->e()V

    return-void
.end method
