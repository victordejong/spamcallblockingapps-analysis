.class public final Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "SettingsProtectionFragment.kt"


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/model/af;

.field private c:Lorg/mistergroup/shouldianswer/model/a;

.field private d:Lorg/mistergroup/shouldianswer/model/af;

.field private e:Lorg/mistergroup/shouldianswer/model/a;

.field private f:Z

.field private g:Lorg/mistergroup/shouldianswer/a/ec;

.field private final h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    .line 34
    sget-object v0, Lorg/mistergroup/shouldianswer/model/af;->a:Lorg/mistergroup/shouldianswer/model/af;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    .line 35
    sget-object v0, Lorg/mistergroup/shouldianswer/model/a;->a:Lorg/mistergroup/shouldianswer/model/a;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    .line 37
    sget-object v0, Lorg/mistergroup/shouldianswer/model/af;->a:Lorg/mistergroup/shouldianswer/model/af;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d:Lorg/mistergroup/shouldianswer/model/af;

    .line 38
    sget-object v0, Lorg/mistergroup/shouldianswer/model/a;->a:Lorg/mistergroup/shouldianswer/model/a;

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->e:Lorg/mistergroup/shouldianswer/model/a;

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->h:I

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/af;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    return-object p0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Lorg/mistergroup/shouldianswer/model/a;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Lorg/mistergroup/shouldianswer/model/af;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->f:Z

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d()V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Lorg/mistergroup/shouldianswer/model/a;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->e:Lorg/mistergroup/shouldianswer/model/a;

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Lorg/mistergroup/shouldianswer/model/af;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d:Lorg/mistergroup/shouldianswer/model/af;

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/a;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    return-object p0
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/a/ec;
    .locals 1

    .line 33
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final d()V
    .locals 15

    .line 241
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d:Lorg/mistergroup/shouldianswer/model/af;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->e:Lorg/mistergroup/shouldianswer/model/a;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->f:Z

    const-string v0, ""

    .line 242
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    .line 243
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    sget-object v5, Lorg/mistergroup/shouldianswer/ui/settings/protection/a;->a:[I

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/af;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v4, v2, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0x7f10017b

    .line 246
    invoke-virtual {p0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(R.string.no_protection)"

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const v1, 0x7f1001a6

    .line 245
    invoke-virtual {p0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(R.string.passive_protection)"

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_4
    const v1, 0x7f10002e

    .line 244
    invoke-virtual {p0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(R.string.active_protection)"

    invoke-static {v1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    .line 250
    :goto_2
    check-cast v0, Ljava/lang/CharSequence;

    .line 251
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v7, Lorg/mistergroup/shouldianswer/ui/settings/protection/a;->b:[I

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/a;->ordinal()I

    move-result v4

    aget v4, v7, v4

    if-eq v4, v2, :cond_7

    if-eq v4, v6, :cond_6

    if-eq v4, v5, :cond_5

    goto :goto_3

    :cond_5
    const v0, 0x7f1001ff

    .line 254
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getString(R.string.system_notification)"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_6
    const v0, 0x7f1001b3

    .line 253
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getString(R.string.popup\u2026nt_of_system_call_screen)"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_7
    const v0, 0x7f1000fc

    .line 252
    invoke-virtual {p0, v0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getString(R.string.custom_call_screen)"

    invoke-static {v0, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    .line 258
    :goto_3
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/af;->a:Lorg/mistergroup/shouldianswer/model/af;

    if-eq v4, v5, :cond_8

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/af;->b:Lorg/mistergroup/shouldianswer/model/af;

    if-eq v4, v5, :cond_8

    move v4, v2

    goto :goto_4

    :cond_8
    move v4, v3

    .line 259
    :goto_4
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    const-string v7, "binding"

    if-nez v5, :cond_9

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ec;->l:Landroid/widget/Button;

    const-string v8, "binding.butChangeProtectionType"

    invoke-static {v5, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    if-eqz v4, :cond_a

    move v9, v3

    goto :goto_5

    :cond_a
    move v9, v8

    :goto_5
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v5, :cond_b

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ec;->O:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v9, "binding.tvSelectedProtectionType"

    invoke-static {v5, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x8

    if-eqz v4, :cond_c

    move v11, v3

    goto :goto_6

    :cond_c
    move v11, v10

    :goto_6
    invoke-virtual {v5, v11}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 261
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v5, :cond_d

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ec;->O:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v1, :cond_e

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ec;->J:Landroid/widget/RadioGroup;

    const-string v5, "binding.radioGroupProtection"

    invoke-static {v1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_f

    move v5, v3

    goto :goto_7

    :cond_f
    move v5, v10

    :goto_7
    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/a;->a:Lorg/mistergroup/shouldianswer/model/a;

    if-eq v1, v5, :cond_10

    move v1, v2

    goto :goto_8

    :cond_10
    move v1, v3

    .line 265
    :goto_8
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v5, :cond_11

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ec;->E:Landroid/widget/LinearLayout;

    const-string v9, "binding.llAlertsTypeTitle"

    invoke-static {v5, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_12

    move v9, v3

    goto :goto_9

    :cond_12
    move v9, v10

    :goto_9
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v5, :cond_13

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ec;->k:Landroid/widget/Button;

    const-string v9, "binding.butChangeAlertsType"

    invoke-static {v5, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_14

    move v8, v3

    :cond_14
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v5, :cond_15

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ec;->N:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v8, "binding.tvSelectedAlertsType"

    invoke-static {v5, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_16

    move v9, v3

    goto :goto_a

    :cond_16
    move v9, v10

    :goto_a
    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 268
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v5, :cond_17

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_17
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ec;->N:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_18

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_18
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->G:Landroid/widget/LinearLayout;

    const-string v5, "binding.llInCallScreen"

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_19

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    sget-object v8, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    if-ne v5, v8, :cond_19

    move v5, v3

    goto :goto_b

    :cond_19
    move v5, v10

    :goto_b
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_1a

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->I:Landroid/widget/RadioGroup;

    const-string v5, "binding.radioGroupAlerts"

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_1b

    if-nez v1, :cond_1b

    move v5, v3

    goto :goto_c

    :cond_1b
    move v5, v10

    :goto_c
    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    const/16 v8, 0x1d

    if-ne v0, v5, :cond_1d

    if-eqz v1, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_1c

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/a;->b:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v0, v5, :cond_1d

    :cond_1c
    move v0, v2

    goto :goto_d

    :cond_1d
    move v0, v3

    .line 276
    :goto_d
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v8, :cond_1f

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    sget-object v9, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    if-ne v5, v9, :cond_1f

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v9, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    if-eq v5, v9, :cond_1e

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v9, Lorg/mistergroup/shouldianswer/model/a;->d:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v5, v9, :cond_1f

    :cond_1e
    move v5, v2

    goto :goto_e

    :cond_1f
    move v5, v3

    .line 278
    :goto_e
    iget-object v9, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    sget-object v11, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    if-eq v9, v11, :cond_21

    iget-object v9, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    sget-object v11, Lorg/mistergroup/shouldianswer/model/af;->c:Lorg/mistergroup/shouldianswer/model/af;

    if-ne v9, v11, :cond_20

    if-eqz v1, :cond_20

    goto :goto_f

    :cond_20
    move v9, v3

    goto :goto_10

    :cond_21
    :goto_f
    move v9, v2

    .line 279
    :goto_10
    iget-object v11, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    sget-object v12, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v11, v12, :cond_22

    if-eqz v1, :cond_22

    move v11, v2

    goto :goto_11

    :cond_22
    move v11, v3

    :goto_11
    if-eqz v9, :cond_23

    .line 281
    sget-object v12, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v12}, Lorg/mistergroup/shouldianswer/utils/o;->m()Z

    move-result v12

    if-eqz v12, :cond_23

    move v9, v3

    :cond_23
    if-eqz v0, :cond_26

    .line 285
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v8, :cond_24

    .line 286
    sget-object v6, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_12

    .line 291
    :cond_24
    sget-object v8, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v8

    if-eqz v8, :cond_25

    :goto_12
    move v0, v3

    move v5, v0

    goto :goto_14

    :cond_25
    const/4 v8, 0x0

    .line 297
    :try_start_0
    sget-object v9, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v9}, Lorg/mistergroup/shouldianswer/utils/y;->h()Landroid/telecom/TelecomManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v9

    const-string v12, "SystemServices.telecomManager.defaultDialerPackage"

    invoke-static {v9, v12}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_13

    :catch_0
    move-exception v9

    .line 299
    sget-object v12, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v12, v9, v8, v6, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    const-string v9, "undefined"

    .line 301
    :goto_13
    sget-object v12, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SettingsProtectionFragment.updateUI actualDialer is \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9, v8, v6, v8}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    move v9, v3

    :cond_26
    :goto_14
    if-eqz v5, :cond_27

    .line 309
    sget-object v6, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/c;->D()Z

    move-result v6

    if-eqz v6, :cond_27

    move v5, v3

    :cond_27
    if-eqz v11, :cond_28

    .line 314
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/utils/o;->l()Z

    move-result v6

    if-eqz v6, :cond_28

    move v11, v3

    :cond_28
    if-nez v0, :cond_29

    if-nez v5, :cond_29

    if-nez v9, :cond_29

    if-nez v11, :cond_29

    move v6, v2

    goto :goto_15

    :cond_29
    move v6, v3

    .line 319
    :goto_15
    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v8, :cond_2a

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2a
    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/ec;->H:Landroid/widget/LinearLayout;

    const-string v12, "binding.llRequiredActions"

    invoke-static {v8, v12}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v6, :cond_2b

    if-eqz v4, :cond_2b

    if-eqz v1, :cond_2b

    move v12, v3

    goto :goto_16

    :cond_2b
    move v12, v10

    :goto_16
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v8, :cond_2c

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2c
    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/ec;->B:Landroid/widget/LinearLayout;

    const-string v12, "binding.llActionDefaultPhoneApp"

    invoke-static {v8, v12}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2d

    move v0, v3

    goto :goto_17

    :cond_2d
    move v0, v10

    :goto_17
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_2e

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2e
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->A:Landroid/widget/LinearLayout;

    const-string v8, "binding.llActionCallScreening"

    invoke-static {v0, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_2f

    move v5, v3

    goto :goto_18

    :cond_2f
    move v5, v10

    :goto_18
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_30

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_30
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->D:Landroid/widget/LinearLayout;

    const-string v5, "binding.llActionSystemPermissions"

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_31

    move v5, v3

    goto :goto_19

    :cond_31
    move v5, v10

    :goto_19
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_32

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_32
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->C:Landroid/widget/LinearLayout;

    const-string v5, "binding.llActionOverlay"

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v11, :cond_33

    move v5, v3

    goto :goto_1a

    :cond_33
    move v5, v10

    :goto_1a
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    sget-object v5, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    const-string v8, "binding.checkPopup"

    const-string v9, "binding.tvNotificationNotSupported"

    const-string v11, "binding.checkNotification"

    if-ne v0, v5, :cond_3a

    .line 327
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_34

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_34
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->x:Landroid/widget/RadioButton;

    invoke-static {v0, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/o;->a()Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_35

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_35
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->K:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/o;->a()Z

    move-result v5

    if-eqz v5, :cond_36

    move v5, v3

    goto :goto_1b

    :cond_36
    move v5, v10

    :goto_1b
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_37

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_37
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->z:Landroid/widget/RadioButton;

    invoke-static {v0, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/o;->a()Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_38

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_38
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->L:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "binding.tvPopupNotSupported"

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/utils/o;->a()Z

    move-result v5

    if-eqz v5, :cond_39

    move v5, v3

    goto :goto_1c

    :cond_39
    move v5, v10

    :goto_1c
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_1d

    .line 333
    :cond_3a
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_3b

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3b
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->x:Landroid/widget/RadioButton;

    invoke-static {v0, v11}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 334
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_3c

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3c
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->K:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v9}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_3d

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3d
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->z:Landroid/widget/RadioButton;

    invoke-static {v0, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 337
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_3e

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3e
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->L:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "binding.tvPopupNotSupported"

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 340
    :goto_1d
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->f:Z

    if-eqz v0, :cond_40

    if-eqz v4, :cond_3f

    if-eqz v1, :cond_3f

    if-nez v6, :cond_41

    :cond_3f
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    sget-object v1, Lorg/mistergroup/shouldianswer/model/af;->b:Lorg/mistergroup/shouldianswer/model/af;

    if-ne v0, v1, :cond_40

    goto :goto_1e

    :cond_40
    move v2, v3

    .line 341
    :cond_41
    :goto_1e
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_42

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_42
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->F:Landroid/widget/LinearLayout;

    const-string v1, "binding.llConfirmation"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_43

    goto :goto_1f

    :cond_43
    move v3, v10

    :goto_1f
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_44

    invoke-static {v7}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_44
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->m:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$w;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/ui/a;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/af;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d:Lorg/mistergroup/shouldianswer/model/af;

    return-object p0
.end method

.method public static final synthetic g(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)Lorg/mistergroup/shouldianswer/model/a;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->e:Lorg/mistergroup/shouldianswer/model/a;

    return-object p0
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object p2

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->b:Lorg/mistergroup/shouldianswer/model/af;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d:Lorg/mistergroup/shouldianswer/model/af;

    .line 54
    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object p2

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->c:Lorg/mistergroup/shouldianswer/model/a;

    iput-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->e:Lorg/mistergroup/shouldianswer/model/a;

    .line 56
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->u:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$a;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$a;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->y:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$l;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$l;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->w:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$p;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$p;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->l:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$q;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$q;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p2, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->v:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$r;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$r;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p2, :cond_5

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->z:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$s;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$s;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p2, :cond_6

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->x:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$t;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$t;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p2, :cond_7

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->k:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$u;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$u;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p2, :cond_8

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->e:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$v;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p2, :cond_9

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->d:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$b;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p2, :cond_a

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/ec;->f:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$c;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_b

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->h:Landroid/widget/Button;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$d;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_c

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->r:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$e;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_d

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->i:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$f;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_e

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->p:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$g;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_f

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->o:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$h;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_10

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->n:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$i;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_11

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->q:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$j;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$j;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_12

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->t:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$k;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$k;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_13

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->g:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$m;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$m;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_14

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->s:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$n;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$n;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_15

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ec;->j:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$o;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment$o;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d()V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 360
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ec;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0078

    const/4 v0, 0x0

    .line 47
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ec;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    .line 48
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->g:Lorg/mistergroup/shouldianswer/a/ec;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/ec;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 356
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    .line 357
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/protection/SettingsProtectionFragment;->d()V

    return-void
.end method
