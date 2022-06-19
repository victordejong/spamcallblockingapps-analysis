.class public Lcom/bytedance/sdk/openadsdk/core/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final r:Lcom/bytedance/sdk/openadsdk/core/g;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:I

.field private h:Z

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Landroid/graphics/Bitmap;

.field private l:Lcom/bytedance/sdk/openadsdk/utils/b;

.field private m:[Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

.field private q:Ljava/lang/String;

.field private s:Lcom/bytedance/sdk/openadsdk/b/c;

.field private t:Lcom/bytedance/sdk/openadsdk/core/video/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/g;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/g;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/g;->r:Lcom/bytedance/sdk/openadsdk/core/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->g:I

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->h:Z

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->i:Ljava/util/Set;

    .line 108
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->j:Z

    const/4 v2, 0x0

    .line 110
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g;->k:Landroid/graphics/Bitmap;

    .line 112
    new-instance v2, Lcom/bytedance/sdk/openadsdk/utils/b;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/utils/b;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g;->l:Lcom/bytedance/sdk/openadsdk/utils/b;

    .line 116
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->n:I

    .line 117
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->o:I

    .line 136
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/k/g/a;->a(Landroid/content/Context;)V

    const/4 v1, 0x4

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    .line 142
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 143
    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->l:Lcom/bytedance/sdk/openadsdk/utils/b;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->l:Lcom/bytedance/sdk/openadsdk/utils/b;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .line 581
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 585
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/g;->i(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "time"

    .line 590
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v0, v4, p1

    if-gtz v0, :cond_2

    const-string p1, "value"

    .line 592
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 599
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 554
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "value"

    .line 559
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "time"

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 561
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "sp_global_info"

    .line 562
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 564
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 568
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b()Lcom/bytedance/sdk/openadsdk/core/g;
    .locals 1

    .line 158
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/g;->r:Lcom/bytedance/sdk/openadsdk/core/g;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "appid\u4e0d\u80fd\u4e3a\u7a7a"

    .line 388
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name\u4e0d\u80fd\u4e3a\u7a7a"

    .line 392
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 1

    .line 397
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "keyword\u8d85\u957f, \u6700\u957f\u4e3a1000"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static h(Ljava/lang/String;)V
    .locals 1

    .line 404
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x3e8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "data\u8d85\u957f, \u6700\u957f\u4e3a1000"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static i(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 536
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "sp_global_info"

    .line 537
    invoke-static {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 539
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 541
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 545
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 548
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public a(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 214
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "sdk_coppa"

    if-eqz v0, :cond_1

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sp_global_info"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 217
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 219
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->n:I

    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 448
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sp_global_info"

    const-string v2, "pause_icon"

    .line 451
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->k:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/TTSecAbs;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->p:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 186
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->e(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_global_info"

    const-string v1, "app_id"

    .line 188
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 170
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "sdk_activate_init"

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "sp_global_info"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    const/4 v0, 0x0

    .line 173
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 6

    .line 458
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 459
    array-length v0, p1

    if-lez v0, :cond_3

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    .line 463
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    if-lez v3, :cond_0

    const-string v3, ","

    .line 465
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "sp_global_info"

    const-string v2, "need_clear_task_reset"

    .line 473
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->m:[Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->l:Lcom/bytedance/sdk/openadsdk/utils/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/b;->a()Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 3

    .line 239
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "tt_gdrp"

    if-eqz v0, :cond_0

    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "sp_global_info"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 242
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 202
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->f(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_global_info"

    const-string v1, "name"

    .line 204
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 289
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sp_global_info"

    const-string v2, "is_paid"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 292
    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->c:Z

    return-void
.end method

.method public c(I)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 p1, -0x63

    .line 253
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "global_coppa"

    if-eqz v0, :cond_1

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sp_global_info"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 256
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;I)V

    .line 258
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->o:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 304
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->g(Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_global_info"

    const-string v1, "keywords"

    .line 306
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->d:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 344
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sp_global_info"

    const-string v2, "allow_show_notify"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 347
    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->h:Z

    return-void
.end method

.method public c()Z
    .locals 4

    .line 163
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "sdk_activate_init"

    if-eqz v0, :cond_0

    const-string v0, "sp_global_info"

    .line 164
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 166
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 179
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "app_id"

    .line 180
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 3

    .line 328
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sp_global_info"

    const-string v2, "title_bar_theme"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->g:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 320
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/g;->h(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sp_global_info"

    const-string v1, "extra_data"

    .line 322
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->e:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 3

    .line 432
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sp_global_info"

    const-string v2, "is_use_texture"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 435
    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/g;->j:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 195
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "name"

    .line 196
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 4

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "sdk_coppa"

    if-eqz v0, :cond_0

    const-string v0, "sp_global_info"

    .line 225
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 227
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->n:I

    return v0
.end method

.method public g()I
    .locals 4

    .line 232
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "tt_gdrp"

    if-eqz v0, :cond_0

    const-string v0, "sp_global_info"

    .line 233
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 235
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 4

    .line 266
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "global_coppa"

    const/16 v2, -0x63

    if-eqz v0, :cond_0

    const-string v0, "sp_global_info"

    .line 267
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->o:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 269
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/z;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/z;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/z;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->o:I

    .line 274
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->o:I

    if-ne v0, v2, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/g;->f()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->o:I

    .line 278
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->o:I

    return v0
.end method

.method public i()Z
    .locals 3

    .line 282
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "is_paid"

    .line 283
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 285
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->c:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 297
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "keywords"

    .line 298
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .line 313
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "extra_data"

    .line 314
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 3

    .line 336
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "title_bar_theme"

    .line 337
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 340
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->g:I

    return v0
.end method

.method public m()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->e(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->f(Ljava/lang/String;)V

    return-void
.end method

.method public n()Lcom/bytedance/sdk/openadsdk/b/c;
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->s:Lcom/bytedance/sdk/openadsdk/b/c;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Lcom/bytedance/sdk/openadsdk/b/c;

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/b/c;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->s:Lcom/bytedance/sdk/openadsdk/b/c;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->s:Lcom/bytedance/sdk/openadsdk/b/c;

    return-object v0
.end method

.method public o()Lcom/bytedance/sdk/openadsdk/core/video/b/c;
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->t:Lcom/bytedance/sdk/openadsdk/core/video/b/c;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/b/c;

    const/16 v1, 0xa

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/b/c;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->t:Lcom/bytedance/sdk/openadsdk/core/video/b/c;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->t:Lcom/bytedance/sdk/openadsdk/core/video/b/c;

    return-object v0
.end method

.method public p()Z
    .locals 3

    .line 425
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "is_use_texture"

    .line 426
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 428
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->j:Z

    return v0
.end method

.method public q()Landroid/graphics/Bitmap;
    .locals 3

    .line 439
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "sp_global_info"

    const-string v2, "pause_icon"

    .line 440
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->k:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public r()Lcom/bytedance/sdk/openadsdk/TTSecAbs;
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->p:Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    return-object v0
.end method

.method public s()Z
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->a:Ljava/lang/String;

    const-string v1, "5001121"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 2

    .line 507
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/af;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.union_test.internationad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->q:Ljava/lang/String;

    return-object v0

    .line 520
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/j;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->q:Ljava/lang/String;

    .line 521
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->q:Ljava/lang/String;

    return-object v0

    .line 525
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)V

    .line 527
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g;->q:Ljava/lang/String;

    return-object v0
.end method
