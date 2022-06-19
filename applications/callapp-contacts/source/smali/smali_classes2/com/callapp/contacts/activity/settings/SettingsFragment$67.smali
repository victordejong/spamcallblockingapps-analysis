.class Lcom/callapp/contacts/activity/settings/SettingsFragment$67;
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
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;I)V
    .locals 0

    .line 2217
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$67;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$67;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .line 2220
    new-instance v6, Lcom/callapp/contacts/popup/contact/DialogEditText;

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    new-instance v5, Lcom/callapp/contacts/activity/settings/SettingsFragment$67$1;

    invoke-direct {v5, p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$67$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$67;Landroid/preference/Preference;)V

    const v1, 0x7f120579

    const-string v3, ""

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/popup/contact/DialogEditText;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V

    const p1, 0x7f1204ea

    .line 2230
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/callapp/contacts/popup/contact/DialogEditText;->setNeutralBtnText(Ljava/lang/String;)V

    .line 2231
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$67;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 2232
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bj:[Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    iget v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$67;->a:I

    aget-object p1, p1, v0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
