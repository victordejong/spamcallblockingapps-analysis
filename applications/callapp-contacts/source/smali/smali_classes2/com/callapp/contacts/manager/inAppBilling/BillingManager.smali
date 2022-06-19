.class public Lcom/callapp/contacts/manager/inAppBilling/BillingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/android/billingclient/api/c;

.field private c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    sput-object v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b:Ljava/util/HashMap;

    const-string v1, "2016onetime"

    const-string v2, "2016onetime_05_2020"

    const-string v3, "onetime_loyal"

    const-string v4, "onetime_loyal_05_2020"

    const-string v5, "onetime_10"

    const-string v6, "onetime_10_05_2020"

    const-string v7, "onetime_12"

    const-string v8, "onetime_12_05_2020"

    const-string v9, "premium_recommended"

    const-string v10, "premium_recommended_05_2020"

    const-string v11, "onetime_invites"

    const-string v12, "onetime_gold_dynamic_no_ads"

    const-string v13, "onetime_silver_dynamic_no_ads"

    const-string v14, "onetime_bronze_dynamic_no_ads"

    const-string v15, "onetime_gold_dynamic_all_included"

    const-string v16, "onetime_silver_dynamic_all_included"

    const-string v17, "onetime_bronze_dynamic_all_included"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "7day_default"

    const-string v4, "callapp_premium_2"

    const-string v5, "callapp_premium"

    const-string v6, "callapp_premium_2_05_2020"

    const-string v7, "7day_loyal"

    const-string v8, "monthly_loyal"

    const-string v9, "monthly_loyal_05_2020"

    const-string v10, "ad_free_1.5"

    const-string v11, "ad_free_3.5"

    const-string v12, "ad_free_4.5"

    const-string v13, "onboarding_basic"

    const-string v14, "onboarding_system"

    const-string v15, "monthly_01"

    const-string v16, "monthly_01_05_2020"

    const-string v17, "monthly_02"

    const-string v18, "monthly_02_05_2020"

    const-string v19, "monthly_03"

    const-string v20, "monthly_03_05_2020"

    const-string/jumbo v21, "yearly_01"

    const-string/jumbo v22, "yearly_02"

    const-string/jumbo v23, "yearly_03"

    const-string v24, "monthly_recommended"

    const-string v25, "monthly_recommended_05_2020"

    const-string/jumbo v26, "yearly_recommended"

    const-string/jumbo v27, "yearly_recommended_05_2020"

    const-string v28, "monthly_gold_3.00_no_ads"

    const-string v29, "monthly_silver_2.00_no_ads"

    const-string v30, "monthly_bronze_1.00_no_ads"

    const-string/jumbo v31, "yearly_gold_16.00_no_ads"

    const-string/jumbo v32, "yearly_silver_12.00_no_ads"

    const-string/jumbo v33, "yearly_bronze_8.00_no_ads"

    const-string v34, "monthly_gold_5.00_all_included"

    const-string v35, "monthly_silver_4.00_all_included"

    const-string v36, "monthly_bronze_3.00_all_included"

    const-string/jumbo v37, "yearly_gold_18.00_all_included"

    const-string/jumbo v38, "yearly_silver_14.00_all_included"

    const-string/jumbo v39, "yearly_bronze_10.00_all_included"

    .line 170
    filled-new-array/range {v3 .. v39}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "subs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V
    .locals 5

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->e:Ljava/lang/String;

    .line 211
    monitor-enter v0

    .line 212
    :try_start_0
    iput-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    .line 213
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v2, Lcom/android/billingclient/api/c$a;

    .line 1001
    invoke-direct {v2, v0, v1}, Lcom/android/billingclient/api/c$a;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/ah;)V

    const/4 v0, 0x1

    .line 2000
    iput-boolean v0, v2, Lcom/android/billingclient/api/c$a;->a:Z

    .line 3000
    iput-object p0, v2, Lcom/android/billingclient/api/c$a;->c:Lcom/android/billingclient/api/j;

    .line 215
    iget-object v3, v2, Lcom/android/billingclient/api/c$a;->b:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 3001
    iget-object v4, v2, Lcom/android/billingclient/api/c$a;->c:Lcom/android/billingclient/api/j;

    if-eqz v4, :cond_1

    .line 3002
    iget-boolean v2, v2, Lcom/android/billingclient/api/c$a;->a:Z

    if-eqz v2, :cond_0

    .line 3003
    new-instance v2, Lcom/android/billingclient/api/d;

    .line 3004
    invoke-direct {v2, v1, v0, v3, v4}, Lcom/android/billingclient/api/d;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lcom/android/billingclient/api/j;)V

    .line 215
    iput-object v2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a:Lcom/android/billingclient/api/c;

    .line 216
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$1;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$1;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void

    .line 3002
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Support for pending purchases must be enabled. Enable this by calling \'enablePendingPurchases()\' on BillingClientBuilder."

    .line 3003
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3001
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please provide a valid listener for purchases updates."

    .line 3002
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please provide a valid Context."

    .line 3001
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 213
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Ljava/lang/Object;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 524
    sget-object v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 359
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/lang/Runnable;)V

    .line 392
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 396
    invoke-static {}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->isPremiumRewarded()Z

    move-result v0

    .line 401
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->eb:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 404
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 405
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/billingclient/api/i;

    .line 406
    iget-object v9, v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->e:Ljava/lang/String;

    invoke-static {v9}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 409
    iget-object v9, v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->d:Ljava/lang/Object;

    monitor-enter v9

    .line 410
    :try_start_0
    iget-object v0, v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    move-object/from16 v10, p1

    invoke-interface {v0, v10}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;->b(Ljava/util/List;)V

    .line 413
    :cond_2
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move-object/from16 v10, p1

    .line 416
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "onetime_10"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "onetime_12"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 417
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "onetime_10_05_2020"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "onetime_12_05_2020"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 418
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "onetime_gold_dynamic_all_included"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 419
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "onetime_silver_dynamic_all_included"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 420
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "onetime_bronze_dynamic_all_included"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 421
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "monthly_gold_5.00_all_included"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 422
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "monthly_silver_4.00_all_included"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 423
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "monthly_bronze_3.00_all_included"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 424
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "yearly_gold_18.00_all_included"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 425
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "yearly_silver_14.00_all_included"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 426
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "yearly_bronze_10.00_all_included"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 429
    :cond_4
    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->cO:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    const/4 v6, 0x1

    :cond_5
    if-nez v5, :cond_6

    .line 431
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "backup_monthly"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v5, 0x1

    .line 434
    :cond_6
    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v9

    const-string v11, "monthly_03"

    const-string/jumbo v12, "yearly_03"

    const-string/jumbo v13, "yearly_recommended"

    const-string v14, "monthly_recommended"

    const-string v15, "premium_recommended"

    const-string v16, "premium_recommended"

    const-string v17, "monthly_03_05_2020"

    const-string/jumbo v18, "yearly_recommended_05_2020"

    const-string v19, "monthly_recommended_05_2020"

    const-string v20, "premium_recommended_05_2020"

    const-string v21, "callapp_premium_2_05_2020"

    const-string v22, "callapp_premium_2"

    const-string v23, "2016onetime"

    const-string v24, "2016onetime_05_2020"

    filled-new-array/range {v11 .. v24}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/callapp/framework/util/StringUtils;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v7, 0x1

    :cond_7
    if-nez v0, :cond_9

    const-string v9, "subs"

    .line 441
    invoke-static {v9}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v11, -0x1

    if-ne v9, v11, :cond_8

    const-string v9, "inapp"

    invoke-static {v9}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-eq v8, v11, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    if-nez v6, :cond_a

    if-eqz v7, :cond_1

    :cond_a
    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    move v3, v5

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 452
    iput-object v2, v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->e:Ljava/lang/String;

    .line 454
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->hQ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 455
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 456
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cK:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 457
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cL:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 459
    const-class v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "User is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "PREMIUM"

    goto :goto_3

    :cond_d
    const-string v3, "NOT PREMIUM"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)Lcom/android/billingclient/api/c;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a:Lcom/android/billingclient/api/c;

    return-object p0
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 463
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/i;

    .line 464
    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "customization_set"

    invoke-static {v2, v3}, Lcom/callapp/framework/util/StringUtils;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {v1}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v1

    .line 4472
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->cW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4473
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->cW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 4475
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4477
    :goto_1
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->get()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    move-result-object v3

    .line 5197
    iput-object v1, v3, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a:Ljava/lang/String;

    .line 4477
    new-instance v1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$4;

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$4;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/ArrayList;)V

    .line 5207
    invoke-virtual {v3, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V

    .line 4497
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static isBillingAvailable()Z
    .locals 5

    .line 135
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "storesShowBillingWithoutPlay"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ","

    .line 137
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->k(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    array-length v1, v0

    if-lez v1, :cond_1

    .line 139
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const v4, 0x7f120688

    .line 140
    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/GooglePlayUtils;->isGooglePlayServicesAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 571
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$7;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$7;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;)V

    .line 584
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 528
    iput-object p2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->e:Ljava/lang/String;

    .line 530
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$6;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 567
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 230
    const-class v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz p1, :cond_b

    .line 232
    iget-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    if-eqz v2, :cond_0

    .line 234
    invoke-interface {v2, p1, p2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    .line 236
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 240
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/i;

    .line 241
    invoke-virtual {v4}, Lcom/android/billingclient/api/i;->d()I

    move-result v5

    if-eq v5, v3, :cond_2

    invoke-virtual {v4}, Lcom/android/billingclient/api/i;->d()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "onPurchasesUpdated() got PENDING purchase "

    .line 244
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_2
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4000
    :cond_3
    iget p1, p1, Lcom/android/billingclient/api/g;->a:I

    if-nez p1, :cond_9

    .line 251
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/i;

    .line 253
    invoke-virtual {v0}, Lcom/android/billingclient/api/i;->e()Z

    move-result v2

    if-nez v2, :cond_4

    .line 254
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 258
    :cond_5
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 259
    new-instance p2, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$2;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)V

    invoke-direct {p0, p2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/Runnable;)V

    .line 314
    :cond_6
    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/util/List;)V

    .line 316
    iget-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 317
    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b(Ljava/util/List;)V

    .line 320
    :cond_7
    iget-object p2, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->d:Ljava/lang/Object;

    monitor-enter p2

    .line 321
    :try_start_1
    iget-object p1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    if-eqz p1, :cond_8

    .line 322
    invoke-interface {p1, v1}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;->a(Ljava/util/List;)V

    .line 324
    :cond_8
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    if-ne p1, v3, :cond_a

    const-string p1, "onPurchasesUpdated() \u2013 user cancelled the purchase flow \u2013 skipping"

    .line 326
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_a
    const-string p2, "onPurchasesUpdated() got unknown resultCode: "

    .line 328
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    .line 236
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_b
    const-string p1, "onPurchasesUpdated() got null billingResult"

    .line 331
    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/billingclient/api/m;",
            ")V"
        }
    .end annotation

    .line 503
    new-instance v0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager$5;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/m;)V

    .line 520
    invoke-direct {p0, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a:Lcom/android/billingclient/api/c;

    invoke-virtual {v0}, Lcom/android/billingclient/api/c;->b()V

    .line 622
    iget-object v0, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 623
    :try_start_0
    iput-object v1, p0, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->c:Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;

    .line 624
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
