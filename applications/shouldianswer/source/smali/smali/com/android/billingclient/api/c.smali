.class Lcom/android/billingclient/api/c;
.super Lcom/android/billingclient/api/b;
.source "BillingClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/c$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/android/billingclient/api/a;

.field private final e:Landroid/content/Context;

.field private f:Lcom/android/vending/billing/IInAppBillingService;

.field private g:Landroid/content/ServiceConnection;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/concurrent/ExecutorService;

.field private final m:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/g;)V
    .locals 2

    .line 156
    invoke-direct {p0}, Lcom/android/billingclient/api/b;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/android/billingclient/api/c;->a:I

    .line 79
    iput v0, p0, Lcom/android/billingclient/api/c;->b:I

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/c;->c:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/android/billingclient/api/BillingClientImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/BillingClientImpl$1;-><init>(Lcom/android/billingclient/api/c;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/billingclient/api/c;->m:Landroid/os/ResultReceiver;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    .line 158
    new-instance p1, Lcom/android/billingclient/api/a;

    iget-object v0, p0, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/billingclient/api/a;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/g;)V

    iput-object p1, p0, Lcom/android/billingclient/api/c;->d:Lcom/android/billingclient/api/a;

    return-void
.end method

.method private a(I)I
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/android/billingclient/api/c;->d:Lcom/android/billingclient/api/a;

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->b()Lcom/android/billingclient/api/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/g;->a(ILjava/util/List;)V

    return p1
.end method

.method static synthetic a(Lcom/android/billingclient/api/c;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/billingclient/api/c;->a:I

    return p1
.end method

.method private a(Lcom/android/billingclient/api/e;)Landroid/os/Bundle;
    .locals 4

    .line 669
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 671
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->g()I

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->g()I

    move-result v1

    const-string v2, "prorationMode"

    .line 673
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 678
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accountId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->f()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const-string v1, "vr"

    .line 681
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 683
    :cond_2
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 684
    new-instance v1, Ljava/util/ArrayList;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 686
    invoke-virtual {p1}, Lcom/android/billingclient/api/e;->d()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "skusToReplace"

    .line 684
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    return-object v0
.end method

.method static synthetic a(Lcom/android/billingclient/api/c;)Lcom/android/billingclient/api/a;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/billingclient/api/c;->d:Lcom/android/billingclient/api/a;

    return-object p0
.end method

.method private a(Ljava/lang/String;Z)Lcom/android/billingclient/api/f$a;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v8, p2

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Querying owned items, item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; history: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "BillingClient"

    invoke-static {v9, v2}, Lcom/android/billingclient/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    move-object v6, v11

    :cond_0
    if-eqz v8, :cond_2

    .line 821
    :try_start_0
    iget-boolean v2, v1, Lcom/android/billingclient/api/c;->j:Z

    if-nez v2, :cond_1

    const-string v0, "getPurchaseHistory is not supported on current device"

    .line 822
    invoke-static {v9, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    new-instance v0, Lcom/android/billingclient/api/f$a;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v11}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object v0

    .line 826
    :cond_1
    iget-object v2, v1, Lcom/android/billingclient/api/c;->f:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x6

    iget-object v4, v1, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    .line 829
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v5, p1

    .line 827
    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 834
    :cond_2
    iget-object v2, v1, Lcom/android/billingclient/api/c;->f:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    .line 836
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 835
    invoke-interface {v2, v3, v4, v0, v6}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v3, 0x6

    if-nez v2, :cond_3

    const-string v0, "queryPurchases got null owned items list"

    .line 845
    invoke-static {v9, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    new-instance v0, Lcom/android/billingclient/api/f$a;

    invoke-direct {v0, v3, v11}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object v0

    .line 849
    :cond_3
    invoke-static {v2, v9}, Lcom/android/billingclient/a/a;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPurchases() failed. Response code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    new-instance v0, Lcom/android/billingclient/api/f$a;

    invoke-direct {v0, v4, v11}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_4
    const-string v4, "INAPP_PURCHASE_ITEM_LIST"

    .line 856
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "INAPP_PURCHASE_DATA_LIST"

    .line 857
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "INAPP_DATA_SIGNATURE_LIST"

    .line 858
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_2

    .line 865
    :cond_5
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 867
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 869
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v4, :cond_6

    const-string v0, "Bundle returned from getPurchases() contains null SKUs list."

    .line 872
    invoke-static {v9, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    new-instance v0, Lcom/android/billingclient/api/f$a;

    invoke-direct {v0, v3, v11}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_6
    if-nez v5, :cond_7

    const-string v0, "Bundle returned from getPurchases() contains null purchases list."

    .line 877
    invoke-static {v9, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    new-instance v0, Lcom/android/billingclient/api/f$a;

    invoke-direct {v0, v3, v11}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_7
    if-nez v6, :cond_8

    const-string v0, "Bundle returned from getPurchases() contains null signatures list."

    .line 883
    invoke-static {v9, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    new-instance v0, Lcom/android/billingclient/api/f$a;

    invoke-direct {v0, v3, v11}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_8
    const/4 v12, 0x0

    .line 888
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_a

    .line 889
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 890
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 891
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 893
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sku is owned: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/billingclient/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :try_start_1
    new-instance v3, Lcom/android/billingclient/api/f;

    invoke-direct {v3, v13, v14}, Lcom/android/billingclient/api/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 902
    invoke-virtual {v3}, Lcom/android/billingclient/api/f;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "BUG: empty/null token!"

    .line 903
    invoke-static {v9, v7}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    :cond_9
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x6

    goto :goto_1

    :catch_0
    move-exception v0

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got an exception trying to decode the purchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    new-instance v0, Lcom/android/billingclient/api/f$a;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v11}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_a
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    .line 909
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuation token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/billingclient/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    new-instance v0, Lcom/android/billingclient/api/f$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v10}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object v0

    :cond_b
    :goto_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    .line 859
    invoke-static {v9, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v0, Lcom/android/billingclient/api/f$a;

    const/4 v2, 0x6

    invoke-direct {v0, v2, v11}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object v0

    :catch_1
    move-exception v0

    .line 839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got exception trying to get purchases: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; try to reconnect"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    new-instance v0, Lcom/android/billingclient/api/f$a;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v11}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method static synthetic a(Lcom/android/billingclient/api/c;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/billingclient/api/c;->f:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic a(Lcom/android/billingclient/api/c;Ljava/lang/Runnable;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/android/billingclient/api/c;->l:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 695
    sget v0, Lcom/android/billingclient/a/a;->a:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/c;->l:Ljava/util/concurrent/ExecutorService;

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/c;->l:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/android/billingclient/api/c;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/android/billingclient/api/c;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    return-object p0
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/android/billingclient/api/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/android/billingclient/api/c;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/android/billingclient/api/c;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/billingclient/api/c;->f:Lcom/android/vending/billing/IInAppBillingService;

    return-object p0
.end method

.method static synthetic c(Lcom/android/billingclient/api/c;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->k:Z

    return p1
.end method

.method static synthetic d(Lcom/android/billingclient/api/c;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/android/billingclient/api/c;->j:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/android/billingclient/api/e;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "BUY_INTENT"

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/c;->a()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    .line 377
    invoke-direct {v0, v4}, Lcom/android/billingclient/api/c;->a(I)I

    move-result v1

    return v1

    .line 380
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/e;->b()Ljava/lang/String;

    move-result-object v9

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/e;->a()Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/e;->c()Lcom/android/billingclient/api/h;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v17, 0x0

    if-eqz v5, :cond_1

    .line 383
    invoke-virtual {v5}, Lcom/android/billingclient/api/h;->d()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move/from16 v7, v17

    :goto_0
    const/4 v8, 0x5

    const-string v15, "BillingClient"

    if-nez v3, :cond_2

    const-string v1, "Please fix the input params. SKU can\'t be null."

    .line 387
    invoke-static {v15, v1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-direct {v0, v8}, Lcom/android/billingclient/api/c;->a(I)I

    move-result v1

    return v1

    :cond_2
    if-nez v9, :cond_3

    const-string v1, "Please fix the input params. SkuType can\'t be null."

    .line 392
    invoke-static {v15, v1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-direct {v0, v8}, Lcom/android/billingclient/api/c;->a(I)I

    move-result v1

    return v1

    :cond_3
    const-string v8, "subs"

    .line 397
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v10, -0x2

    if-eqz v8, :cond_4

    iget-boolean v8, v0, Lcom/android/billingclient/api/c;->h:Z

    if-nez v8, :cond_4

    const-string v1, "Current client doesn\'t support subscriptions."

    .line 398
    invoke-static {v15, v1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {v0, v10}, Lcom/android/billingclient/api/c;->a(I)I

    move-result v1

    return v1

    .line 402
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/e;->d()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    move v8, v6

    goto :goto_1

    :cond_5
    move/from16 v8, v17

    :goto_1
    if-eqz v8, :cond_6

    .line 404
    iget-boolean v11, v0, Lcom/android/billingclient/api/c;->i:Z

    if-nez v11, :cond_6

    const-string v1, "Current client doesn\'t support subscriptions update."

    .line 405
    invoke-static {v15, v1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-direct {v0, v10}, Lcom/android/billingclient/api/c;->a(I)I

    move-result v1

    return v1

    .line 409
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/e;->h()Z

    move-result v11

    const-string v12, "Current client doesn\'t support extra params for buy intent."

    if-eqz v11, :cond_7

    iget-boolean v11, v0, Lcom/android/billingclient/api/c;->j:Z

    if-nez v11, :cond_7

    .line 410
    invoke-static {v15, v12}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-direct {v0, v10}, Lcom/android/billingclient/api/c;->a(I)I

    move-result v1

    return v1

    :cond_7
    if-eqz v7, :cond_8

    .line 414
    iget-boolean v11, v0, Lcom/android/billingclient/api/c;->j:Z

    if-nez v11, :cond_8

    .line 415
    invoke-static {v15, v12}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct {v0, v10}, Lcom/android/billingclient/api/c;->a(I)I

    move-result v1

    return v1

    .line 420
    :cond_8
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Constructing buy intent for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", item type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Lcom/android/billingclient/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-boolean v10, v0, Lcom/android/billingclient/api/c;->j:Z

    if-eqz v10, :cond_c

    move-object/from16 v10, p2

    .line 426
    invoke-direct {v0, v10}, Lcom/android/billingclient/api/c;->a(Lcom/android/billingclient/api/e;)Landroid/os/Bundle;

    move-result-object v11

    const-string v8, "libraryVersion"

    const-string v12, "1.2"

    .line 427
    invoke-virtual {v11, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_a

    const-string v7, "rewardToken"

    .line 429
    invoke-virtual {v5}, Lcom/android/billingclient/api/h;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget v5, v0, Lcom/android/billingclient/api/c;->b:I

    if-eq v5, v6, :cond_9

    iget v5, v0, Lcom/android/billingclient/api/c;->b:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    :cond_9
    const-string v5, "childDirected"

    .line 432
    iget v6, v0, Lcom/android/billingclient/api/c;->b:I

    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/e;->f()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x7

    goto :goto_2

    :cond_b
    const/4 v5, 0x6

    :goto_2
    move v6, v5

    .line 436
    iget-object v5, v0, Lcom/android/billingclient/api/c;->f:Lcom/android/vending/billing/IInAppBillingService;

    iget-object v7, v0, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    .line 439
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    move-object v8, v3

    .line 437
    invoke-interface/range {v5 .. v11}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    move-object v11, v15

    goto :goto_3

    :cond_c
    move-object/from16 v10, p2

    if-eqz v8, :cond_d

    .line 446
    iget-object v5, v0, Lcom/android/billingclient/api/c;->f:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v11, 0x5

    iget-object v7, v0, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    .line 449
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    new-array v6, v6, [Ljava/lang/String;

    .line 450
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/e;->d()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v6, "subs"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v16, 0x0

    move-object v10, v5

    move-object v14, v3

    move-object v8, v15

    move-object v15, v6

    .line 447
    :try_start_1
    invoke-interface/range {v10 .. v16}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v11, v8

    goto :goto_3

    :cond_d
    move-object v8, v15

    .line 455
    iget-object v5, v0, Lcom/android/billingclient/api/c;->f:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v6, 0x3

    iget-object v7, v0, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    .line 458
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, 0x0

    move-object v11, v8

    move-object v8, v3

    .line 456
    :try_start_2
    invoke-interface/range {v5 .. v10}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 464
    :goto_3
    invoke-static {v5, v11}, Lcom/android/billingclient/a/a;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_e

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-direct {v0, v6}, Lcom/android/billingclient/api/c;->a(I)I

    move-result v1

    return v1

    .line 470
    :cond_e
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/billingclient/api/ProxyBillingActivity;

    invoke-direct {v6, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "result_receiver"

    .line 471
    iget-object v8, v0, Lcom/android/billingclient/api/c;->m:Landroid/os/ResultReceiver;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 472
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 473
    invoke-virtual {v6, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 478
    invoke-virtual {v1, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return v17

    :catch_0
    move-object v11, v8

    goto :goto_4

    :catch_1
    move-object v11, v15

    .line 480
    :catch_2
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching launching replace subscriptions flow: ; for sku: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; try to reconnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-static {v11, v1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-direct {v0, v4}, Lcom/android/billingclient/api/c;->a(I)I

    move-result v1

    return v1
.end method

.method public a(Ljava/lang/String;)Lcom/android/billingclient/api/f$a;
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 500
    new-instance p1, Lcom/android/billingclient/api/f$a;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object p1

    .line 504
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid SKU type."

    .line 505
    invoke-static {p1, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance p1, Lcom/android/billingclient/api/f$a;

    const/4 v0, 0x5

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/f$a;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 509
    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/c;->a(Ljava/lang/String;Z)Lcom/android/billingclient/api/f$a;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/String;Ljava/util/List;)Lcom/android/billingclient/api/h$a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/billingclient/api/h$a;"
        }
    .end annotation

    const-string v0, "BillingClient"

    .line 732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 736
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    add-int/lit8 v5, v4, 0x14

    if-le v5, v2, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v5

    .line 743
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p2, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 744
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v6, "ITEM_ID_LIST"

    .line 745
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v6, "libraryVersion"

    const-string v7, "1.2"

    .line 746
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 749
    :try_start_0
    iget-object v7, p0, Lcom/android/billingclient/api/c;->f:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    .line 750
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, p1, v4}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x4

    if-nez v4, :cond_1

    const-string p1, "querySkuDetailsAsync got null sku details list"

    .line 759
    invoke-static {v0, p1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    new-instance p1, Lcom/android/billingclient/api/h$a;

    invoke-direct {p1, v7, v6}, Lcom/android/billingclient/api/h$a;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_1
    const-string v8, "DETAILS_LIST"

    .line 763
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x6

    if-nez v9, :cond_3

    .line 765
    invoke-static {v4, v0}, Lcom/android/billingclient/a/a;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 768
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSkuDetails() failed. Response code: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance p2, Lcom/android/billingclient/api/h$a;

    invoke-direct {p2, p1, v1}, Lcom/android/billingclient/api/h$a;-><init>(ILjava/util/List;)V

    return-object p2

    :cond_2
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 771
    invoke-static {v0, p1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    new-instance p1, Lcom/android/billingclient/api/h$a;

    invoke-direct {p1, v10, v1}, Lcom/android/billingclient/api/h$a;-><init>(ILjava/util/List;)V

    return-object p1

    .line 779
    :cond_3
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_4

    const-string p1, "querySkuDetailsAsync got null response list"

    .line 782
    invoke-static {v0, p1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    new-instance p1, Lcom/android/billingclient/api/h$a;

    invoke-direct {p1, v7, v6}, Lcom/android/billingclient/api/h$a;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_4
    move v7, v3

    .line 786
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 787
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 790
    :try_start_1
    new-instance v9, Lcom/android/billingclient/api/h;

    invoke-direct {v9, v8}, Lcom/android/billingclient/api/h;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 795
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got sku details: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/billingclient/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    const-string p1, "Got a JSON exception trying to decode SkuDetails"

    .line 792
    invoke-static {v0, p1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    new-instance p1, Lcom/android/billingclient/api/h$a;

    invoke-direct {p1, v10, v6}, Lcom/android/billingclient/api/h$a;-><init>(ILjava/util/List;)V

    return-object p1

    :cond_5
    move v4, v5

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 752
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querySkuDetailsAsync got a remote exception (try to reconnect): "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 753
    invoke-static {v0, p1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    new-instance p1, Lcom/android/billingclient/api/h$a;

    const/4 p2, -0x1

    invoke-direct {p1, p2, v6}, Lcom/android/billingclient/api/h$a;-><init>(ILjava/util/List;)V

    return-object p1

    .line 803
    :cond_6
    new-instance p1, Lcom/android/billingclient/api/h$a;

    invoke-direct {p1, v3, v1}, Lcom/android/billingclient/api/h$a;-><init>(ILjava/util/List;)V

    return-object p1
.end method

.method public a(Lcom/android/billingclient/api/d;)V
    .locals 8

    .line 198
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BillingClient"

    if-eqz v0, :cond_0

    const-string v0, "Service connection is valid. No need to re-initialize."

    .line 199
    invoke-static {v2, v0}, Lcom/android/billingclient/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/d;->a(I)V

    return-void

    .line 204
    :cond_0
    iget v0, p0, Lcom/android/billingclient/api/c;->a:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    const-string v0, "Client is already in the process of connecting to billing service."

    .line 205
    invoke-static {v2, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-interface {p1, v3}, Lcom/android/billingclient/api/d;->a(I)V

    return-void

    :cond_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 212
    invoke-static {v2, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-interface {p1, v3}, Lcom/android/billingclient/api/d;->a(I)V

    return-void

    .line 219
    :cond_2
    iput v4, p0, Lcom/android/billingclient/api/c;->a:I

    .line 222
    iget-object v0, p0, Lcom/android/billingclient/api/c;->d:Lcom/android/billingclient/api/a;

    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->a()V

    const-string v0, "Starting in-app billing setup."

    .line 225
    invoke-static {v2, v0}, Lcom/android/billingclient/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/android/billingclient/api/c$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/android/billingclient/api/c$a;-><init>(Lcom/android/billingclient/api/c;Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/BillingClientImpl$1;)V

    iput-object v0, p0, Lcom/android/billingclient/api/c;->g:Landroid/content/ServiceConnection;

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    .line 229
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v6, p0, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    .line 231
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 233
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 235
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 236
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_5

    .line 237
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 238
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 239
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v6, :cond_4

    .line 240
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 246
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "libraryVersion"

    const-string v3, "1.2"

    .line 247
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v0, p0, Lcom/android/billingclient/api/c;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/c;->g:Landroid/content/ServiceConnection;

    .line 249
    invoke-virtual {v0, v6, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Service was bonded successfully."

    .line 253
    invoke-static {v2, p1}, Lcom/android/billingclient/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "Connection to Billing service is blocked."

    .line 258
    invoke-static {v2, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "The device doesn\'t have valid Play Store."

    .line 262
    invoke-static {v2, v0}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_5
    :goto_0
    iput v1, p0, Lcom/android/billingclient/api/c;->a:I

    const-string v0, "Billing service unavailable on device."

    .line 268
    invoke-static {v2, v0}, Lcom/android/billingclient/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-interface {p1, v5}, Lcom/android/billingclient/api/d;->a(I)V

    return-void
.end method

.method public a(Lcom/android/billingclient/api/i;Lcom/android/billingclient/api/j;)V
    .locals 5

    .line 515
    invoke-virtual {p0}, Lcom/android/billingclient/api/c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    .line 516
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/j;->a(ILjava/util/List;)V

    return-void

    .line 521
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-virtual {p1}, Lcom/android/billingclient/api/i;->b()Ljava/util/List;

    move-result-object p1

    .line 525
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x5

    const-string v4, "BillingClient"

    if-eqz v2, :cond_1

    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 526
    invoke-static {v4, p1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-interface {p2, v3, v1}, Lcom/android/billingclient/api/j;->a(ILjava/util/List;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty."

    .line 532
    invoke-static {v4, p1}, Lcom/android/billingclient/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-interface {p2, v3, v1}, Lcom/android/billingclient/api/j;->a(ILjava/util/List;)V

    return-void

    .line 537
    :cond_2
    new-instance v1, Lcom/android/billingclient/api/c$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/billingclient/api/c$1;-><init>(Lcom/android/billingclient/api/c;Ljava/lang/String;Ljava/util/List;Lcom/android/billingclient/api/j;)V

    invoke-direct {p0, v1}, Lcom/android/billingclient/api/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Z
    .locals 2

    .line 193
    iget v0, p0, Lcom/android/billingclient/api/c;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/c;->f:Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/c;->g:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
