.class Lcom/callapp/contacts/activity/settings/SettingsFragment$65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 2177
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$65;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$65;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .line 2181
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 2182
    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    .line 2183
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$65;->a:Ljava/lang/String;

    const-string v1, "Settings"

    const-string v2, "Clicked"

    invoke-virtual {p1, v1, v0, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
