.class Lcom/callapp/contacts/activity/settings/SettingsFragment$38;
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

    .line 1505
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$38;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    .line 1508
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1509
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    const v1, 0x7f080581

    const p2, 0x7f120253

    .line 1510
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const p2, 0x7f120252

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const p2, 0x7f1203dd

    .line 1511
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/callapp/contacts/activity/settings/SettingsFragment$38$1;

    invoke-direct {v5, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$38$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$38;)V

    const p2, 0x7f120123

    .line 1517
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const p2, 0x7f0600f2

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    new-instance v8, Lcom/callapp/contacts/activity/settings/SettingsFragment$38$2;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$38$2;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$38;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Ljava/lang/String;ILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    const/4 p2, 0x0

    .line 1522
    invoke-virtual {p1, p2}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->setCancelable(Z)V

    .line 1524
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p2

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$38;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
