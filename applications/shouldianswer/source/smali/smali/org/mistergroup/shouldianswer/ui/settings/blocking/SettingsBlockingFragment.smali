.class public final Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "SettingsBlockingFragment.kt"


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/a/do;

.field private final c:I

.field private final d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    const/16 v0, 0x6f

    .line 28
    iput v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->c:I

    const/16 v0, 0x70

    .line 29
    iput v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->d:I

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->e:Z

    return p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->d()V

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->e()V

    return-void
.end method

.method private final d()V
    .locals 11

    const-string v0, "binding.checkPickAndHang"

    const/4 v1, 0x1

    .line 255
    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->e:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 258
    :try_start_0
    sget-object v4, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    sget-object v5, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v5

    sget-object v6, Lorg/mistergroup/shouldianswer/model/a;->b:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v5, v6, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v3

    .line 260
    :goto_0
    sget-object v6, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/ai;->f()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    if-le v6, v7, :cond_2

    move v8, v2

    :cond_2
    const v6, 0x7f100055

    .line 265
    invoke-virtual {p0, v6}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.activ\u2026protection_standard_info)"

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v8, :cond_3

    const v6, 0x7f100053

    .line 266
    invoke-virtual {p0, v6}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.activ\u2026dyn_protection_high_info)"

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    if-ne v8, v2, :cond_4

    const v6, 0x7f100054

    .line 267
    invoke-virtual {p0, v6}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.activ\u2026_dyn_protection_low_info)"

    invoke-static {v6, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    :cond_4
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "binding"

    if-nez v7, :cond_5

    :try_start_1
    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->m:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->h()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 270
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_6

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->l:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->i()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 271
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_7

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->n:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->j()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 272
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_8

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->k:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->k()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 273
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_9

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->j:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->l()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 274
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_a

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->q:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->m()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 275
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_b

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->p:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->n()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 276
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_c

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->r:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->o()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 277
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_d

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->o:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->p()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 278
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_e

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->s:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v10}, Lorg/mistergroup/shouldianswer/model/ai;->q()Z

    move-result v10

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 279
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_f

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->C:Landroid/widget/SeekBar;

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 280
    iget-object v7, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v7, :cond_10

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object v7, v7, Lorg/mistergroup/shouldianswer/a/do;->D:Landroidx/appcompat/widget/AppCompatTextView;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v6, :cond_11

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/do;->z:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    sget-object v7, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/ai;->t()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v6, :cond_12

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/do;->A:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    sget-object v7, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v7}, Lorg/mistergroup/shouldianswer/model/ai;->s()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v6, :cond_13

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/do;->y:Landroidx/appcompat/widget/SwitchCompat;

    const/16 v7, 0x8

    if-eqz v4, :cond_14

    move v8, v3

    goto :goto_2

    :cond_14
    move v8, v7

    :goto_2
    invoke-virtual {v6, v8}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    .line 285
    iget-object v6, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v6, :cond_15

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object v6, v6, Lorg/mistergroup/shouldianswer/a/do;->y:Landroidx/appcompat/widget/SwitchCompat;

    sget-object v8, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v8}, Lorg/mistergroup/shouldianswer/model/ai;->g()Z

    move-result v8

    invoke-virtual {v6, v8}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 288
    sget-object v6, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/ai;->K()Lorg/mistergroup/shouldianswer/model/ai$b;

    move-result-object v6

    .line 289
    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v8, :cond_16

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_16
    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/do;->t:Landroid/widget/RadioButton;

    const-string v10, "binding.checkDisallowCall"

    invoke-static {v8, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai$b;->a:Lorg/mistergroup/shouldianswer/model/ai$b;

    if-ne v6, v10, :cond_17

    move v10, v1

    goto :goto_3

    :cond_17
    move v10, v3

    :goto_3
    invoke-virtual {v8, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 290
    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v8, :cond_18

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_18
    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/do;->x:Landroid/widget/RadioButton;

    const-string v10, "binding.checkRejectCall"

    invoke-static {v8, v10}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lorg/mistergroup/shouldianswer/model/ai$b;->b:Lorg/mistergroup/shouldianswer/model/ai$b;

    if-ne v6, v10, :cond_19

    move v10, v1

    goto :goto_4

    :cond_19
    move v10, v3

    :goto_4
    invoke-virtual {v8, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 291
    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v8, :cond_1a

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1a
    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/do;->u:Landroid/widget/RadioButton;

    invoke-static {v8, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_1c

    if-eqz v5, :cond_1b

    goto :goto_5

    :cond_1b
    move v10, v3

    goto :goto_6

    :cond_1c
    :goto_5
    move v10, v1

    :goto_6
    invoke-virtual {v8, v10}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 292
    iget-object v8, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v8, :cond_1d

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1d
    iget-object v8, v8, Lorg/mistergroup/shouldianswer/a/do;->u:Landroid/widget/RadioButton;

    invoke-static {v8, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v0, :cond_1e

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1e
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/do;->u:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai$b;->c:Lorg/mistergroup/shouldianswer/model/ai$b;

    if-ne v6, v0, :cond_1f

    goto :goto_7

    :cond_1f
    move v1, v3

    :goto_7
    invoke-virtual {v8, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 293
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v0, :cond_20

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_20
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/do;->w:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.checkPickAndHangInfo"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_21

    move v1, v3

    goto :goto_8

    :cond_21
    move v1, v7

    :goto_8
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v0, :cond_22

    invoke-static {v9}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_22
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/do;->v:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.checkPickAndHang\u2026UseBecauseDefaultPhoneApp"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_23

    if-nez v5, :cond_23

    move v7, v3

    :cond_23
    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 298
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 301
    :goto_9
    iput-boolean v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->e:Z

    return-void
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->f()V

    return-void
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)Lorg/mistergroup/shouldianswer/ui/a;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p0

    return-object p0
.end method

.method private final e()V
    .locals 4

    .line 307
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 308
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->c:I

    invoke-virtual {p0, v0, v1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 311
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic f(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)Lorg/mistergroup/shouldianswer/a/do;
    .locals 1

    .line 26
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final f()V
    .locals 5

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 320
    new-instance v1, Landroidx/appcompat/app/d$a;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 322
    sget-object v2, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/model/ad;->e()Ljava/util/List;

    move-result-object v2

    .line 323
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mistergroup/shouldianswer/model/ad$b;

    .line 325
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/ad$b;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const v2, 0x7f100052

    .line 327
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/d$a;->a(I)Landroidx/appcompat/app/d$a;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 360
    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, [Ljava/lang/CharSequence;

    .line 327
    new-instance v4, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$x;

    invoke-direct {v4, v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$x;-><init>(Ljava/util/ArrayList;Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/d$a;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    .line 332
    invoke-virtual {v1}, Landroidx/appcompat/app/d$a;->b()Landroidx/appcompat/app/d;

    move-result-object v0

    const-string v1, "builder.create()"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Landroidx/appcompat/app/d;->show()V

    goto :goto_1

    .line 360
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 337
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->m:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$a;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$a;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->l:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$l;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$l;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->n:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$q;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$q;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->k:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$r;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$r;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->j:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$s;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$s;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_5

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->q:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$t;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$t;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_6

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->p:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$u;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$u;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_7

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->r:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$v;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$v;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_8

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->s:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$w;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$w;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_9

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->o:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$b;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_a

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->C:Landroid/widget/SeekBar;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$c;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_b

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->d:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$d;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_c

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->e:Landroid/widget/Button;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$e;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_d

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->A:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$f;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p2, v1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_e

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->z:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$g;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p2, v1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_f

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->x:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$h;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_10

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->t:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$i;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 168
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_11

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->u:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$j;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p1, :cond_12

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/do;->y:Landroidx/appcompat/widget/SwitchCompat;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$k;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$k;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 193
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p1, :cond_13

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/do;->f:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$m;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$m;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p1, :cond_14

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/do;->g:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$n;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$n;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p1, :cond_15

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/do;->h:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$o;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$o;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p1, :cond_16

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_16
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/do;->i:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$p;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment$p;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->d()V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 223
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/do;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 227
    invoke-super {p0, p1, p2, p3}, Lorg/mistergroup/shouldianswer/ui/b;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    .line 231
    :try_start_0
    iget v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->c:I

    if-ne p1, v1, :cond_7

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    if-eqz p3, :cond_7

    .line 232
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 233
    sget-object p2, Lorg/mistergroup/shouldianswer/model/ae;->a:Lorg/mistergroup/shouldianswer/model/ae;

    const-string p3, "uri"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/model/ae;->a(Landroid/net/Uri;)Lorg/mistergroup/shouldianswer/model/ac;

    move-result-object p1

    .line 234
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p3, "binding"

    if-nez p2, :cond_0

    :try_start_1
    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->A:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_2

    const-string p2, ""

    .line 236
    :cond_2
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 237
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_5
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ac;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p2, :cond_6

    invoke-static {p3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/do;->A:Lorg/mistergroup/shouldianswer/utils/BetterEditText;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lorg/mistergroup/shouldianswer/utils/BetterEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 244
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p3, 0x2

    invoke-static {p2, p1, v0, p3, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0002

    .line 343
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 344
    invoke-super {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/b;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0071

    const/4 v0, 0x0

    .line 38
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/do;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    .line 39
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->b:Lorg/mistergroup/shouldianswer/a/do;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/do;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0031

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->getActivity()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f100139

    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.help_\u2026handle_blocking_settings)"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 249
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    .line 250
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/blocking/SettingsBlockingFragment;->d()V

    return-void
.end method
