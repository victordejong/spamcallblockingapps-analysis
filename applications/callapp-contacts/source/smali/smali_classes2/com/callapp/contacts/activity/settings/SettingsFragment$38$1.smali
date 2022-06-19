.class Lcom/callapp/contacts/activity/settings/SettingsFragment$38$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment$38;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsFragment$38;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$38;)V
    .locals 0

    .line 1511
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$38$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 2

    .line 1514
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1515
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$38$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$38;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$38;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
