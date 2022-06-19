.class Lcom/callapp/contacts/activity/settings/SettingsFragment$56;
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

    .line 2046
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$56;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 2049
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$56;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/settings/PrivateModeDialog;

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$56;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog;-><init>(Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;)V

    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    const/4 p1, 0x1

    return p1
.end method
