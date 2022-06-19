.class public final Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;
.super Lorg/mistergroup/shouldianswer/ui/b;
.source "SettingsNotificationsFragment.kt"


# instance fields
.field private b:Lorg/mistergroup/shouldianswer/a/du;

.field private final c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->c:Z

    return p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)Lorg/mistergroup/shouldianswer/ui/a;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->a()Lorg/mistergroup/shouldianswer/ui/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lorg/mistergroup/shouldianswer/ui/a;Landroid/os/Bundle;)V
    .locals 3

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    const-string p2, "binding"

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->f:Landroidx/appcompat/widget/SwitchCompat;

    const-string v0, "binding.checkBlockNotify"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->r()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 35
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->f:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$a;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$a;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 42
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->g:Landroidx/appcompat/widget/SwitchCompat;

    const-string v0, "binding.checkPromoNotify"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 43
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->g:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$b;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$b;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->j:Landroidx/appcompat/widget/SwitchCompat;

    const-string v0, "binding.checkTTSAlert"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->C()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 51
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_5

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->j:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$c;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$c;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_6

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->k:Landroidx/appcompat/widget/SwitchCompat;

    const-string v0, "binding.checkTTSIncomingCall"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->D()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 58
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_7

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->k:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$d;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$d;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_8

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->h:Landroidx/appcompat/widget/SwitchCompat;

    const-string v0, "binding.checkShowAfterCall"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->y()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 66
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_9

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->h:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$e;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$e;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_a

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->i:Landroidx/appcompat/widget/SwitchCompat;

    const-string v0, "binding.checkShowAlertsForUnknownRated"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v1

    sget-object v2, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v1, v2, :cond_b

    const/4 v1, 0x0

    goto :goto_0

    :cond_b
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/SwitchCompat;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_c

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->i:Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->x()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 75
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_d

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->i:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$f;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$f;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)V

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_e

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->e:Landroid/widget/ImageButton;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$g;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$g;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_f

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/du;->d:Landroid/widget/ImageButton;

    new-instance p2, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$h;

    invoke-direct {p2, p0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment$h;-><init>(Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c()Landroidx/appcompat/widget/Toolbar;
    .locals 2

    .line 98
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/du;->c:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e0002

    .line 101
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    invoke-super {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/b;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0074

    const/4 v0, 0x0

    .line 28
    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/f;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "DataBindingUtil.inflate(\u2026agment, container, false)"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/du;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    .line 29
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->b:Lorg/mistergroup/shouldianswer/a/du;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/a/du;->d()Landroid/view/View;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0031

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/ac;->a:Lorg/mistergroup/shouldianswer/utils/ac;

    const-string v2, "it"

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f100190

    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/ui/settings/notifications/SettingsNotificationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.notifications_settings)"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/mistergroup/shouldianswer/utils/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
