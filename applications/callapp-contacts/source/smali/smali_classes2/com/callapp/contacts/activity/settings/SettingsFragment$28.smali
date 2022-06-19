.class Lcom/callapp/contacts/activity/settings/SettingsFragment$28;
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
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;)V
    .locals 0

    .line 1272
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$28;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    .line 1274
    invoke-static {}, Lcom/callapp/contacts/recorder/CallRecorderManager;->get()Lcom/callapp/contacts/recorder/CallRecorderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->isTermsAccepted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1275
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$28;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/activity/records/CallRecordsActivity;->a(Landroid/app/Activity;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
