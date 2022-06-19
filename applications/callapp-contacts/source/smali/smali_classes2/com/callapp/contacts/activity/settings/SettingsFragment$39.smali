.class Lcom/callapp/contacts/activity/settings/SettingsFragment$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/manager/sim/SimManager$DualSim;)V
    .locals 0

    .line 1603
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8

    .line 1607
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Settings"

    const-string v2, "Choose Sim to call"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1609
    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 1610
    invoke-static {}, Lcom/callapp/contacts/manager/sim/SimManager;->getSimIdAsIndexForDialog()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f1202a6

    .line 1612
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 1613
    iget-object v5, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->getOperator1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const v5, 0x7f1202a8

    invoke-static {v5, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    new-array v4, v2, [Ljava/lang/Object;

    .line 1614
    iget-object v5, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39;->a:Lcom/callapp/contacts/manager/sim/SimManager$DualSim;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/sim/SimManager$DualSim;->getOperator2()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const v3, 0x7f1202a9

    invoke-static {v3, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 1616
    iget-object v3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 1618
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v4}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;

    const v6, 0x7f1202aa

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/callapp/contacts/activity/settings/SettingsFragment$39$1;

    invoke-direct {v7, p0, p1, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$39$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$39;Landroid/preference/Preference;[Ljava/lang/String;)V

    invoke-direct {v5, v6, v1, v0, v7}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoice;-><init>(Ljava/lang/String;[Ljava/lang/Object;ILcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;)V

    invoke-virtual {v3, v4, v5}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return v2
.end method
