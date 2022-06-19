.class Lcom/callapp/contacts/activity/settings/SettingsFragment$36$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/DialogMaxRecordsConfiguration$IRecordingToSave;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment$36;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/activity/settings/SettingsFragment$36;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$36;)V
    .locals 0

    .line 1409
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$36$1;->this$1:Lcom/callapp/contacts/activity/settings/SettingsFragment$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openPlanPageViaRecordDialog()V
    .locals 4

    .line 1418
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Contact List"

    const-string v2, "Open upgrade to professional from setting record dialog"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$36$1;->this$1:Lcom/callapp/contacts/activity/settings/SettingsFragment$36;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$36;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "PLAN_PAGE_SOURCE"

    const-string v2, "MaxRecords"

    .line 1420
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$36$1;->this$1:Lcom/callapp/contacts/activity/settings/SettingsFragment$36;

    iget-object v1, v1, Lcom/callapp/contacts/activity/settings/SettingsFragment$36;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public recordingToSave(Ljava/lang/String;I)V
    .locals 2

    .line 1412
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$36$1;->this$1:Lcom/callapp/contacts/activity/settings/SettingsFragment$36;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$36;->a:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1413
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Call recorders list"

    const-string v1, "SelectMaxRecords"

    invoke-virtual {p1, v0, v1, p2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
