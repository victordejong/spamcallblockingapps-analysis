.class Lcom/callapp/contacts/activity/settings/SettingsFragment$53;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;->i()V
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

    .line 1991
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$53;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 1994
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 1995
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$53;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/NotificationManager;->getOpenBirthdayChannelSettingsIntent()Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0xf

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x0

    return p1

    .line 1998
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->x:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
