.class Lcom/callapp/contacts/activity/settings/SettingsFragment$30;
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
.field final synthetic a:Landroid/preference/Preference;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Landroid/preference/Preference;)V
    .locals 0

    .line 1303
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$30;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$30;->a:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .line 1306
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$30;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$30$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$30$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$30;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    const/4 p1, 0x1

    return p1
.end method
