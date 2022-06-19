.class public final Lcom/android/billingclient/api/d;
.super Lcom/android/billingclient/api/c;
.source "SourceFile"


# instance fields
.field a:I

.field final b:Ljava/lang/String;

.field c:Landroid/content/Context;

.field d:Lcom/google/android/gms/internal/f/d;

.field e:Z

.field f:Z

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:Z

.field private final p:Landroid/os/Handler;

.field private q:Lcom/android/billingclient/api/ag;

.field private r:Landroid/content/Context;

.field private s:Lcom/android/billingclient/api/v;

.field private t:Z

.field private u:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/android/billingclient/api/zzaj;

    invoke-direct {v3}, Lcom/android/billingclient/api/zzaj;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/d;-><init>(Landroid/content/Context;ZLcom/android/billingclient/api/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZLcom/android/billingclient/api/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/billingclient/api/c;-><init>()V

    const/4 p5, 0x0

    iput p5, p0, Lcom/android/billingclient/api/d;->a:I

    new-instance v0, Landroid/os/Handler;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/billingclient/api/d;->p:Landroid/os/Handler;

    iput p5, p0, Lcom/android/billingclient/api/d;->g:I

    iput-object p4, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 1001
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    new-instance p5, Lcom/android/billingclient/api/ag;

    .line 1002
    invoke-direct {p5, p4, p3}, Lcom/android/billingclient/api/ag;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/j;)V

    iput-object p5, p0, Lcom/android/billingclient/api/d;->q:Lcom/android/billingclient/api/ag;

    iput-object p1, p0, Lcom/android/billingclient/api/d;->r:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/billingclient/api/d;->t:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/billingclient/api/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/d;->a:I

    new-instance v1, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/billingclient/api/d;->p:Landroid/os/Handler;

    iput v0, p0, Lcom/android/billingclient/api/d;->g:I

    iput-object p1, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;Lcom/android/billingclient/api/j;)V
    .locals 6

    :try_start_0
    const-string p1, "com.android.billingclient.ktx.BuildConfig"

    .line 6
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "VERSION_NAME"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "3.0.3"

    :goto_0
    move-object v4, p1

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/billingclient/api/d;-><init>(Landroid/content/Context;ZLcom/android/billingclient/api/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/d;->q:Lcom/android/billingclient/api/ag;

    .line 1
    iget-object v0, v0, Lcom/android/billingclient/api/ag;->b:Lcom/android/billingclient/api/af;

    .line 18001
    invoke-static {v0}, Lcom/android/billingclient/api/af;->a(Lcom/android/billingclient/api/af;)Lcom/android/billingclient/api/j;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/j;->a(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object p1
.end method

.method static synthetic a(Lcom/android/billingclient/api/d;Ljava/lang/String;)Lcom/android/billingclient/api/i$a;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Querying owned items, item type: "

    if-eqz v3, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/String;

    .line 1
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v2, "BillingClient"

    invoke-static {v2}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v4, v0, Lcom/android/billingclient/api/d;->j:Z

    iget-boolean v5, v0, Lcom/android/billingclient/api/d;->t:Z

    iget-object v6, v0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 3
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/f/a;->a(ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const/4 v6, 0x0

    :cond_1
    :try_start_0
    iget-boolean v7, v0, Lcom/android/billingclient/api/d;->j:Z

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    iget-object v8, v0, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    .line 4
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-interface {v7, v8, v1, v6, v4}, Lcom/google/android/gms/internal/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_1

    .line 23
    :cond_2
    iget-object v7, v0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    iget-object v8, v0, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    .line 6
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 7
    invoke-interface {v7, v8, v1, v6}, Lcom/google/android/gms/internal/f/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v7, "getPurchase()"

    .line 19001
    sget-object v8, Lcom/android/billingclient/api/y;->l:Lcom/android/billingclient/api/g;

    const-string v9, "INAPP_DATA_SIGNATURE_LIST"

    const-string v10, "INAPP_PURCHASE_DATA_LIST"

    const-string v11, "INAPP_PURCHASE_ITEM_LIST"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v6, :cond_3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v7, v13, v12

    const-string v7, "%s got null owned items list"

    .line 19002
    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 19003
    :cond_3
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/f/a;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v14

    .line 19004
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/f/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v5

    .line 20000
    iput v14, v5, Lcom/android/billingclient/api/g$a;->a:I

    .line 21000
    iput-object v15, v5, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 19007
    invoke-virtual {v5}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v5

    if-eqz v14, :cond_4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v12

    .line 19008
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v8, v13

    const-string v7, "%s failed. Response code: %s"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 19009
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v5

    goto :goto_3

    .line 19010
    :cond_4
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 19011
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 19012
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 19015
    :cond_5
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 19016
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 19017
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    if-nez v5, :cond_6

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v7, v5, v12

    const-string v7, "Bundle returned from %s contains null SKUs list."

    .line 19018
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 19019
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-nez v14, :cond_7

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v7, v5, v12

    const-string v7, "Bundle returned from %s contains null purchases list."

    .line 19020
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 19021
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-nez v15, :cond_8

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v7, v5, v12

    const-string v7, "Bundle returned from %s contains null signatures list."

    .line 19022
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 19023
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    sget-object v8, Lcom/android/billingclient/api/y;->p:Lcom/android/billingclient/api/g;

    goto :goto_3

    :cond_9
    :goto_2
    new-array v5, v13, [Ljava/lang/Object;

    aput-object v7, v5, v12

    const-string v7, "Bundle returned from %s doesn\'t contain required fields."

    .line 19013
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 19014
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_3
    sget-object v5, Lcom/android/billingclient/api/y;->p:Lcom/android/billingclient/api/g;

    if-eq v8, v5, :cond_a

    new-instance v0, Lcom/android/billingclient/api/i$a;

    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v8, v1}, Lcom/android/billingclient/api/i$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto/16 :goto_7

    .line 10
    :cond_a
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 11
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 12
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 13
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v12, v9, :cond_d

    .line 14
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 15
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 16
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 17
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "Sku is owned: "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual {v13, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_5

    .line 21
    :cond_b
    new-instance v11, Ljava/lang/String;

    .line 17
    invoke-direct {v11, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    :try_start_1
    new-instance v11, Lcom/android/billingclient/api/i;

    .line 18
    invoke-direct {v11, v9, v10}, Lcom/android/billingclient/api/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 19
    invoke-virtual {v11}, Lcom/android/billingclient/api/i;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "BUG: empty/null token!"

    .line 20
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_c
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x30

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Got an exception trying to decode the purchase: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/i$a;

    sget-object v1, Lcom/android/billingclient/api/y;->l:Lcom/android/billingclient/api/g;

    const/4 v2, 0x0

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/android/billingclient/api/i$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto :goto_7

    :cond_d
    const-string v5, "INAPP_CONTINUATION_TOKEN"

    .line 22
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "Continuation token: "

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    .line 30
    :cond_e
    new-instance v5, Ljava/lang/String;

    .line 23
    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v2}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    .line 24
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Lcom/android/billingclient/api/i$a;

    sget-object v1, Lcom/android/billingclient/api/y;->p:Lcom/android/billingclient/api/g;

    .line 30
    invoke-direct {v0, v1, v3}, Lcom/android/billingclient/api/i$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    goto :goto_7

    :catch_1
    move-exception v0

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x39

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Got exception trying to get purchases: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; try to reconnect"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/i$a;

    .line 26
    sget-object v1, Lcom/android/billingclient/api/y;->q:Lcom/android/billingclient/api/g;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/billingclient/api/i$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    :goto_7
    return-object v0
.end method

.method static synthetic a(Lcom/android/billingclient/api/d;Ljava/lang/Runnable;)V
    .locals 1

    .line 21001
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/billingclient/api/d;->p:Landroid/os/Handler;

    .line 21002
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/android/billingclient/api/f;)Lcom/android/billingclient/api/g;
    .locals 27

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    const-string v9, "BUY_INTENT"

    const-string v0, "proxyPackageVersion"

    const-string v10, "; try to reconnect"

    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/d;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1
    sget-object v0, Lcom/android/billingclient/api/y;->q:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 7001
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v5, Lcom/android/billingclient/api/f;->g:Ljava/util/ArrayList;

    .line 7002
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/k;

    .line 4
    invoke-virtual {v3}, Lcom/android/billingclient/api/k;->b()Ljava/lang/String;

    move-result-object v4

    const-string v6, "subs"

    .line 5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v11, "BillingClient"

    if-eqz v6, :cond_2

    iget-boolean v6, v7, Lcom/android/billingclient/api/d;->e:Z

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Current client doesn\'t support subscriptions."

    .line 90
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/android/billingclient/api/y;->s:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    .line 8000
    :cond_2
    :goto_0
    iget-object v6, v5, Lcom/android/billingclient/api/f;->c:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 6
    iget-boolean v12, v7, Lcom/android/billingclient/api/d;->f:Z

    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Current client doesn\'t support subscriptions update."

    .line 88
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/android/billingclient/api/y;->t:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    .line 9000
    :cond_4
    :goto_1
    iget-boolean v12, v5, Lcom/android/billingclient/api/f;->h:Z

    const/4 v13, 0x1

    if-nez v12, :cond_6

    iget-object v12, v5, Lcom/android/billingclient/api/f;->b:Ljava/lang/String;

    if-nez v12, :cond_6

    iget-object v12, v5, Lcom/android/billingclient/api/f;->e:Ljava/lang/String;

    if-nez v12, :cond_6

    iget v12, v5, Lcom/android/billingclient/api/f;->f:I

    if-nez v12, :cond_6

    iget-boolean v12, v5, Lcom/android/billingclient/api/f;->a:Z

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v12, 0x1

    :goto_3
    if-eqz v12, :cond_8

    .line 7
    iget-boolean v12, v7, Lcom/android/billingclient/api/d;->h:Z

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_7
    const-string v0, "Current client doesn\'t support extra params for buy intent."

    .line 86
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/android/billingclient/api/y;->h:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    .line 8
    :cond_8
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v13, :cond_a

    iget-boolean v12, v7, Lcom/android/billingclient/api/d;->o:Z

    if-eqz v12, :cond_9

    goto :goto_5

    :cond_9
    const-string v0, "Current client doesn\'t support multi-item purchases."

    .line 84
    invoke-static {v11, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/android/billingclient/api/y;->u:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    :cond_a
    :goto_5
    const-string v12, ""

    move-object v15, v12

    const/4 v14, 0x0

    .line 9
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_c

    .line 10
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    add-int v12, v16, v17

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v14, v12, :cond_b

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v12, ", "

    invoke-virtual {v2, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_b
    move-object v15, v2

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v18

    const/4 v13, 0x1

    goto :goto_6

    :cond_c
    move-object/from16 v18, v12

    .line 13
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x29

    add-int/2addr v2, v12

    invoke-direct {v13, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", item type: "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    iget-boolean v2, v7, Lcom/android/billingclient/api/d;->h:Z

    if-eqz v2, :cond_1d

    iget-boolean v2, v7, Lcom/android/billingclient/api/d;->j:Z

    iget-boolean v6, v7, Lcom/android/billingclient/api/d;->t:Z

    iget-object v12, v7, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 14
    invoke-static {v5, v2, v6, v12}, Lcom/google/android/gms/internal/f/a;->a(Lcom/android/billingclient/api/f;ZZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    new-instance v2, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    .line 16
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v20, v15

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_7
    if-ge v15, v10, :cond_f

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move/from16 v25, v10

    .line 19
    move-object/from16 v10, v24

    check-cast v10, Lcom/android/billingclient/api/k;

    .line 20
    invoke-virtual {v10}, Lcom/android/billingclient/api/k;->h()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_d

    move-object/from16 v24, v9

    .line 21
    invoke-virtual {v10}, Lcom/android/billingclient/api/k;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    move-object/from16 v24, v9

    .line 10000
    :goto_8
    iget-object v9, v10, Lcom/android/billingclient/api/k;->a:Ljava/lang/String;

    .line 23
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "offer_id_token"

    .line 24
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-object/from16 v8, v18

    .line 25
    :goto_9
    iget-object v9, v10, Lcom/android/billingclient/api/k;->b:Lorg/json/JSONObject;

    move-object/from16 v26, v11

    const-string v11, "offer_id"

    .line 10001
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 26
    iget-object v10, v10, Lcom/android/billingclient/api/k;->b:Lorg/json/JSONObject;

    const-string v11, "offer_type"

    .line 11001
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 27
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v11, 0x1

    xor-int/2addr v8, v11

    or-int v21, v21, v8

    .line 29
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v11

    or-int v22, v22, v8

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_e

    const/4 v11, 0x1

    goto :goto_a

    :cond_e
    const/4 v11, 0x0

    :goto_a
    or-int v23, v23, v11

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, p1

    move-object/from16 v9, v24

    move/from16 v10, v25

    move-object/from16 v11, v26

    goto :goto_7

    :cond_f
    move-object/from16 v24, v9

    move-object/from16 v26, v11

    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "skuDetailsTokens"

    .line 33
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_10
    if-eqz v21, :cond_12

    iget-boolean v2, v7, Lcom/android/billingclient/api/d;->m:Z

    if-nez v2, :cond_11

    .line 34
    sget-object v0, Lcom/android/billingclient/api/y;->i:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    :cond_11
    const-string v2, "SKU_OFFER_ID_TOKEN_LIST"

    .line 35
    invoke-virtual {v6, v2, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_12
    if-eqz v22, :cond_13

    const-string v2, "SKU_OFFER_ID_LIST"

    .line 36
    invoke-virtual {v6, v2, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_13
    if-eqz v23, :cond_14

    const-string v2, "SKU_OFFER_TYPE_LIST"

    .line 37
    invoke-virtual {v6, v2, v14}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    :cond_14
    invoke-virtual {v3}, Lcom/android/billingclient/api/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 39
    invoke-virtual {v3}, Lcom/android/billingclient/api/k;->g()Ljava/lang/String;

    move-result-object v2

    const-string v8, "skuPackageName"

    .line 40
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_b

    :cond_15
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 41
    :goto_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_16

    const-string v8, "accountName"

    .line 42
    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v8, 0x1

    if-le v2, v8, :cond_18

    new-instance v2, Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x1

    .line 46
    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v13, v8, :cond_17

    .line 47
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/billingclient/api/k;

    invoke-virtual {v8}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/billingclient/api/k;

    invoke-virtual {v8}, Lcom/android/billingclient/api/k;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_17
    const-string v1, "additionalSkus"

    .line 49
    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "additionalSkuTypes"

    .line 50
    invoke-virtual {v6, v1, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 51
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PROXY_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 52
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "proxyPackage"

    .line 53
    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v2, v7, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    .line 54
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v8, 0x0

    .line 55
    invoke-virtual {v2, v1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 56
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    const-string v1, "package not found"

    .line 57
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_19
    :goto_d
    iget-boolean v0, v7, Lcom/android/billingclient/api/d;->n:Z

    if-eqz v0, :cond_1a

    if-eqz v11, :cond_1a

    const/16 v0, 0xf

    const/16 v2, 0xf

    goto :goto_e

    .line 83
    :cond_1a
    iget-boolean v0, v7, Lcom/android/billingclient/api/d;->j:Z

    if-eqz v0, :cond_1b

    const/16 v0, 0x9

    const/16 v2, 0x9

    goto :goto_e

    .line 14000
    :cond_1b
    iget-boolean v0, v5, Lcom/android/billingclient/api/f;->h:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x7

    const/4 v2, 0x7

    goto :goto_e

    :cond_1c
    const/4 v0, 0x6

    const/4 v2, 0x6

    .line 56
    :goto_e
    new-instance v8, Lcom/android/billingclient/api/aq;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    .line 59
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/aq;-><init>(Lcom/android/billingclient/api/d;ILcom/android/billingclient/api/k;Ljava/lang/String;Lcom/android/billingclient/api/f;Landroid/os/Bundle;)V

    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v7, v8, v0, v1, v2}, Lcom/android/billingclient/api/d;->a(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_f

    :cond_1d
    move-object/from16 v24, v9

    move-object/from16 v19, v10

    move-object/from16 v26, v11

    move-object/from16 v20, v15

    const-wide/16 v0, 0x1388

    const/4 v2, 0x0

    if-eqz v6, :cond_1e

    .line 58
    new-instance v4, Lcom/android/billingclient/api/ar;

    .line 61
    invoke-direct {v4, v7, v5, v3}, Lcom/android/billingclient/api/ar;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/f;Lcom/android/billingclient/api/k;)V

    .line 62
    invoke-virtual {v7, v4, v0, v1, v2}, Lcom/android/billingclient/api/d;->a(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_f

    :cond_1e
    new-instance v5, Lcom/android/billingclient/api/o;

    .line 63
    invoke-direct {v5, v7, v3, v4}, Lcom/android/billingclient/api/o;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/k;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v7, v5, v0, v1, v2}, Lcom/android/billingclient/api/d;->a(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 60
    :goto_f
    :try_start_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 65
    :try_start_3
    invoke-interface {v2, v0, v1, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v1, v26

    .line 66
    :try_start_4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/f/a;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    .line 67
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/f/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x34

    .line 68
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to buy item, Error response code: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/billingclient/api/g;->a()Lcom/android/billingclient/api/g$a;

    move-result-object v0

    .line 12000
    iput v2, v0, Lcom/android/billingclient/api/g$a;->a:I

    .line 13000
    iput-object v3, v0, Lcom/android/billingclient/api/g$a;->b:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Lcom/android/billingclient/api/g$a;->a()Lcom/android/billingclient/api/g;

    move-result-object v0

    .line 72
    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    :cond_1f
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/billingclient/api/ProxyBillingActivity;

    move-object/from16 v4, p1

    .line 73
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v3, v24

    .line 74
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 75
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 83
    sget-object v0, Lcom/android/billingclient/api/y;->p:Lcom/android/billingclient/api/g;

    return-object v0

    :catch_2
    move-object/from16 v1, v26

    :catch_3
    move-object/from16 v0, v19

    move-object/from16 v15, v20

    goto :goto_10

    :catch_4
    move-object/from16 v1, v26

    .line 77
    :catch_5
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x45

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Exception while launching billing flow: ; for sku: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v20

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/android/billingclient/api/y;->q:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0

    :catch_6
    move-object/from16 v0, v19

    move-object/from16 v15, v20

    move-object/from16 v1, v26

    .line 80
    :goto_10
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x44

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Time out while launching billing flow: ; for sku: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/android/billingclient/api/y;->r:Lcom/android/billingclient/api/g;

    invoke-direct {v7, v0}, Lcom/android/billingclient/api/d;->a(Lcom/android/billingclient/api/g;)Lcom/android/billingclient/api/g;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/android/billingclient/api/i$a;
    .locals 4

    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p1, Lcom/android/billingclient/api/i$a;

    .line 1
    sget-object v0, Lcom/android/billingclient/api/y;->q:Lcom/android/billingclient/api/g;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/i$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid SKU type."

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/i$a;

    .line 4
    sget-object v0, Lcom/android/billingclient/api/y;->g:Lcom/android/billingclient/api/g;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/i$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object p1

    :cond_1
    new-instance v0, Lcom/android/billingclient/api/p;

    .line 5
    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/p;-><init>(Lcom/android/billingclient/api/d;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    .line 6
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/billingclient/api/d;->a(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    invoke-interface {p1, v2, v3, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/i$a;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 9
    :catch_0
    new-instance p1, Lcom/android/billingclient/api/i$a;

    .line 8
    sget-object v0, Lcom/android/billingclient/api/y;->l:Lcom/android/billingclient/api/g;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/i$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object p1

    .line 7
    :catch_1
    new-instance p1, Lcom/android/billingclient/api/i$a;

    .line 9
    sget-object v0, Lcom/android/billingclient/api/y;->r:Lcom/android/billingclient/api/g;

    invoke-direct {p1, v0, v1}, Lcom/android/billingclient/api/i$a;-><init>(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-object p1
.end method

.method final a(Ljava/lang/String;Ljava/util/List;)Lcom/android/billingclient/api/z;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ad;",
            ">;)",
            "Lcom/android/billingclient/api/z;"
        }
    .end annotation

    const-string v0, "BillingClient"

    new-instance v1, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    add-int/lit8 v5, v4, 0x14

    if-le v5, v2, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    .line 3
    invoke-interface {p2, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 5
    check-cast v9, Lcom/android/billingclient/api/ad;

    .line 19000
    iget-object v9, v9, Lcom/android/billingclient/api/ad;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    new-instance v6, Landroid/os/Bundle;

    .line 7
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v8, "ITEM_ID_LIST"

    .line 8
    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    const-string v8, "playBillingLibraryVersion"

    .line 9
    invoke-virtual {v6, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    iget-boolean v8, p0, Lcom/android/billingclient/api/d;->k:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    iget-object v9, p0, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    .line 10
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/android/billingclient/api/d;->g:I

    iget-boolean v11, p0, Lcom/android/billingclient/api/d;->t:Z

    iget-object v12, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    .line 11
    invoke-static {v10, v11, v12, v7}, Lcom/google/android/gms/internal/f/a;->a(IZLjava/lang/String;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v7

    .line 12
    invoke-interface {v8, v9, p1, v6, v7}, Lcom/google/android/gms/internal/f/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_3

    .line 36
    :cond_2
    iget-object v7, p0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    iget-object v8, p0, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    .line 13
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-interface {v7, v8, p1, v6}, Lcom/google/android/gms/internal/f/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    const-string v7, "Item is unavailable for purchase."

    const/4 v8, 0x4

    if-nez v6, :cond_3

    const-string p1, "querySkuDetailsAsync got null sku details list"

    .line 24
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/z;

    .line 25
    invoke-direct {p1, v8, v7, v4}, Lcom/android/billingclient/api/z;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p1

    :cond_3
    const-string v9, "DETAILS_LIST"

    .line 15
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x6

    if-nez v10, :cond_5

    .line 26
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/f/a;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    .line 27
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/f/a;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "getSkuDetails() failed. Response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/z;

    .line 30
    invoke-direct {v0, p1, p2, v1}, Lcom/android/billingclient/api/z;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_4
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 31
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/z;

    .line 32
    invoke-direct {p1, v11, p2, v1}, Lcom/android/billingclient/api/z;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p1

    .line 16
    :cond_5
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_7

    const/4 v7, 0x0

    .line 17
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 18
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :try_start_1
    new-instance v9, Lcom/android/billingclient/api/k;

    .line 19
    invoke-direct {v9, v8}, Lcom/android/billingclient/api/k;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x11

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Got sku details: "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    .line 21
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :catch_0
    const-string p1, "Got a JSON exception trying to decode SkuDetails."

    .line 33
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/z;

    const-string p2, "Error trying to decode SkuDetails."

    .line 34
    invoke-direct {p1, v11, p2, v4}, Lcom/android/billingclient/api/z;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p1

    :cond_6
    move v4, v5

    goto/16 :goto_0

    :cond_7
    const-string p1, "querySkuDetailsAsync got null response list"

    .line 35
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/z;

    .line 36
    invoke-direct {p1, v8, v7, v4}, Lcom/android/billingclient/api/z;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x3f

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "querySkuDetailsAsync got a remote exception (try to reconnect)."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/z;

    const/4 p2, -0x1

    const-string v0, "Service connection is disconnected."

    .line 23
    invoke-direct {p1, p2, v0, v4}, Lcom/android/billingclient/api/z;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p1

    .line 14
    :cond_8
    new-instance p1, Lcom/android/billingclient/api/z;

    const-string p2, ""

    .line 37
    invoke-direct {p1, v3, p2, v1}, Lcom/android/billingclient/api/z;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method final a(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    long-to-double p2, p2

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double p2, p2, v0

    double-to-long p2, p2

    iget-object v0, p0, Lcom/android/billingclient/api/d;->u:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 1
    sget v0, Lcom/google/android/gms/internal/f/a;->a:I

    new-instance v1, Lcom/android/billingclient/api/an;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/an;-><init>(Lcom/android/billingclient/api/d;)V

    .line 2
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/d;->u:Ljava/util/concurrent/ExecutorService;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/d;->u:Ljava/util/concurrent/ExecutorService;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/billingclient/api/d;->p:Landroid/os/Handler;

    new-instance v1, Lcom/android/billingclient/api/ao;

    .line 5
    invoke-direct {v1, p0, p1, p4}, Lcom/android/billingclient/api/ao;-><init>(Lcom/android/billingclient/api/d;Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1c

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Async task throws exception "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BillingClient"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/b;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1
    sget-object p1, Lcom/android/billingclient/api/y;->q:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/b;->a(Lcom/android/billingclient/api/g;)V

    return-void

    .line 18000
    :cond_0
    iget-object v0, p1, Lcom/android/billingclient/api/a;->a:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Please provide a valid purchase token."

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/android/billingclient/api/y;->k:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/b;->a(Lcom/android/billingclient/api/g;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/d;->j:Z

    if-nez v0, :cond_2

    .line 5
    sget-object p1, Lcom/android/billingclient/api/y;->b:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/b;->a(Lcom/android/billingclient/api/g;)V

    return-void

    :cond_2
    new-instance v0, Lcom/android/billingclient/api/al;

    .line 6
    invoke-direct {v0, p0, p1, p2}, Lcom/android/billingclient/api/al;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/a;Lcom/android/billingclient/api/b;)V

    new-instance p1, Lcom/android/billingclient/api/am;

    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/am;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/b;)V

    const-wide/16 v1, 0x7530

    .line 7
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/billingclient/api/d;->a(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->c()Lcom/android/billingclient/api/g;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/billingclient/api/b;->a(Lcom/android/billingclient/api/g;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/billingclient/api/e;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->a()Z

    move-result v0

    const-string v1, "BillingClient"

    if-eqz v0, :cond_0

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/android/billingclient/api/y;->p:Lcom/android/billingclient/api/g;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/e;->b(Lcom/android/billingclient/api/g;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/billingclient/api/d;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "Client is already in the process of connecting to billing service."

    .line 32
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/android/billingclient/api/y;->d:Lcom/android/billingclient/api/g;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/e;->b(Lcom/android/billingclient/api/g;)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    .line 34
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/android/billingclient/api/y;->q:Lcom/android/billingclient/api/g;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/e;->b(Lcom/android/billingclient/api/g;)V

    return-void

    :cond_2
    iput v2, p0, Lcom/android/billingclient/api/d;->a:I

    iget-object v0, p0, Lcom/android/billingclient/api/d;->q:Lcom/android/billingclient/api/ag;

    .line 36
    iget-object v3, v0, Lcom/android/billingclient/api/ag;->b:Lcom/android/billingclient/api/af;

    iget-object v0, v0, Lcom/android/billingclient/api/ag;->a:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 2001
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/android/billingclient/api/af;->a:Z

    if-nez v5, :cond_3

    iget-object v5, v3, Lcom/android/billingclient/api/af;->b:Lcom/android/billingclient/api/ag;

    .line 3000
    iget-object v5, v5, Lcom/android/billingclient/api/ag;->b:Lcom/android/billingclient/api/af;

    .line 3001
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v2, v3, Lcom/android/billingclient/api/af;->a:Z

    .line 37
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/android/billingclient/api/v;

    const/4 v3, 0x0

    .line 38
    invoke-direct {v0, p0, p1, v3}, Lcom/android/billingclient/api/v;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/e;Lcom/android/billingclient/api/ap;)V

    iput-object v0, p0, Lcom/android/billingclient/api/d;->s:Lcom/android/billingclient/api/v;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    .line 39
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.vending"

    .line 40
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    .line 41
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 42
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 43
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 44
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_6

    .line 45
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 46
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 47
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    new-instance v3, Landroid/content/ComponentName;

    .line 49
    invoke-direct {v3, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    .line 50
    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    const-string v3, "playBillingLibraryVersion"

    .line 52
    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/d;->s:Lcom/android/billingclient/api/v;

    .line 53
    invoke-virtual {v0, v4, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    invoke-static {v1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "Connection to Billing service is blocked."

    .line 55
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "The device doesn\'t have valid Play Store."

    .line 48
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_6
    :goto_0
    iput v5, p0, Lcom/android/billingclient/api/d;->a:I

    .line 56
    invoke-static {v1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/android/billingclient/api/y;->c:Lcom/android/billingclient/api/g;

    invoke-interface {p1, v0}, Lcom/android/billingclient/api/e;->b(Lcom/android/billingclient/api/g;)V

    return-void
.end method

.method public final a(Lcom/android/billingclient/api/l;Lcom/android/billingclient/api/m;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1
    sget-object p1, Lcom/android/billingclient/api/y;->q:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/m;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void

    .line 15000
    :cond_0
    iget-object v4, p1, Lcom/android/billingclient/api/l;->a:Ljava/lang/String;

    .line 16000
    iget-object p1, p1, Lcom/android/billingclient/api/l;->b:Ljava/util/List;

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "BillingClient"

    if-eqz v0, :cond_1

    const-string p1, "Please fix the input params. SKU type can\'t be empty."

    .line 5
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lcom/android/billingclient/api/y;->g:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/m;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void

    :cond_1
    if-eqz p1, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Lcom/android/billingclient/api/ac;

    invoke-direct {v2, v1}, Lcom/android/billingclient/api/ac;-><init>(Lcom/android/billingclient/api/ab;)V

    .line 17000
    iput-object v0, v2, Lcom/android/billingclient/api/ac;->a:Ljava/lang/String;

    .line 9
    iget-object v0, v2, Lcom/android/billingclient/api/ac;->a:Ljava/lang/String;

    .line 17001
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17002
    new-instance v0, Lcom/android/billingclient/api/ad;

    iget-object v2, v2, Lcom/android/billingclient/api/ac;->a:Ljava/lang/String;

    .line 17003
    invoke-direct {v0, v2, v1, v1}, Lcom/android/billingclient/api/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/ab;)V

    .line 9
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17001
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SKU must be set."

    .line 17002
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Lcom/android/billingclient/api/r;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v7, p2

    .line 10
    invoke-direct/range {v2 .. v7}, Lcom/android/billingclient/api/r;-><init>(Lcom/android/billingclient/api/d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/android/billingclient/api/m;)V

    new-instance v0, Lcom/android/billingclient/api/ai;

    invoke-direct {v0, p0, p2}, Lcom/android/billingclient/api/ai;-><init>(Lcom/android/billingclient/api/d;Lcom/android/billingclient/api/m;)V

    const-wide/16 v2, 0x7530

    .line 11
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/billingclient/api/d;->a(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-nez p1, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/android/billingclient/api/d;->c()Lcom/android/billingclient/api/g;

    move-result-object p1

    .line 13
    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/m;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    :cond_4
    return-void

    :cond_5
    const-string p1, "Please fix the input params. The list of SKUs can\'t be empty - set SKU list or SkuWithOffer list."

    .line 14
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/android/billingclient/api/y;->f:Lcom/android/billingclient/api/g;

    invoke-interface {p2, p1, v1}, Lcom/android/billingclient/api/m;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V

    return-void
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/android/billingclient/api/d;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/d;->s:Lcom/android/billingclient/api/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/billingclient/api/d;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/billingclient/api/d;->q:Lcom/android/billingclient/api/ag;

    .line 1
    iget-object v3, v2, Lcom/android/billingclient/api/ag;->b:Lcom/android/billingclient/api/af;

    iget-object v2, v2, Lcom/android/billingclient/api/ag;->a:Landroid/content/Context;

    .line 4001
    iget-boolean v4, v3, Lcom/android/billingclient/api/af;->a:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/billingclient/api/af;->b:Lcom/android/billingclient/api/ag;

    .line 5000
    iget-object v4, v4, Lcom/android/billingclient/api/ag;->b:Lcom/android/billingclient/api/af;

    .line 5001
    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/billingclient/api/af;->a:Z

    goto :goto_0

    :cond_0
    const-string v2, "BillingBroadcastManager"

    const-string v3, "Receiver is not registered."

    .line 5002
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/android/billingclient/api/d;->s:Lcom/android/billingclient/api/v;

    if-eqz v2, :cond_1

    .line 2
    iget-object v3, v2, Lcom/android/billingclient/api/v;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v1, v2, Lcom/android/billingclient/api/v;->c:Lcom/android/billingclient/api/e;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/billingclient/api/v;->b:Z

    .line 6001
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 2
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/billingclient/api/d;->s:Lcom/android/billingclient/api/v;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    const-string v2, "BillingClient"

    .line 3
    :try_start_3
    invoke-static {v2}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/d;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/billingclient/api/d;->s:Lcom/android/billingclient/api/v;

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/android/billingclient/api/d;->s:Lcom/android/billingclient/api/v;

    :cond_2
    iput-object v1, p0, Lcom/android/billingclient/api/d;->d:Lcom/google/android/gms/internal/f/d;

    iget-object v2, p0, Lcom/android/billingclient/api/d;->u:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_3

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lcom/android/billingclient/api/d;->u:Ljava/util/concurrent/ExecutorService;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    iput v0, p0, Lcom/android/billingclient/api/d;->a:I

    return-void

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "BillingClient"

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "There was an exception while ending connection: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7
    iput v0, p0, Lcom/android/billingclient/api/d;->a:I

    return-void

    .line 6
    :goto_2
    iput v0, p0, Lcom/android/billingclient/api/d;->a:I

    .line 7
    throw v1
.end method

.method final c()Lcom/android/billingclient/api/g;
    .locals 2

    iget v0, p0, Lcom/android/billingclient/api/d;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/android/billingclient/api/y;->l:Lcom/android/billingclient/api/g;

    goto :goto_1

    .line 1
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/billingclient/api/y;->q:Lcom/android/billingclient/api/g;

    :goto_1
    return-object v0
.end method
