.class public Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;
.super Lcom/callapp/contacts/activity/base/BaseTopBarActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/widget/TopBarFragment$TopBarEvents;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/widget/TopBarFragment$TopBarIconStates;)V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;->finish()V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0043

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 40
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Z)V

    const p1, 0x7f120092

    .line 42
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "Advanced block screen"

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->b(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const v0, 0x7f060026

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    const v0, 0x7f0a0785

    .line 47
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0784

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;

    .line 49
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f1203d5

    .line 50
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->setTitle(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->setChecked(Z)V

    .line 52
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;)V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0789

    .line 62
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0788

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;

    .line 64
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f1204da

    .line 65
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->setTitle(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->setChecked(Z)V

    .line 67
    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;

    invoke-direct {v0, p0, v1}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;-><init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;)V

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a0787

    .line 114
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0786

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;

    .line 117
    invoke-static {}, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->values()[Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    move-result-object v2

    .line 118
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 119
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 120
    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_0
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->bM:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->ordinal()I

    move-result v4

    .line 125
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const p1, 0x7f120090

    .line 126
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->setTitle(Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, v3, p1}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->setChoices(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance p1, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$3;

    invoke-direct {p1, p0, v2}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$3;-><init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;[Lcom/callapp/contacts/manager/BlockManager$BlockMethod;)V

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->setListener(Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    .line 138
    new-instance p1, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$4;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$4;-><init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;)V

    invoke-virtual {v1, p1}, Lcom/callapp/contacts/widget/SettingsRowSelectSingleChoice;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 150
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onDestroy()V

    .line 151
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Screen"

    const-string v2, "ScreenClose"

    const-string v3, "Advanced block screen"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
