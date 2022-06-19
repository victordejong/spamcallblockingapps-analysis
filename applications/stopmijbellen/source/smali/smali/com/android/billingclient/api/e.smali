.class public final Lcom/android/billingclient/api/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Li2/g;

.field public final synthetic c:Lcom/android/billingclient/api/b;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Ljava/lang/String;Li2/g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/e;->c:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Lcom/android/billingclient/api/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/billingclient/api/e;->b:Li2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/android/billingclient/api/e;->c:Lcom/android/billingclient/api/b;

    iget-object v8, v1, Lcom/android/billingclient/api/e;->a:Ljava/lang/String;

    .line 2
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Querying owned items, item type: "

    if-eqz v3, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 4
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v9, "BillingClient"

    invoke-static {v9, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, v0, Lcom/android/billingclient/api/b;->k:Z

    iget-boolean v3, v0, Lcom/android/billingclient/api/b;->q:Z

    iget-object v4, v0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zzg(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const/4 v6, 0x0

    :cond_1
    :try_start_0
    iget-boolean v2, v0, Lcom/android/billingclient/api/b;->k:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    const/16 v3, 0x9

    iget-object v4, v0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    .line 7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v8

    move-object v7, v11

    .line 8
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zze;->zzj(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    .line 9
    :cond_2
    iget-object v2, v0, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    .line 10
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-interface {v2, v3, v4, v8, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v3, "getPurchase()"

    .line 12
    sget-object v4, Li2/n;->j:Li2/c;

    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    const-string v6, "INAPP_PURCHASE_DATA_LIST"

    const-string v7, "INAPP_PURCHASE_ITEM_LIST"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v2, :cond_3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v3, v14, v13

    const-string v3, "%s got null owned items list"

    .line 13
    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 14
    :cond_3
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v15

    .line 15
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 16
    new-instance v14, Li2/c;

    invoke-direct {v14}, Li2/c;-><init>()V

    .line 17
    iput v15, v14, Li2/c;->a:I

    .line 18
    iput-object v12, v14, Li2/c;->b:Ljava/lang/String;

    if-eqz v15, :cond_4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v13

    .line 19
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v4, v12

    const-string v3, "%s failed. Response code: %s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v14

    goto :goto_3

    .line 21
    :cond_4
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 22
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 23
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_2

    .line 24
    :cond_5
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 25
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 26
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    if-nez v12, :cond_6

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v13

    const-string v3, "Bundle returned from %s contains null SKUs list."

    .line 27
    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v12, 0x1

    if-nez v14, :cond_7

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v13

    const-string v3, "Bundle returned from %s contains null purchases list."

    .line 29
    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-nez v15, :cond_8

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v13

    const-string v3, "Bundle returned from %s contains null signatures list."

    .line 31
    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    sget-object v4, Li2/n;->k:Li2/c;

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v13

    const-string v3, "Bundle returned from %s doesn\'t contain required fields."

    .line 33
    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_3
    sget-object v3, Li2/n;->k:Li2/c;

    if-eq v4, v3, :cond_a

    new-instance v0, Lcom/android/billingclient/api/Purchase$a;

    const/4 v2, 0x0

    invoke-direct {v0, v4, v2}, Lcom/android/billingclient/api/Purchase$a;-><init>(Li2/c;Ljava/util/List;)V

    goto/16 :goto_7

    .line 36
    :cond_a
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 37
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 38
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 39
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v13, v6, :cond_d

    .line 40
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 41
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 42
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 43
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "Sku is owned: "

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_b

    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 44
    :cond_b
    new-instance v12, Ljava/lang/String;

    .line 45
    invoke-direct {v12, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v9, v12}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v12, Lcom/android/billingclient/api/Purchase;

    .line 46
    invoke-direct {v12, v6, v7}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    invoke-virtual {v12}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "BUG: empty/null token!"

    .line 48
    invoke-static {v9, v6}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_c
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v2, "Got an exception trying to decode the purchase!"

    .line 50
    invoke-static {v9, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/android/billingclient/api/Purchase$a;

    sget-object v2, Li2/n;->j:Li2/c;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/billingclient/api/Purchase$a;-><init>(Li2/c;Ljava/util/List;)V

    goto :goto_7

    :cond_d
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    .line 51
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Continuation token: "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 53
    :cond_e
    new-instance v2, Ljava/lang/String;

    .line 54
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v9, v2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/android/billingclient/api/Purchase$a;

    sget-object v2, Li2/n;->k:Li2/c;

    invoke-direct {v0, v2, v10}, Lcom/android/billingclient/api/Purchase$a;-><init>(Li2/c;Ljava/util/List;)V

    goto :goto_7

    :catch_1
    move-exception v0

    const-string v2, "Got exception trying to get purchasesm try to reconnect"

    .line 56
    invoke-static {v9, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/android/billingclient/api/Purchase$a;

    .line 57
    sget-object v2, Li2/n;->l:Li2/c;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/billingclient/api/Purchase$a;-><init>(Li2/c;Ljava/util/List;)V

    .line 58
    :goto_7
    iget-object v2, v0, Lcom/android/billingclient/api/Purchase$a;->a:Ljava/util/List;

    if-eqz v2, :cond_f

    .line 59
    iget-object v3, v1, Lcom/android/billingclient/api/e;->b:Li2/g;

    .line 60
    iget-object v0, v0, Lcom/android/billingclient/api/Purchase$a;->b:Li2/c;

    .line 61
    invoke-interface {v3, v0, v2}, Li2/g;->b(Li2/c;Ljava/util/List;)V

    goto :goto_8

    :cond_f
    iget-object v2, v1, Lcom/android/billingclient/api/e;->b:Li2/g;

    .line 62
    iget-object v0, v0, Lcom/android/billingclient/api/Purchase$a;->b:Li2/c;

    .line 63
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzh()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Li2/g;->b(Li2/c;Ljava/util/List;)V

    :goto_8
    const/4 v2, 0x0

    return-object v2
.end method
