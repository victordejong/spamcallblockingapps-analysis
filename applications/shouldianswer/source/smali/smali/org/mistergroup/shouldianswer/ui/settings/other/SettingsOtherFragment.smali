.class public final Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "SettingsOtherFragment.kt"


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/a/dy;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->c:Z

    return p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->d()V

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)Lorg/mistergroup/shouldianswer/ui/a;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p0

    return-object p0
.end method

.method private final d()V
    .locals 7

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->c:Z

    .line 123
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    const-string v2, "binding"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/dy;->n:Landroid/widget/LinearLayout;

    const-string v3, "binding.llUseDarkTheme"

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    const/16 v5, 0x1d

    const/4 v6, 0x0

    if-ge v3, v5, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/dy;->o:Landroid/widget/LinearLayout;

    const-string v3, "binding.llVisualTheme"

    invoke-static {v1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_3

    move v4, v6

    :cond_3
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->A()Lorg/mistergroup/shouldianswer/model/ai$a;

    move-result-object v1

    .line 126
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/dy;->k:Landroid/widget/RadioButton;

    const-string v4, "binding.checkThemeDefault"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai$a;->a:Lorg/mistergroup/shouldianswer/model/ai$a;

    if-ne v1, v4, :cond_5

    move v4, v0

    goto :goto_1

    :cond_5
    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 127
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/dy;->j:Landroid/widget/RadioButton;

    const-string v4, "binding.checkThemeDark"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai$a;->c:Lorg/mistergroup/shouldianswer/model/ai$a;

    if-ne v1, v4, :cond_7

    move v4, v0

    goto :goto_2

    :cond_7
    move v4, v6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 128
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez v3, :cond_8

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/dy;->l:Landroid/widget/RadioButton;

    const-string v4, "binding.checkThemeLight"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai$a;->b:Lorg/mistergroup/shouldianswer/model/ai$a;

    if-ne v1, v4, :cond_9

    goto :goto_3

    :cond_9
    move v0, v6

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/dy;->i:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.checkShowSimSelection"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/dy;->i:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->E()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez v0, :cond_c

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/dy;->h:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.checkIgnoreContactsInvisibleFlag"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez v0, :cond_d

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/dy;->m:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.checkUseDarkTheme"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->B()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez v0, :cond_e

    invoke-static {v2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/dy;->g:Landroidx/appcompat/widget/SwitchCompat;

    const-string v1, "binding.checkDontShowInCallPopup"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 137
    iput-boolean v6, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    const-string v0, "binding"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dy;->k:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$a;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$a;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dy;->l:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$c;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez p2, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dy;->j:Landroid/widget/RadioButton;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$d;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez p2, :cond_3

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dy;->i:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$e;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iget-object p2, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez p2, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p2, Lorg/mistergroup/shouldianswer/a/dy;->m:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$f;

    invoke-direct {v1, p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;Lorg/mistergroup/shouldianswer/ui/a;)V

    check-cast v1, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/dy;->h:Landroidx/appcompat/widget/SwitchCompat;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$g;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)V

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/dy;->g:Landroidx/appcompat/widget/SwitchCompat;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$h;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)V

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/dy;->f:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$i;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$i;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/dy;->d:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$j;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$j;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez p1, :cond_9

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/dy;->e:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$b;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->d()V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/dy;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0076

    const/4 v0, 0x0

    .line 27
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/dy;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    .line 28
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->b:Lorg/mistergroup/shouldianswer/a/dy;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/dy;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 143
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/b;->onResume()V

    .line 144
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/settings/other/SettingsOtherFragment;->d()V

    return-void
.end method
