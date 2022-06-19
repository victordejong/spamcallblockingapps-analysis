.class Lcom/callapp/contacts/activity/settings/SettingsFragment$40$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment$40;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/SettingsFragment$40;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$40;)V
    .locals 0

    .line 1655
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1658
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$40;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$40;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/settings/SettingsFragment;->d:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "\n"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 1665
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f120335

    goto :goto_0

    :cond_0
    const v3, 0x7f120334

    :goto_0
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120338

    new-array v1, v1, [Ljava/lang/Object;

    .line 1666
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/CallAppApplication;->getVersion()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 1670
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getCacheFolder()Ljava/io/File;

    move-result-object v5

    const-string v6, "callapp_device_info.txt"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1671
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 1672
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getDeviceDataString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1675
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/i;

    .line 1676
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1679
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v7, "No purchases. billingResult:"

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " response code: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2000
    iget v8, p1, Lcom/android/billingclient/api/g;->a:I

    .line 1679
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", debug msg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    iget-object p1, p1, Lcom/android/billingclient/api/g;->b:Ljava/lang/String;

    .line 1679
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v3

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 1683
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 1684
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$40;

    iget-object p1, p1, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".fileprovider"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1686
    const-class p2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "unable to write file: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object p1, v3

    .line 1689
    :goto_3
    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$40;

    iget-object p2, p2, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iget-object p2, p2, Lcom/callapp/contacts/activity/settings/SettingsFragment;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-static {p2}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 1690
    iget-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$40$1;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment$40;

    iget-object p2, p2, Lcom/callapp/contacts/activity/settings/SettingsFragment$40;->a:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, v2, v1, v3, p1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic b(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener$-CC;->$default$b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;Ljava/util/List;)V

    return-void
.end method
