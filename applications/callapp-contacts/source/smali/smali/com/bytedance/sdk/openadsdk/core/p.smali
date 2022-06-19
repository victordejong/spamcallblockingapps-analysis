.class public Lcom/bytedance/sdk/openadsdk/core/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/p$b;,
        Lcom/bytedance/sdk/openadsdk/core/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/o<",
        "Lcom/bytedance/sdk/openadsdk/d/a;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:Z = false

.field private static h:Z = true


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Z

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private final d:Ljava/lang/String;

.field private e:J

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 154
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->c:Ljava/util/concurrent/ExecutorService;

    .line 162
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    .line 163
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->b:Z

    .line 164
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->d:Ljava/lang/String;

    return-void
.end method

.method private a(I)I
    .locals 0

    const/16 p1, 0x2710

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/p;)Landroid/content/Context;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "phone"

    .line 1022
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    return-object v0

    .line 1023
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/e/j;)Lorg/json/JSONObject;
    .locals 5

    .line 871
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 873
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adtype"

    .line 874
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "render_method"

    const-string v2, "accepted_size"

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 877
    :try_start_1
    iget v4, p3, Lcom/bytedance/sdk/openadsdk/core/e/j;->e:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 878
    iget v1, p3, Lcom/bytedance/sdk/openadsdk/core/e/j;->e:I

    if-ne v1, v3, :cond_0

    .line 879
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;II)V

    goto :goto_0

    .line 880
    :cond_0
    iget v1, p3, Lcom/bytedance/sdk/openadsdk/core/e/j;->e:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 881
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;FF)V

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 885
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getImgAcceptedHeight()I

    move-result v4

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;II)V

    :cond_2
    :goto_0
    const-string v1, "ptpl_ids"

    .line 887
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/h/e;->h(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pos"

    .line 888
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getPosition(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_support_dpl"

    .line 889
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->isSupportDeepLink()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 890
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getNativeAdType()I

    move-result v1

    if-gtz v1, :cond_3

    const/16 v1, 0x9

    if-eq p2, v1, :cond_3

    const/4 v1, 0x5

    if-ne p2, v1, :cond_4

    :cond_3
    const-string v1, "is_origin_ad"

    .line 891
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 893
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v1

    if-gtz v1, :cond_5

    const/4 v1, 0x1

    :cond_5
    const/4 v2, 0x3

    if-le v1, v2, :cond_6

    const/4 v1, 0x3

    :cond_6
    const/4 v2, 0x7

    if-eq p2, v2, :cond_8

    const/16 v2, 0x8

    if-ne p2, v2, :cond_7

    goto :goto_1

    :cond_7
    move v3, v1

    :cond_8
    :goto_1
    if-eqz p3, :cond_9

    .line 905
    iget-object p2, p3, Lcom/bytedance/sdk/openadsdk/core/e/j;->d:Lorg/json/JSONArray;

    if-eqz p2, :cond_9

    .line 906
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getAdCount()I

    move-result v3

    :cond_9
    const-string p1, "ad_count"

    .line 908
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;I)Lorg/json/JSONObject;
    .locals 10

    const-string v0, "app"

    const-string v1, "3.5.0.5"

    const-string v2, "ad_sdk_version"

    .line 196
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 198
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_1

    .line 200
    iget-object v5, p2, Lcom/bytedance/sdk/openadsdk/core/e/j;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p2, Lcom/bytedance/sdk/openadsdk/core/e/j;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->c()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    const/4 v6, 0x7

    const-string v7, "req_type"

    if-ne p3, v6, :cond_2

    if-eqz p2, :cond_3

    .line 202
    :try_start_1
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/e/j;->b:I

    if-lez v6, :cond_3

    .line 203
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/e/j;->b:I

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    const/16 v6, 0x8

    if-ne p3, v6, :cond_3

    if-eqz p2, :cond_3

    .line 206
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/e/j;->c:I

    if-lez v6, :cond_3

    .line 207
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/e/j;->c:I

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    :cond_3
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/h/e;->e()Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/h/e;->f()Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 215
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "version"

    .line 216
    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "param"

    .line 217
    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "abtest"

    .line 218
    invoke-virtual {v4, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_4
    :try_start_3
    const-string v6, "request_id"

    .line 224
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "source_type"

    .line 226
    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->c()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/h;->e(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 238
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v6

    if-lez v6, :cond_5

    const-string v6, "orientation"

    .line 239
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getOrientation()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    :cond_5
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->c(Lorg/json/JSONObject;)V

    const-string v6, "device"

    .line 245
    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "user"

    .line 246
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->b()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ua"

    .line 247
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 249
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/e/j;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p3, "adslots"

    .line 250
    invoke-virtual {v4, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-direct {p0, v4, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/e/j;)V

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v6, 0x3e8

    div-long/2addr p2, v6

    const-string v0, "ts"

    .line 253
    invoke-virtual {v4, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, ""

    .line 255
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    .line 256
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string p1, "req_sign"

    .line 258
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 260
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "oversea_version_type"

    const/4 p2, 0x1

    .line 261
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    return-object v3
.end method

.method private a(JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/o$a;)V
    .locals 2

    const/4 v0, -0x1

    .line 771
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/o$b;)V
    .locals 2

    const/4 v0, -0x1

    .line 775
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/p;JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/p;->a(JLjava/lang/String;ILcom/bytedance/sdk/openadsdk/core/p$a;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$a;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    return-void
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/d/a;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 944
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lorg/json/JSONObject;

    const-string v0, "log_extra"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 948
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 949
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/af;->f(Ljava/lang/String;)I

    move-result p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 951
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->e:J

    :cond_1
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->e:J

    if-nez p1, :cond_2

    .line 952
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->f:I

    :cond_2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->f:I

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/e/j;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 275
    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/e/j;->d:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "source_temai_product_ids"

    .line 279
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/e/j;->d:Lorg/json/JSONArray;

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;FF)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-ltz v1, :cond_0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    .line 931
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 932
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v2, "width"

    float-to-int p3, p3

    .line 934
    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "height"

    float-to-int p4, p4

    .line 935
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 936
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 937
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;II)V
    .locals 3

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    .line 917
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 918
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v2, "width"

    .line 920
    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "height"

    .line 921
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 922
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 923
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 847
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 848
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .line 290
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 294
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/c/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 295
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/c/b;->b()Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x78

    const-string v1, "mdpi"

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_5

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x140

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x280

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "xxxhdpi"

    goto :goto_0

    :cond_1
    const-string v1, "xxhdpi"

    goto :goto_0

    :cond_2
    const-string v1, "xhdpi"

    goto :goto_0

    :cond_3
    const-string v1, "hdpi"

    goto :goto_0

    :cond_4
    const-string v1, "ldpi"

    :cond_5
    :goto_0
    return-object v1
.end method

.method private b(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 738
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 741
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 742
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 743
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static b()Lorg/json/JSONObject;
    .locals 3

    .line 826
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 828
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v1

    const-string v2, "personalized_ad"

    .line 830
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->v()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lmt"

    .line 832
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/h;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "coppa"

    .line 834
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "gdpr"

    .line 835
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "is_gdpr_user"

    .line 836
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/h/e;->s()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "keywords"

    .line 838
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    .line 839
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 720
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 722
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "dislike"

    .line 723
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    .line 724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "ad_sdk_version"

    const-string v3, "3.5.0.5"

    .line 725
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "extra"

    .line 726
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "filter_words"

    .line 727
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 730
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p2, "actions"

    .line 731
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V
    .locals 17

    move-object/from16 v11, p0

    move-object/from16 v4, p4

    .line 323
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v4, :cond_0

    const/16 v0, 0x3e8

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    .line 325
    invoke-interface {v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 330
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->u()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v4, :cond_2

    const/16 v0, -0x10

    .line 332
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    :cond_2
    return-void

    .line 339
    :cond_3
    invoke-direct {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Lcom/bytedance/sdk/openadsdk/core/o$a;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 345
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Lcom/bytedance/sdk/openadsdk/core/h/b;)Lcom/bytedance/sdk/openadsdk/core/h/c;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/bytedance/sdk/openadsdk/core/h/c;->a(Z)V

    if-nez v4, :cond_5

    return-void

    .line 356
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, -0x8

    .line 357
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    return-void

    .line 362
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAd bidAdm\u6709\u6548\uff0c\u5219\u76f4\u63a5\u89e3\u6790\u8fd4\u56de\u5e7f\u544a\uff1aBidAdm->MD5->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bidding"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    .line 369
    invoke-direct {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void

    :cond_7
    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 372
    invoke-static {v0, v5, v7}, Lcom/bytedance/sdk/openadsdk/core/p$a;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;)Lcom/bytedance/sdk/openadsdk/core/p$a;

    move-result-object v1

    .line 373
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/p$a;->i:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 374
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    const/16 v3, 0x4e20

    if-eq v2, v3, :cond_8

    .line 375
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$a;->d:I

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/p$a;->e:Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    return-void

    .line 378
    :cond_8
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    if-nez v2, :cond_9

    .line 379
    invoke-direct {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void

    .line 382
    :cond_9
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/e/a;->c(Ljava/lang/String;)V

    .line 383
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/p$a;->h:Lcom/bytedance/sdk/openadsdk/core/e/a;

    invoke-interface {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NetApiImpl"

    const-string v2, "get ad error: "

    .line 385
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    invoke-direct {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void

    :cond_a
    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 391
    invoke-direct/range {p0 .. p3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;I)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v0, -0x9

    .line 393
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    return-void

    .line 398
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 399
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 400
    new-instance v8, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    const-string v1, "/api/ad/union/sdk/get_ads/"

    .line 401
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 403
    new-instance v14, Lcom/bytedance/sdk/openadsdk/core/p$3;

    const/4 v15, 0x1

    new-instance v16, Lcom/bytedance/sdk/openadsdk/core/p$2;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p1

    move/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/core/p$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Ljava/util/concurrent/atomic/AtomicLong;Lcom/bytedance/sdk/openadsdk/core/o$a;Lcom/bytedance/sdk/openadsdk/AdSlot;ILcom/bytedance/sdk/openadsdk/core/e/j;Ljava/util/concurrent/atomic/AtomicLong;J)V

    move-object v1, v14

    move v3, v15

    move-object v4, v13

    move-object v5, v0

    move-object/from16 v6, v16

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/p$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;Lorg/json/JSONObject;)V

    .line 544
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    move/from16 v1, p3

    invoke-direct {v11, v1}, Lcom/bytedance/sdk/openadsdk/core/p;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/bytedance/sdk/adnet/core/e;->b(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/bytedance/sdk/openadsdk/core/p$3;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    .line 545
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    .line 546
    invoke-virtual {v0, v12}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v0

    .line 547
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/j/e;->f()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    return-void
.end method

.method private b(Lcom/bytedance/sdk/openadsdk/core/o$a;)Z
    .locals 2

    .line 1541
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/p;->g:Z

    if-nez v0, :cond_1

    .line 1542
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 1544
    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/core/p;->g:Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, -0xf

    .line 1547
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 1548
    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/core/p;->g:Z

    .line 1552
    :cond_1
    :goto_0
    sget-boolean p1, Lcom/bytedance/sdk/openadsdk/core/p;->g:Z

    return p1
.end method

.method private c()Lorg/json/JSONObject;
    .locals 3

    .line 784
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appid"

    .line 786
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    .line 787
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->h(Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    .line 789
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lorg/json/JSONObject;Z)V

    const-string v1, "is_paid_app"

    .line 790
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/g;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 792
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "apk_sign"

    .line 793
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->g()I

    move-result v0

    .line 171
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->s()I

    move-result v1

    const-string v2, "ip"

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->p()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->s()I

    move-result v1

    if-ne v1, v4, :cond_2

    :cond_1
    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_8

    .line 174
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->h()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 175
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 179
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->s()I

    move-result v1

    if-ne v1, v4, :cond_3

    if-nez v0, :cond_3

    .line 180
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 183
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->s()I

    move-result v1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_5

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    .line 184
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/h/e;->s()I

    move-result v6

    if-ne v6, v3, :cond_6

    if-ne v0, v4, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-nez v1, :cond_8

    if-eqz v5, :cond_7

    goto :goto_1

    .line 188
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->h()I

    move-result v0

    if-eq v0, v4, :cond_8

    .line 189
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    :goto_1
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 867
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/h;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lorg/json/JSONObject;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 556
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e()Lorg/json/JSONObject;
    .locals 11

    const-string v0, "mcc"

    const-string v1, "mnc"

    .line 957
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "ua"

    .line 960
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ad_sdk_version"

    const-string v4, "3.5.0.5"

    .line 962
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sim_op"

    .line 963
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "root"

    .line 964
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/p;->b:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "timezone"

    .line 965
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->h()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "access"

    .line 966
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/t;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os"

    const-string v4, "Android"

    .line 967
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os_version"

    .line 968
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os_api"

    .line 969
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "device_type"

    .line 970
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_model"

    .line 971
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_brand"

    .line 972
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_manufacturer"

    .line 973
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "language"

    .line 974
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "resolution"

    .line 975
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/utils/ag;->d(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/utils/ag;->c(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "display_density"

    .line 976
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->f(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/p;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "density_dpi"

    .line 977
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/ag;->f(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "device_id"

    .line 978
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "aid"

    const-string v4, "1371"

    .line 979
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "rom"

    .line 980
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cpu_abi"

    .line 981
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ut"

    .line 983
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/p;->f:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "uid"

    .line 984
    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/p;->e:J

    invoke-virtual {v2, v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "google_aid"

    .line 985
    invoke-static {}, Lcom/a/a/a/a/b/a;->a()Lcom/a/a/a/a/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/a/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "locale_language"

    .line 988
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 989
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/h;->d()F

    move-result v3

    const-string v4, "screen_bright"

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v3, v3, v7

    float-to-double v7, v3

    .line 990
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    div-double/2addr v7, v9

    invoke-virtual {v2, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "is_screen_off"

    .line 991
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/h;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :cond_1
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 992
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v3

    .line 993
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/h/e;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 994
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 996
    :cond_2
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/h/e;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 997
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/aa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v2
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 9

    .line 675
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/g;->b()Lcom/bytedance/sdk/openadsdk/core/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "header"

    .line 680
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "aid"

    const-string v2, "4562"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 682
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 684
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 685
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->d(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v6, p1

    goto :goto_1

    :cond_1
    move-object v6, v0

    .line 688
    :goto_1
    invoke-direct {p0, v6}, Lcom/bytedance/sdk/openadsdk/core/p;->f(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v8

    .line 689
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v7

    .line 690
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/p$5;

    const/4 v4, 0x1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->l()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/p$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;Ljava/util/Map;)V

    .line 695
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p$5;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 696
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 697
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    return-void
.end method

.method private f(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 751
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    .line 752
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->d(Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Content-Encoding"

    const-string v1, "union_sdk_encode"

    .line 754
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static f()Z
    .locals 3

    const/4 v0, 0x0

    .line 1012
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method private static g()Ljava/lang/String;
    .locals 3

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1035
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MIUI-"

    .line 1036
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1037
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FLYME-"

    .line 1038
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1040
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/y;->n()Ljava/lang/String;

    move-result-object v1

    .line 1041
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/y;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "EMUI-"

    .line 1042
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1045
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    :cond_3
    :goto_0
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1051
    :catchall_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "message"

    .line 762
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static h()I
    .locals 2

    .line 1083
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1084
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    const/16 v1, -0xc

    if-ge v0, v1, :cond_0

    const/16 v0, -0xc

    :cond_0
    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    const/16 v0, 0xc

    :cond_1
    return v0
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "package_name"

    .line 859
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version_code"

    .line 860
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    .line 861
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/h;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tv"

    return-object v0

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android_pad"

    return-object v0

    :cond_1
    const-string v0, "android"

    return-object v0
.end method


# virtual methods
.method public a()Lcom/bytedance/sdk/openadsdk/core/e/l;
    .locals 6

    .line 1498
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1502
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v0

    .line 1503
    new-instance v2, Lcom/bytedance/sdk/adnet/b/j;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/h/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/h/e;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v0}, Lcom/bytedance/sdk/adnet/b/j;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 1504
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v3

    const/16 v5, 0x2710

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/adnet/b/j;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v2

    .line 1505
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/adnet/core/Request;->setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v2

    .line 1506
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 1510
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1513
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1514
    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e/l;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/e/l;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/d/i;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/d/a;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/d/i;"
        }
    .end annotation

    .line 613
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 617
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 619
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/d/a;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/d/a;)V

    const-string v3, "header"

    .line 620
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/p;->e()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 622
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/d/a;

    .line 623
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/d/a;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "event"

    .line 625
    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "_gen_time"

    .line 626
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 630
    :goto_1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 631
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/p;->d(Lorg/json/JSONObject;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object v8, p1

    .line 635
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "adevent is :"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "adevent"

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-direct {p0, v8}, Lcom/bytedance/sdk/openadsdk/core/p;->f(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v10

    .line 639
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object p1

    .line 640
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/p$4;

    const/4 v6, 0x1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/ae;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/core/p$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;Ljava/util/Map;)V

    .line 645
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v4

    const/16 v5, 0x2710

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/p$4;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v3

    .line 646
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object v3

    .line 647
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    .line 650
    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    nop

    :goto_3
    const/4 p1, 0x1

    if-eqz v1, :cond_3

    .line 654
    iget-object v3, v1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/p;->g(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-eqz v1, :cond_4

    .line 658
    iget-wide v4, v1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    long-to-int v5, v4

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_5
    if-nez v3, :cond_5

    const/16 v4, 0xc8

    if-ne v5, v4, :cond_5

    const-string v1, "server say not success"

    const/4 v2, 0x1

    goto :goto_6

    :cond_5
    if-eqz v1, :cond_6

    .line 664
    iget-object p1, v1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz p1, :cond_6

    .line 665
    iget-object p1, v1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    const-string v1, "error unknown"

    .line 668
    :goto_6
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->e(Lorg/json/JSONObject;)V

    .line 669
    new-instance p1, Lcom/bytedance/sdk/openadsdk/d/i;

    invoke-direct {p1, v3, v5, v1, v2}, Lcom/bytedance/sdk/openadsdk/d/i;-><init>(ZILjava/lang/String;Z)V

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    const-string v0, "auction_price"

    if-nez p1, :cond_0

    return-object p1

    .line 1426
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/p;->h:Z

    if-eqz v1, :cond_2

    const-string v1, "cypher"

    const/4 v2, -0x1

    .line 1427
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "message"

    .line 1428
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 1429
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 1433
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1435
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    .line 1437
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1438
    :try_start_2
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    :catch_0
    :catchall_1
    :cond_2
    move-object v1, p1

    .line 1447
    :goto_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/p;->h:Z

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    return-object p1
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V
    .locals 8

    .line 308
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 309
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/k;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/p$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/p$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 316
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/e/j;ILcom/bytedance/sdk/openadsdk/core/o$a;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/e/i;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 705
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 709
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/p;->b(Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 714
    :cond_1
    new-instance p2, Lcom/bytedance/sdk/adnet/b/h;

    const/4 v0, 0x1

    const-string v1, "/api/ad/union/dislike_event/"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/bytedance/sdk/adnet/b/h;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 715
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/adnet/b/h;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 716
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/o$b;)V
    .locals 4

    .line 1173
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x3e8

    const-string v0, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    .line 1175
    invoke-interface {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o$b;->a(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 1186
    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1188
    new-instance v0, Lcom/bytedance/sdk/adnet/b/f;

    const/4 v1, 0x1

    const-string v2, "/api/ad/union/sdk/reward_video/reward/"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/af;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/p$6;

    invoke-direct {v3, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/p$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$b;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 1237
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 1238
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/d/i;
    .locals 7

    .line 1453
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h/d;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_7

    .line 1456
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_4

    .line 1459
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/adnet/b/i;->a()Lcom/bytedance/sdk/adnet/b/i;

    move-result-object v0

    .line 1460
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/a;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1461
    new-instance v1, Lcom/bytedance/sdk/adnet/b/f;

    const-string v2, "/api/ad/union/sdk/stats/batch/"

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/af;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, p1, v0}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    .line 1462
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->b()Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    const/16 v2, 0x2710

    .line 1463
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    .line 1462
    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 1464
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    .line 1465
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/e;->c()Lcom/bytedance/sdk/openadsdk/j/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/j/e;->e()Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V

    const-string p1, "error unknown"

    const/4 v1, 0x0

    .line 1472
    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/b/i;->b()Lcom/bytedance/sdk/adnet/core/m;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1474
    new-instance v0, Lcom/bytedance/sdk/openadsdk/d/i;

    invoke-direct {v0, v1, v1, p1, v1}, Lcom/bytedance/sdk/openadsdk/d/i;-><init>(ZILjava/lang/String;Z)V

    return-object v0

    .line 1476
    :cond_2
    iget-object v2, v0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 1477
    iget-object v2, v0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    const-string v4, "code"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1478
    iget-object v4, v0, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "data"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v4, 0x4e20

    if-ne v2, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const v5, 0xea65

    if-ne v2, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1486
    :goto_1
    :try_start_1
    iget-wide v1, v0, Lcom/bytedance/sdk/adnet/core/m;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    long-to-int v1, v1

    .line 1487
    :try_start_2
    iget-object v2, v0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    if-eqz v2, :cond_6

    .line 1488
    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/err/VAdError;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move v0, v1

    move v1, v4

    goto :goto_2

    :catchall_1
    move v1, v4

    const/4 v0, 0x0

    goto :goto_2

    :catchall_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    move v4, v1

    move v1, v0

    .line 1492
    :cond_6
    :goto_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/d/i;

    invoke-direct {v0, v4, v1, p1, v3}, Lcom/bytedance/sdk/openadsdk/d/i;-><init>(ZILjava/lang/String;Z)V

    return-object v0

    :cond_7
    :goto_4
    return-object v1
.end method
