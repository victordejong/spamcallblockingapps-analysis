.class Lcom/callapp/contacts/activity/settings/SettingsFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/OutcomeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;->a(Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$12;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$12;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 628
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$12;->a:Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bc:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;->PERSONALIZED:Lcom/callapp/contacts/util/ads/AdUtils$ConsentStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->setChecked(Z)V

    return-void
.end method
