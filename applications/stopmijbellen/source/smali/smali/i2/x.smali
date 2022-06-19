.class public final synthetic Li2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Li2/i;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/b;Ljava/lang/String;Ljava/util/List;Li2/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/x;->a:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Li2/x;->b:Ljava/lang/String;

    iput-object p3, p0, Li2/x;->c:Ljava/util/List;

    iput-object p4, p0, Li2/x;->d:Li2/i;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Li2/x;->a:Lcom/android/billingclient/api/b;

    iget-object v8, v1, Li2/x;->b:Ljava/lang/String;

    iget-object v9, v1, Li2/x;->c:Ljava/util/List;

    iget-object v10, v1, Li2/x;->d:Li2/i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "BillingClient"

    .line 1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v13, :cond_8

    add-int/lit8 v7, v2, 0x14

    if-le v7, v13, :cond_0

    move v3, v13

    goto :goto_1

    :cond_0
    move v3, v7

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    .line 3
    invoke-interface {v9, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 6
    check-cast v6, Li2/p;

    .line 7
    iget-object v6, v6, Li2/p;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    new-instance v6, Landroid/os/Bundle;

    .line 9
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    .line 10
    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v2, v0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    const-string v3, "playBillingLibraryVersion"

    .line 11
    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v2, v0, Lcom/android/billingclient/api/b;->l:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    iget-object v5, v0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    .line 12
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v14, v0, Lcom/android/billingclient/api/b;->i:I

    iget-boolean v3, v0, Lcom/android/billingclient/api/b;->q:Z

    iget-object v15, v0, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    invoke-static {v14, v3, v15, v1, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zze(IZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v14

    const/16 v1, 0xa

    move v3, v1

    move-object v4, v5

    move-object v5, v8

    move v1, v7

    move-object v7, v14

    .line 14
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/play_billing/zze;->zzl(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_3

    :cond_2
    move v1, v7

    .line 15
    iget-object v2, v0, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    .line 16
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-interface {v2, v3, v4, v8, v6}, Lcom/google/android/gms/internal/play_billing/zze;->zzk(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    if-nez v2, :cond_3

    const-string v0, "querySkuDetailsAsync got null sku details list"

    .line 18
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const-string v3, "DETAILS_LIST"

    .line 19
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 20
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v14

    .line 21
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v14, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "getSkuDetails() failed. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_4
    const-string v1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 24
    invoke-static {v11, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 25
    :cond_5
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v0, "querySkuDetailsAsync got null response list"

    .line 26
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const/4 v14, 0x4

    const-string v0, "Item is unavailable for purchase."

    goto :goto_7

    :cond_6
    const/4 v3, 0x0

    .line 27
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 28
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_1
    new-instance v5, Lcom/android/billingclient/api/SkuDetails;

    .line 29
    invoke-direct {v5, v4}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    invoke-virtual {v5}, Lcom/android/billingclient/api/SkuDetails;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Got sku details: "

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/google/android/gms/internal/play_billing/zzb;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "Got a JSON exception trying to decode SkuDetails."

    .line 32
    invoke-static {v11, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Error trying to decode SkuDetails."

    const/4 v12, 0x0

    :goto_6
    const/4 v14, 0x6

    goto :goto_8

    :cond_7
    move v2, v1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    .line 33
    invoke-static {v11, v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v14, -0x1

    const-string v0, "Service connection is disconnected."

    :goto_7
    const/4 v12, 0x0

    goto :goto_8

    :cond_8
    const-string v0, ""

    const/4 v14, 0x0

    .line 34
    :goto_8
    new-instance v1, Li2/c;

    invoke-direct {v1}, Li2/c;-><init>()V

    .line 35
    iput v14, v1, Li2/c;->a:I

    .line 36
    iput-object v0, v1, Li2/c;->b:Ljava/lang/String;

    .line 37
    invoke-interface {v10, v1, v12}, Li2/i;->e(Li2/c;Ljava/util/List;)V

    const/4 v1, 0x0

    return-object v1
.end method
