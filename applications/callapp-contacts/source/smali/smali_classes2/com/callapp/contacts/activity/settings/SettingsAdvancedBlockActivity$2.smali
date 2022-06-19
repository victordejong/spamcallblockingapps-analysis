.class Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;->b:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;->a:Lcom/callapp/contacts/widget/SettingsRowCompoundBtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;->b:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;

    invoke-static {p1}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/app/Activity;)V

    if-eqz p2, :cond_0

    .line 72
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;->b:Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity;

    new-instance v9, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const/4 v2, 0x0

    const v1, 0x7f120111

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f1204ea

    .line 73
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1201a9

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;

    invoke-direct {v6, p0, p2}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;Z)V

    new-instance v7, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$2;

    invoke-direct {v7, p0}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$2;-><init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;)V

    new-instance v8, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$3;

    invoke-direct {v8, p0}, Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2$3;-><init>(Lcom/callapp/contacts/activity/settings/SettingsAdvancedBlockActivity$2;)V

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    .line 72
    invoke-virtual {p1, v0, v9}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void

    .line 108
    :cond_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->bL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Block non contacts toggled. is enabled: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Advanced Block Settings"

    const-string v1, "Clicked"

    invoke-virtual {p1, v0, p2, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
