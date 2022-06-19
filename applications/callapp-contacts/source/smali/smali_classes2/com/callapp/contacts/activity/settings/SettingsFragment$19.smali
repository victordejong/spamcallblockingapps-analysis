.class Lcom/callapp/contacts/activity/settings/SettingsFragment$19;
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

    .line 1087
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$19;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 1090
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1091
    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$19;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "postCallDuration"

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p2

    .line 1092
    invoke-virtual {p2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method
