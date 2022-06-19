.class Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$2;->a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$2;->a:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;->a:Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;->setChecked(Z)V

    return-void
.end method
