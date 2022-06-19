.class public final synthetic Lz2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/r$b;
.implements Lm7/g$a;
.implements Li2/i;
.implements Le2/g$c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lz2/n;->a:I

    iput-object p1, p0, Lz2/n;->b:Ljava/lang/Object;

    iput-object p2, p0, Lz2/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lz2/n;->b:Ljava/lang/Object;

    check-cast v0, Lz2/r;

    iget-object v1, p0, Lz2/n;->c:Ljava/lang/Object;

    check-cast v1, Lu2/i;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 1
    invoke-virtual {v0, p1, v1}, Lz2/r;->l(Landroid/database/sqlite/SQLiteDatabase;Lu2/i;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lz2/r;->k()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object v0, Lz2/o;->b:Lz2/o;

    .line 6
    invoke-static {p1, v0}, Lz2/r;->r(Landroid/database/Cursor;Lz2/r$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method

.method public e(Li2/c;Ljava/util/List;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lz2/n;->b:Ljava/lang/Object;

    check-cast v2, Landroid/app/Activity;

    iget-object v3, v1, Lz2/n;->c:Ljava/lang/Object;

    check-cast v3, Landroid/app/FragmentManager;

    sget-object v4, Lf8/a;->a:Landroid/content/Context;

    .line 1
    iget v4, v0, Li2/c;->a:I

    const/4 v5, 0x0

    if-nez v4, :cond_2f

    const/4 v0, 0x0

    move-object/from16 v4, p2

    .line 2
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/SkuDetails;

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    .line 6
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x1

    if-le v4, v7, :cond_5

    .line 8
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/SkuDetails;

    .line 9
    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    const-string v11, "play_pass_subs"

    if-ge v10, v9, :cond_2

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 11
    check-cast v12, Lcom/android/billingclient/api/SkuDetails;

    .line 12
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 13
    invoke-virtual {v12}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 14
    invoke-virtual {v12}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "SKUs should have the same type."

    .line 16
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_5

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 19
    check-cast v12, Lcom/android/billingclient/api/SkuDetails;

    .line 20
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 21
    invoke-virtual {v12}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 22
    invoke-virtual {v12}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "All SKUs must have the same package name."

    .line 24
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 25
    :cond_5
    new-instance v4, Lcom/android/billingclient/api/d;

    invoke-direct {v4}, Lcom/android/billingclient/api/d;-><init>()V

    .line 26
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v8}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v7

    .line 27
    iput-boolean v8, v4, Lcom/android/billingclient/api/d;->a:Z

    .line 28
    iput-object v5, v4, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 29
    iput-object v5, v4, Lcom/android/billingclient/api/d;->d:Ljava/lang/String;

    .line 30
    iput-object v5, v4, Lcom/android/billingclient/api/d;->c:Ljava/lang/String;

    .line 31
    iput v0, v4, Lcom/android/billingclient/api/d;->e:I

    .line 32
    new-instance v8, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    iput-object v8, v4, Lcom/android/billingclient/api/d;->g:Ljava/util/ArrayList;

    .line 35
    iput-boolean v0, v4, Lcom/android/billingclient/api/d;->h:Z

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzh()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v6

    .line 37
    iput-object v6, v4, Lcom/android/billingclient/api/d;->f:Lcom/google/android/gms/internal/play_billing/zzu;

    .line 38
    sget-object v6, Lf8/a;->b:Lcom/android/billingclient/api/a;

    check-cast v6, Lcom/android/billingclient/api/b;

    const-string v10, "BUY_INTENT"

    const-string v8, "proxyPackageVersion"

    .line 39
    invoke-virtual {v6}, Lcom/android/billingclient/api/b;->c()Z

    move-result v9

    if-nez v9, :cond_6

    .line 40
    sget-object v0, Li2/n;->l:Li2/c;

    invoke-virtual {v6, v0}, Lcom/android/billingclient/api/b;->g(Li2/c;)Li2/c;

    goto/16 :goto_9

    .line 41
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v4, Lcom/android/billingclient/api/d;->g:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v11, v4, Lcom/android/billingclient/api/d;->f:Lcom/google/android/gms/internal/play_billing/zzu;

    .line 44
    invoke-static {v9, v5}, Lcom/google/android/gms/internal/play_billing/zzz;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/billingclient/api/SkuDetails;

    .line 45
    invoke-static {v11, v5}, Lcom/google/android/gms/internal/play_billing/zzz;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/billingclient/api/c;

    .line 46
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v12}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object v15

    .line 48
    invoke-virtual {v12}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v14

    const-string v0, "subs"

    .line 49
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 p2, v10

    const-string v10, "BillingClient"

    if-eqz v0, :cond_8

    iget-boolean v0, v6, Lcom/android/billingclient/api/b;->h:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const-string v0, "Current client doesn\'t support subscriptions."

    .line 50
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Li2/n;->n:Li2/c;

    invoke-virtual {v6, v0}, Lcom/android/billingclient/api/b;->g(Li2/c;)Li2/c;

    goto/16 :goto_9

    .line 52
    :cond_8
    :goto_4
    iget-boolean v0, v4, Lcom/android/billingclient/api/d;->h:Z

    if-nez v0, :cond_9

    iget-object v0, v4, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, v4, Lcom/android/billingclient/api/d;->d:Ljava/lang/String;

    if-nez v0, :cond_9

    iget v0, v4, Lcom/android/billingclient/api/d;->e:I

    if-nez v0, :cond_9

    iget-boolean v0, v4, Lcom/android/billingclient/api/d;->a:Z

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_b

    .line 53
    iget-boolean v0, v6, Lcom/android/billingclient/api/b;->j:Z

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 54
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Li2/n;->h:Li2/c;

    invoke-virtual {v6, v0}, Lcom/android/billingclient/api/b;->g(Li2/c;)Li2/c;

    goto :goto_9

    .line 56
    :cond_b
    :goto_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_d

    iget-boolean v0, v6, Lcom/android/billingclient/api/b;->o:Z

    if-eqz v0, :cond_c

    goto :goto_7

    :cond_c
    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 57
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Li2/n;->o:Li2/c;

    invoke-virtual {v6, v0}, Lcom/android/billingclient/api/b;->g(Li2/c;)Li2/c;

    goto :goto_9

    .line 59
    :cond_d
    :goto_7
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-boolean v0, v6, Lcom/android/billingclient/api/b;->p:Z

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    const-string v0, "Current client doesn\'t support purchases with ProductDetails."

    .line 60
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Li2/n;->q:Li2/c;

    invoke-virtual {v6, v0}, Lcom/android/billingclient/api/b;->g(Li2/c;)Li2/c;

    goto :goto_9

    .line 62
    :cond_f
    :goto_8
    iget-boolean v0, v6, Lcom/android/billingclient/api/b;->r:Z

    if-eqz v0, :cond_11

    iget-boolean v5, v6, Lcom/android/billingclient/api/b;->j:Z

    if-eqz v5, :cond_10

    goto :goto_a

    :cond_10
    const-string v0, "Current client doesn\'t support alternative billing."

    .line 63
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Li2/n;->r:Li2/c;

    invoke-virtual {v6, v0}, Lcom/android/billingclient/api/b;->g(Li2/c;)Li2/c;

    :goto_9
    move-object/from16 v19, v3

    goto/16 :goto_15

    .line 65
    :cond_11
    :goto_a
    iget-boolean v5, v6, Lcom/android/billingclient/api/b;->j:Z

    if-eqz v5, :cond_2b

    iget-boolean v5, v6, Lcom/android/billingclient/api/b;->k:Z

    iget-boolean v7, v6, Lcom/android/billingclient/api/b;->q:Z

    iget-object v1, v6, Lcom/android/billingclient/api/b;->b:Ljava/lang/String;

    .line 66
    invoke-static {v4, v5, v7, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzf(Lcom/android/billingclient/api/d;ZZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 67
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v5, "additionalSkuTypes"

    const-string v7, "additionalSkus"

    move-object/from16 v18, v14

    const-string v14, "skuDetailsTokens"

    move-object/from16 v19, v3

    const-string v3, "SKU_OFFER_ID_TOKEN_LIST"

    if-nez v1, :cond_1c

    new-instance v1, Ljava/util/ArrayList;

    .line 68
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v20, v15

    new-instance v15, Ljava/util/ArrayList;

    .line 69
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v4

    new-instance v4, Ljava/util/ArrayList;

    .line 70
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v8

    new-instance v8, Ljava/util/ArrayList;

    .line 71
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v23, v10

    new-instance v10, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_15

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v30, v2

    move-object/from16 v2, v29

    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    move-object/from16 v29, v13

    .line 74
    iget-object v13, v2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    move-object/from16 v31, v12

    const-string v12, "skuDetailsToken"

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 75
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_12

    .line 76
    iget-object v13, v2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 77
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_12
    iget-object v12, v2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    const-string v13, "offerIdToken"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 79
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_13

    iget-object v12, v2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    const-string v13, "offer_id_token"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 80
    :cond_13
    iget-object v13, v2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    move-object/from16 v32, v6

    const-string v6, "offer_id"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 81
    iget-object v13, v2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    move-object/from16 v33, v11

    const-string v11, "offer_type"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 82
    iget-object v2, v2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    const-string v13, "serializedDocid"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/16 v17, 0x1

    xor-int/lit8 v12, v12, 0x1

    or-int v25, v25, v12

    .line 85
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    or-int v26, v26, v6

    .line 87
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_14

    const/4 v6, 0x1

    goto :goto_c

    :cond_14
    const/4 v6, 0x0

    :goto_c
    or-int v27, v27, v6

    .line 88
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    or-int v28, v28, v6

    .line 89
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, v29

    move-object/from16 v2, v30

    move-object/from16 v12, v31

    move-object/from16 v6, v32

    move-object/from16 v11, v33

    goto/16 :goto_b

    :cond_15
    move-object/from16 v30, v2

    move-object/from16 v32, v6

    move-object/from16 v33, v11

    move-object/from16 v31, v12

    move-object/from16 v29, v13

    .line 90
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 91
    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_16
    if-eqz v25, :cond_17

    .line 92
    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_17
    if-eqz v26, :cond_18

    const-string v1, "SKU_OFFER_ID_LIST"

    .line 93
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_18
    if-eqz v27, :cond_19

    const-string v1, "SKU_OFFER_TYPE_LIST"

    .line 94
    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_19
    if-eqz v28, :cond_1a

    const-string v1, "SKU_SERIALIZED_DOCID_LIST"

    .line 95
    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 96
    :cond_1a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1e

    new-instance v1, Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x1

    .line 99
    :goto_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_1b

    .line 100
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v8}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v8}, Lcom/android/billingclient/api/SkuDetails;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 102
    :cond_1b
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 103
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_e

    :cond_1c
    move-object/from16 v30, v2

    move-object/from16 v21, v4

    move-object/from16 v32, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v10

    move-object/from16 v33, v11

    move-object/from16 v31, v12

    move-object/from16 v29, v13

    move-object/from16 v20, v15

    const/4 v2, 0x1

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    .line 105
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    .line 106
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    .line 107
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    .line 108
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_2a

    .line 110
    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 111
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 112
    invoke-virtual {v0, v14, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    :cond_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 114
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    :cond_1e
    :goto_e
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v6, v32

    if-eqz v1, :cond_20

    iget-boolean v1, v6, Lcom/android/billingclient/api/b;->m:Z

    if-eqz v1, :cond_1f

    goto :goto_f

    .line 117
    :cond_1f
    sget-object v0, Li2/n;->p:Li2/c;

    invoke-virtual {v6, v0}, Lcom/android/billingclient/api/b;->g(Li2/c;)Li2/c;

    goto/16 :goto_15

    .line 118
    :cond_20
    :goto_f
    invoke-virtual/range {v31 .. v31}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 119
    invoke-virtual/range {v31 .. v31}, Lcom/android/billingclient/api/SkuDetails;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "skuPackageName"

    .line 120
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto :goto_10

    :cond_21
    if-nez v29, :cond_29

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 121
    :goto_10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "accountName"

    .line 122
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_22
    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_23

    const-string v1, "Activity\'s intent is null."

    move-object/from16 v2, v23

    .line 124
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_23
    move-object/from16 v2, v23

    const-string v3, "PROXY_PACKAGE"

    .line 125
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 126
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "proxyPackage"

    .line 127
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v3, v6, Lcom/android/billingclient/api/b;->e:Landroid/content/Context;

    .line 128
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 129
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v3, v22

    .line 130
    :try_start_1
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    :catch_0
    move-object/from16 v3, v22

    :catch_1
    const-string v1, "package not found"

    .line 131
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_24
    :goto_11
    iget-boolean v1, v6, Lcom/android/billingclient/api/b;->p:Z

    if-eqz v1, :cond_25

    .line 133
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    const/16 v1, 0x11

    move-object/from16 v1, v21

    const/16 v14, 0x11

    goto :goto_12

    .line 134
    :cond_25
    iget-boolean v1, v6, Lcom/android/billingclient/api/b;->n:Z

    if-eqz v1, :cond_26

    if-eqz v7, :cond_26

    const/16 v1, 0xf

    move-object/from16 v1, v21

    const/16 v14, 0xf

    goto :goto_12

    :cond_26
    iget-boolean v1, v6, Lcom/android/billingclient/api/b;->k:Z

    if-eqz v1, :cond_27

    const/16 v1, 0x9

    move-object/from16 v1, v21

    const/16 v14, 0x9

    goto :goto_12

    :cond_27
    move-object/from16 v1, v21

    .line 135
    iget-boolean v3, v1, Lcom/android/billingclient/api/d;->h:Z

    if-eqz v3, :cond_28

    const/4 v3, 0x7

    const/4 v14, 0x7

    goto :goto_12

    :cond_28
    const/4 v3, 0x6

    const/4 v14, 0x6

    .line 136
    :goto_12
    new-instance v9, Li2/s;

    move-object v12, v9

    move-object v13, v6

    move-object/from16 v3, v18

    move-object/from16 v15, v20

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v18}, Li2/s;-><init>(Lcom/android/billingclient/api/b;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/d;Landroid/os/Bundle;)V

    const-wide/16 v10, 0x1388

    const/4 v12, 0x0

    iget-object v13, v6, Lcom/android/billingclient/api/b;->c:Landroid/os/Handler;

    move-object v8, v6

    move-object/from16 v0, p2

    move-object v1, v2

    .line 137
    invoke-virtual/range {v8 .. v13}, Lcom/android/billingclient/api/b;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_13

    :cond_29
    const/4 v2, 0x0

    .line 138
    throw v2

    :cond_2a
    move-object/from16 v0, v33

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/c;

    .line 140
    throw v2

    :cond_2b
    move-object/from16 v0, p2

    move-object/from16 v30, v2

    move-object/from16 v19, v3

    move-object v1, v10

    move-object v3, v14

    move-object/from16 v20, v15

    .line 141
    new-instance v9, Li2/v;

    move-object/from16 v2, v20

    invoke-direct {v9, v6, v2, v3}, Li2/v;-><init>(Lcom/android/billingclient/api/b;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v10, 0x1388

    const/4 v12, 0x0

    iget-object v13, v6, Lcom/android/billingclient/api/b;->c:Landroid/os/Handler;

    move-object v8, v6

    .line 142
    invoke-virtual/range {v8 .. v13}, Lcom/android/billingclient/api/b;->j(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object v2

    :goto_13
    const-wide/16 v3, 0x1388

    .line 143
    :try_start_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 144
    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 145
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    .line 146
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x34

    .line 147
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unable to buy item, Error response code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Li2/c;

    invoke-direct {v0}, Li2/c;-><init>()V

    .line 149
    iput v3, v0, Li2/c;->a:I

    .line 150
    iput-object v4, v0, Li2/c;->b:Ljava/lang/String;

    .line 151
    invoke-virtual {v6, v0}, Lcom/android/billingclient/api/b;->g(Li2/c;)Li2/c;

    goto :goto_15

    :cond_2c
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/billingclient/api/ProxyBillingActivity;

    move-object/from16 v5, v30

    .line 152
    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 154
    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 156
    sget-object v0, Li2/n;->k:Li2/c;

    goto :goto_15

    :catch_2
    move-exception v0

    const-string v2, "Exception while launching billing flow. Try to reconnect"

    .line 157
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    sget-object v0, Li2/n;->l:Li2/c;

    invoke-virtual {v6, v0}, Lcom/android/billingclient/api/b;->g(Li2/c;)Li2/c;

    goto :goto_15

    :catch_3
    move-exception v0

    goto :goto_14

    :catch_4
    move-exception v0

    :goto_14
    const-string v2, "Time out while launching billing flow. Try to reconnect"

    .line 159
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    sget-object v0, Li2/n;->m:Li2/c;

    invoke-virtual {v6, v0}, Lcom/android/billingclient/api/b;->g(Li2/c;)Li2/c;

    goto :goto_15

    .line 161
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU cannot be null."

    .line 162
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Details of the products must be provided."

    .line 164
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    move-object/from16 v19, v3

    .line 165
    iget-object v0, v0, Li2/c;->b:Ljava/lang/String;

    .line 166
    sget-object v1, Lf8/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lf8/g;->L(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 167
    :goto_15
    invoke-virtual/range {v19 .. v19}, Landroid/app/FragmentManager;->popBackStack()V

    return-void
.end method

.method public f(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)V
    .locals 4

    iget v0, p0, Lz2/n;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lz2/n;->b:Ljava/lang/Object;

    check-cast v0, Lm7/g;

    iget-object v2, p0, Lz2/n;->c:Ljava/lang/Object;

    check-cast v2, Lm7/i;

    sget v3, Lm7/g;->i:I

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {v0, p1, v1, p3}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {v2, p2}, Lm7/i;->then(Ljava/lang/Object;)Lm7/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v0, p1, p3}, Lm7/g;->m(Lm7/c;Lm7/g$b;)Lm7/c;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {v0, p1, v1, p3}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    :goto_0
    return-void

    .line 5
    :goto_1
    iget-object v0, p0, Lz2/n;->b:Ljava/lang/Object;

    check-cast v0, Lm7/g;

    iget-object v2, p0, Lz2/n;->c:Ljava/lang/Object;

    check-cast v2, Ly2/l;

    sget v3, Lm7/g;->i:I

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    goto :goto_2

    .line 7
    :cond_1
    :try_start_1
    iget-object p2, v2, Ly2/l;->b:Ljava/lang/Object;

    check-cast p2, Lm7/b;

    .line 8
    invoke-interface {p2, p1}, Lm7/b;->a(Ljava/lang/Exception;)V

    .line 9
    new-instance p1, Lm7/g;

    invoke-direct {p1, v1}, Lm7/g;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    invoke-virtual {v0, p1, p3}, Lm7/g;->m(Lm7/c;Lm7/g$b;)Lm7/c;

    goto :goto_2

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {v0, p1, v1, p3}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Le2/g;Le2/b;)V
    .locals 6

    iget-object p2, p0, Lz2/n;->b:Ljava/lang/Object;

    check-cast p2, Ll8/w;

    iget-object v0, p0, Lz2/n;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f090249

    .line 1
    invoke-virtual {p1, v1}, Le2/c;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v1, p2, Ll8/w;->b:Ljava/util/List;

    iget v2, p2, Ll8/w;->c:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/u;

    iput-object p1, v1, Lh8/u;->c:Ljava/lang/String;

    .line 3
    const-class v1, Lh8/u;

    .line 4
    new-instance v2, Lw8/q;

    invoke-direct {v2, v1}, Lw8/q;-><init>(Ljava/lang/Class;)V

    const/4 v1, 0x1

    new-array v3, v1, [Lw8/n;

    .line 5
    sget-object v4, Lh8/v;->g:Lx8/b;

    .line 6
    invoke-virtual {v4, p1}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lw8/q;->a([Lw8/n;)Lw8/p;

    move-result-object v2

    new-array v1, v1, [Lw8/n;

    sget-object v3, Lh8/v;->f:Lx8/b;

    iget-object v4, p2, Ll8/w;->b:Ljava/util/List;

    iget p2, p2, Ll8/w;->c:I

    .line 7
    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lh8/u;

    iget p2, p2, Lh8/u;->b:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2}, Lx8/b;->a(Ljava/lang/Object;)Lw8/k;

    move-result-object p2

    aput-object p2, v1, v5

    .line 8
    new-instance p2, Lw8/r;

    invoke-direct {p2, v2, v1}, Lw8/r;-><init>(Lw8/e;[Lw8/n;)V

    .line 9
    invoke-virtual {p2}, Lw8/r;->i()Lc9/g;

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
