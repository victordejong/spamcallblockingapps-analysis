.class public Lcom/telguarder/features/settings/SettingsProvider;
.super Ljava/lang/Object;
.source "SettingsProvider.java"


# static fields
.field private static mInstance:Lcom/telguarder/features/settings/SettingsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/settings/SettingsProvider;
    .locals 2

    const-class v0, Lcom/telguarder/features/settings/SettingsProvider;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/telguarder/features/settings/SettingsProvider;->mInstance:Lcom/telguarder/features/settings/SettingsProvider;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/telguarder/features/settings/SettingsProvider;

    invoke-direct {v1}, Lcom/telguarder/features/settings/SettingsProvider;-><init>()V

    sput-object v1, Lcom/telguarder/features/settings/SettingsProvider;->mInstance:Lcom/telguarder/features/settings/SettingsProvider;

    .line 25
    :cond_0
    sget-object v1, Lcom/telguarder/features/settings/SettingsProvider;->mInstance:Lcom/telguarder/features/settings/SettingsProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setSettingOptionsSwitcher(Landroidx/appcompat/widget/SwitchCompat;Z)V
    .locals 0

    .line 52
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method private setSettingOptionsTitle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getSettingsOptionView(Landroid/app/Activity;Lcom/telguarder/features/settings/SettingsOption;)Landroid/view/View;
    .locals 5

    const-string v0, "layout_inflater"

    .line 30
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0b0058

    const/4 v2, 0x0

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080249

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080248

    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/SwitchCompat;

    .line 35
    iget-boolean v3, p2, Lcom/telguarder/features/settings/SettingsOption;->disabled:Z

    if-eqz v3, :cond_0

    const v3, 0x7f050127

    .line 36
    invoke-static {p1, v3}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    .line 37
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    :cond_0
    const v3, 0x7f110212

    .line 39
    invoke-virtual {v2, p1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V

    .line 40
    iget-object p1, p2, Lcom/telguarder/features/settings/SettingsOption;->title:Ljava/lang/String;

    iget-object v3, p2, Lcom/telguarder/features/settings/SettingsOption;->comment:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v3}, Lcom/telguarder/features/settings/SettingsProvider;->setSettingOptionsTitle(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-boolean p1, p2, Lcom/telguarder/features/settings/SettingsOption;->isActive:Z

    invoke-direct {p0, v2, p1}, Lcom/telguarder/features/settings/SettingsProvider;->setSettingOptionsSwitcher(Landroidx/appcompat/widget/SwitchCompat;Z)V

    return-object v0
.end method
