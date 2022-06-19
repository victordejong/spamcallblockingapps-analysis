.class Lcom/callapp/contacts/activity/settings/SettingsFragment$39$1;
.super Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment$39;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/settings/SettingsFragment$39;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$39;Landroid/preference/Preference;[Ljava/lang/String;)V
    .locals 0

    .line 1619
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39$1;->c:Lcom/callapp/contacts/activity/settings/SettingsFragment$39;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39$1;->a:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39$1;->b:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListenerImpel;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1631
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1628
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_2:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1625
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bR:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->SIM_1:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 1635
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39$1;->a:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$39$1;->b:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
