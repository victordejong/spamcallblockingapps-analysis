.class Lcom/callapp/contacts/activity/settings/SettingsFragment$11;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/settings/SettingsFragment;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

.field final synthetic b:Lcom/callapp/contacts/activity/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/SettingsFragment;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private synthetic a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 8

    .line 586
    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->dismiss()V

    .line 587
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v0, 0x7f120227

    .line 588
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f1204b6

    .line 589
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1204ea

    .line 590
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$HujLXzCBsoRHa6vEyi2Qeghhg90;->INSTANCE:Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$HujLXzCBsoRHa6vEyi2Qeghhg90;

    sget-object v6, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$zCTMfC7w1ss50iFth3hp7rRWGqM;->INSTANCE:Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$zCTMfC7w1ss50iFth3hp7rRWGqM;

    new-instance v7, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener;

    invoke-direct {v7}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener;-><init>()V

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setCancelable(Z)V

    .line 599
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method private static synthetic b(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private synthetic b(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 8

    .line 567
    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->dismiss()V

    .line 568
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;

    const v0, 0x7f1207eb

    .line 569
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f1207ec

    .line 570
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1204ea

    .line 571
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$ESHK3yE67E4ChfrHqj3JoINqh2Q;->INSTANCE:Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$ESHK3yE67E4ChfrHqj3JoINqh2Q;

    sget-object v6, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$V_b8tAqqfBcmQBZED3jajbYPOnk;->INSTANCE:Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$V_b8tAqqfBcmQBZED3jajbYPOnk;

    new-instance v7, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener;

    invoke-direct {v7}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener;-><init>()V

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogSimpleListener;)V

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/DialogSimpleMessage;->setCancelable(Z)V

    .line 580
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method

.method private static synthetic c(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private synthetic c(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 11

    .line 514
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Settings"

    const-string v2, "Delete Account"

    const-string v3, "Account deleted from server, trying to delete cache"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 517
    :try_start_0
    iget-object v3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 518
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/CallAppApplication;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "shared_prefs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 520
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 522
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 523
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 528
    :catch_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_2
    nop

    .line 536
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    .line 537
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 539
    sget-object v4, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$PXd-vrX53wzhbCMBUf02y0ZlBak;->INSTANCE:Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$PXd-vrX53wzhbCMBUf02y0ZlBak;

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    goto :goto_1

    .line 542
    :cond_1
    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 544
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v3

    invoke-virtual {v3}, Lio/objectbox/BoxStore;->close()V

    .line 545
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v3

    .line 1624
    iget-boolean v4, v3, Lio/objectbox/BoxStore;->m:Z

    if-eqz v4, :cond_3

    .line 1627
    iget-object v3, v3, Lio/objectbox/BoxStore;->a:Ljava/io/File;

    invoke-static {v3}, Lio/objectbox/BoxStore;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 545
    iget-object v3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {v3}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 546
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "Successfully deleted account from device, closing app"

    invoke-virtual {v3, v1, v2, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 548
    :cond_2
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 549
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->set(Ljava/lang/Object;)V

    .line 550
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    const-string v4, "Unable to delete cache, removed progammatically"

    invoke-virtual {v3, v1, v2, v4}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :goto_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 554
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.facebook.AccessTokenManager.SharedPreferences"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 556
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 559
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$sQzQq6pC41V5-c3bdAFbRrFxAnk;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$sQzQq6pC41V5-c3bdAFbRrFxAnk;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$11;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1625
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Store must be closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic d(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method private synthetic d(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 2

    .line 560
    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->dismiss()V

    .line 561
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_DEACTIVATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, -0x10f447

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 562
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->b:Lcom/callapp/contacts/activity/settings/SettingsFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic lambda$ESHK3yE67E4ChfrHqj3JoINqh2Q(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$GV172pV6BVD8dFjZP0ev4NX3YrA(Lcom/callapp/contacts/activity/settings/SettingsFragment$11;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->b(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method

.method public static synthetic lambda$HujLXzCBsoRHa6vEyi2Qeghhg90(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$Hz-ilksRnkcEX7TtoQ0KVFrN6zg(Lcom/callapp/contacts/activity/settings/SettingsFragment$11;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method

.method public static synthetic lambda$PXd-vrX53wzhbCMBUf02y0ZlBak(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$V_b8tAqqfBcmQBZED3jajbYPOnk(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic lambda$We63Lt39UFVCumvOgMes1u2oO5s(Lcom/callapp/contacts/activity/settings/SettingsFragment$11;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->c(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method

.method public static synthetic lambda$sQzQq6pC41V5-c3bdAFbRrFxAnk(Lcom/callapp/contacts/activity/settings/SettingsFragment$11;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->d(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    return-void
.end method

.method public static synthetic lambda$zCTMfC7w1ss50iFth3hp7rRWGqM(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 510
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppServerHost()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v0

    const-string v1, "Delete Account"

    const-string v2, "Settings"

    if-eqz v0, :cond_1

    .line 511
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->d()I

    move-result v0

    .line 512
    sget-object v3, Lcom/callapp/common/api/ReturnCode;->OK:Lcom/callapp/common/api/ReturnCode;

    iget v3, v3, Lcom/callapp/common/api/ReturnCode;->statusCode:I

    if-ne v0, v3, :cond_0

    .line 513
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    new-instance v2, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$We63Lt39UFVCumvOgMes1u2oO5s;

    invoke-direct {v2, p0, v1}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$We63Lt39UFVCumvOgMes1u2oO5s;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$11;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 566
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    new-instance v5, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$GV172pV6BVD8dFjZP0ev4NX3YrA;

    invoke-direct {v5, p0, v4}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$GV172pV6BVD8dFjZP0ev4NX3YrA;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$11;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    invoke-virtual {v3, v5}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 582
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Account deletion failed because of unknown error. StatusCode: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v1, v0}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 585
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/activity/settings/SettingsFragment$11;->a:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    new-instance v4, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$Hz-ilksRnkcEX7TtoQ0KVFrN6zg;

    invoke-direct {v4, p0, v3}, Lcom/callapp/contacts/activity/settings/-$$Lambda$SettingsFragment$11$Hz-ilksRnkcEX7TtoQ0KVFrN6zg;-><init>(Lcom/callapp/contacts/activity/settings/SettingsFragment$11;Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    invoke-virtual {v0, v4}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 601
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v3, "Account deletion failed because server is not reachable"

    invoke-virtual {v0, v2, v1, v3}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
