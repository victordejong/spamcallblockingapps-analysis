.class Lcom/callapp/contacts/activity/settings/SettingsFragment$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;->d(Landroid/preference/Preference;Ljava/lang/Object;)Z
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

    .line 990
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$17;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 995
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$17;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-static {v5}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c(Lcom/callapp/contacts/activity/settings/SettingsFragment;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    .line 996
    iget-object v1, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$17;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;ZLcom/callapp/contacts/manager/popup/ActivityResult;)V

    goto/16 :goto_3

    .line 998
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Click "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    const-string v1, "yes"

    goto :goto_0

    :cond_1
    const-string v1, "no"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Settings"

    const-string v5, "Gave Permission/ Set Callapp as default call screen"

    invoke-virtual {v3, v4, v5, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v6

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v1

    const-string v3, "true"

    const-string v4, "false"

    if-eqz v1, :cond_2

    move-object v9, v3

    goto :goto_1

    :cond_2
    move-object v9, v4

    :goto_1
    const-wide/16 v10, 0x0

    const-string v7, "Permissions"

    const-string v8, "Default dailer from settings"

    invoke-virtual/range {v6 .. v11}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 1002
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    const-string v4, "Permissions"

    const-string v5, "Default dialer"

    invoke-virtual {v1, v4, v5, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->g()V

    .line 1004
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->e()V

    .line 1005
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v1

    .line 1006
    iget-object v3, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$17;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-static {v3, v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->c(Lcom/callapp/contacts/activity/settings/SettingsFragment;Z)V

    if-eqz v1, :cond_4

    .line 1007
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1008
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v3, 0x1

    .line 1039
    invoke-virtual {v1, v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1009
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Popup shown from Settings "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->fH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->fH:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v8, v1

    new-array v10, v2, [Ljava/lang/String;

    const-string v5, "Permissions"

    const-string v6, "Draw On Screen"

    invoke-virtual/range {v4 .. v10}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 1010
    new-instance v1, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v2, 0x7f1203ab

    .line 1011
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v2, 0x7f1203aa

    .line 1012
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v2, 0x7f1204ea

    .line 1013
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v2, 0x7f1204c5

    .line 1014
    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v2, Lcom/callapp/contacts/activity/settings/SettingsFragment$17$1;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$17$1;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$17;)V

    new-instance v3, Lcom/callapp/contacts/activity/settings/SettingsFragment$17$2;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$17$2;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$17;)V

    move-object v11, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v11 .. v17}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V

    .line 1033
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v2

    iget-object v3, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$17;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 1036
    :cond_4
    :goto_3
    iget-object v1, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$17;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->d(Lcom/callapp/contacts/activity/settings/SettingsFragment;)J

    return-void
.end method
