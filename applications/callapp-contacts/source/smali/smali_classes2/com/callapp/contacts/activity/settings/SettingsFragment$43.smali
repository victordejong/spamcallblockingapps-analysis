.class Lcom/callapp/contacts/activity/settings/SettingsFragment$43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V
    .locals 0

    .line 1730
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$43;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 1734
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1735
    invoke-static {v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 1736
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Settings"

    const-string v2, "Changed t9 language"

    const-string v3, "Clicked"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    invoke-static {p1, p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 1738
    invoke-static {}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a()V

    .line 1739
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$43;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V

    const/4 p1, 0x1

    return p1
.end method
