.class public Lcom/bytedance/sdk/adnet/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/c/a;
.implements Lcom/bytedance/sdk/adnet/d/i$a;


# static fields
.field private static b:Lcom/bytedance/sdk/adnet/a/a;


# instance fields
.field final a:Lcom/bytedance/sdk/adnet/d/i;

.field private final c:Z

.field private volatile d:Z

.field private e:Z

.field private f:Z

.field private g:J

.field private h:J

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final j:Landroid/content/Context;

.field private volatile k:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->d:Z

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    .line 67
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    const-wide/16 v1, 0x0

    .line 68
    iput-wide v1, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 69
    iput-wide v1, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    .line 71
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z

    .line 77
    new-instance v0, Lcom/bytedance/sdk/adnet/d/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/adnet/d/i;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/adnet/d/i$a;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->a:Lcom/bytedance/sdk/adnet/d/i;

    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    .line 100
    iput-boolean p2, p0, Lcom/bytedance/sdk/adnet/a/a;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/a/a;
    .locals 3

    .line 80
    const-class v0, Lcom/bytedance/sdk/adnet/a/a;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    if-nez v1, :cond_0

    .line 82
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->b(Landroid/content/Context;)Z

    move-result v1

    .line 83
    new-instance v2, Lcom/bytedance/sdk/adnet/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lcom/bytedance/sdk/adnet/a/a;-><init>(Landroid/content/Context;Z)V

    .line 84
    sput-object v2, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    invoke-static {v2}, Lcom/bytedance/sdk/adnet/a;->a(Lcom/bytedance/sdk/adnet/c/a;)V

    .line 86
    :cond_0
    sget-object p0, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(I)V
    .locals 4

    .line 325
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->d()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x66

    if-eqz v0, :cond_3

    .line 326
    array-length v2, v0

    if-gt v2, p1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    aget-object v0, v0, p1

    .line 331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    return-void

    .line 336
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/adnet/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    return-void

    .line 341
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 342
    new-instance v2, Lcom/bytedance/sdk/adnet/b/f;

    new-instance v3, Lcom/bytedance/sdk/adnet/a/a$3;

    invoke-direct {v3, p0, p1}, Lcom/bytedance/sdk/adnet/a/a$3;-><init>(Lcom/bytedance/sdk/adnet/a/a;I)V

    const/4 p1, 0x0

    invoke-direct {v2, p1, v0, v1, v3}, Lcom/bytedance/sdk/adnet/b/f;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/adnet/core/m$a;)V

    new-instance v0, Lcom/bytedance/sdk/adnet/core/e;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/e;-><init>()V

    const/16 v1, 0x2710

    .line 374
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/e;->a(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/core/e;->b(I)Lcom/bytedance/sdk/adnet/core/e;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/adnet/b/f;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    .line 375
    invoke-static {v0}, Lcom/bytedance/sdk/adnet/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/adnet/core/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/Request;->build(Lcom/bytedance/sdk/adnet/core/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 377
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "try app config exception: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppConfig"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/a/a;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 281
    check-cast p1, Ljava/lang/String;

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 285
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    .line 286
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "success"

    .line 287
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 290
    :cond_1
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 291
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    return v1

    :cond_4
    const-string p1, "data"

    .line 296
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    const-string v2, "ss_app_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_refresh_time"

    .line 302
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 309
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/c/e;->a(Lorg/json/JSONObject;)V

    :cond_5
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 305
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/get_domains/v4/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/adnet/c/b;->a(Landroid/content/Context;)Landroid/location/Address;

    move-result-object p1

    .line 395
    new-instance v1, Lcom/bytedance/sdk/adnet/d/h;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/adnet/d/h;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 396
    invoke-virtual {p1}, Landroid/location/Address;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Address;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    const-string v0, "latitude"

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/lang/String;D)V

    .line 398
    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    const-string v0, "longitude"

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/lang/String;D)V

    .line 399
    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p1

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "city"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/adnet/a/a;->d:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    const-string v0, "force"

    .line 404
    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/lang/String;I)V

    .line 408
    :cond_2
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p1, v0, :cond_3

    .line 409
    sget-object p1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0

    .line 411
    :cond_3
    sget-object p1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :goto_0
    const-string v0, "abi"

    .line 413
    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 416
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 418
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/adnet/c/b;->a()I

    move-result p1

    const-string v0, "aid"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/lang/String;I)V

    .line 419
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/adnet/c/b;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "device_platform"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/adnet/c/b;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "channel"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/adnet/c/b;->d()I

    move-result p1

    const-string v0, "version_code"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/lang/String;I)V

    .line 424
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/adnet/c/b;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "custom_info_1"

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/adnet/d/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/d/h;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(I)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->a:Lcom/bytedance/sdk/adnet/d/i;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/d/i;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 128
    sget-object v0, Lcom/bytedance/sdk/adnet/a/a;->b:Lcom/bytedance/sdk/adnet/a/a;

    if-eqz v0, :cond_1

    .line 130
    invoke-static {p0}, Lcom/bytedance/sdk/adnet/d/g;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 131
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/adnet/a/a;->a(Z)V

    return-void

    .line 133
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/adnet/a/a;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->b(I)V

    return-void
.end method

.method private d(Z)V
    .locals 6

    .line 152
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    const-wide/16 v0, 0x0

    .line 156
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 157
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    :cond_1
    if-eqz p1, :cond_2

    const-wide/32 v0, 0xa4cb80

    goto :goto_0

    :cond_2
    const-wide/32 v0, 0x2932e00

    .line 160
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 161
    iget-wide v4, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    sub-long v4, v2, v4

    cmp-long p1, v4, v0

    if-lez p1, :cond_4

    .line 162
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x1d4c0

    cmp-long p1, v2, v0

    if-lez p1, :cond_4

    .line 163
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/d/f;->a(Landroid/content/Context;)Z

    move-result p1

    .line 164
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    .line 165
    :cond_3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->b(Z)Z

    :cond_4
    return-void
.end method

.method private e()Z
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->d()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 317
    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 320
    :cond_0
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/adnet/a/a;->a(I)V

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 233
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 235
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object p1

    .line 242
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->c:Z

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->b()V

    .line 247
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/adnet/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/adnet/a/a;->a(Z)V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 5

    .line 191
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    const-string v1, "TNCManager"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    .line 202
    iget-boolean p1, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    :cond_1
    const-string p1, "doRefresh, error"

    .line 205
    invoke-static {v1, p1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void

    .line 193
    :cond_2
    iput-boolean v2, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    const-string p1, "doRefresh, succ"

    .line 195
    invoke-static {v1, p1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-boolean p1, p0, Lcom/bytedance/sdk/adnet/a/a;->e:Z

    if-eqz p1, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->a()V

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 4

    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->c:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/a/a;->d(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    .line 113
    :try_start_2
    new-instance p1, Lcom/bytedance/sdk/adnet/a/a$1;

    const-string v0, "adnet tryRefreshConfig"

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/adnet/a/a$1;-><init>(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/l/e;->b(Lcom/bytedance/sdk/openadsdk/l/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()V
    .locals 5

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 140
    iget-wide v2, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/e;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)Z
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doRefresh: updating state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TNCManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "doRefresh, already running"

    .line 174
    invoke-static {v1, p1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    if-eqz p1, :cond_1

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->h:J

    .line 180
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/adnet/a/a$2;

    const-string v1, "adnet doRefresh"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/adnet/a/a$2;-><init>(Lcom/bytedance/sdk/adnet/a/a;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/l/e;->b(Lcom/bytedance/sdk/openadsdk/l/g;)V

    return v3
.end method

.method public declared-synchronized c()V
    .locals 5

    monitor-enter p0

    .line 212
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 213
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 214
    :try_start_1
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->k:Z

    .line 215
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/a/a;->j:Landroid/content/Context;

    const-string v1, "ss_app_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_refresh_time"

    const-wide/16 v2, 0x0

    .line 217
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    move-wide v0, v2

    .line 222
    :cond_1
    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/a/a;->g:J

    .line 224
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 225
    invoke-static {}, Lcom/bytedance/sdk/adnet/c/f;->a()Lcom/bytedance/sdk/adnet/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/f;->e()Lcom/bytedance/sdk/adnet/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/c/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Z)V
    .locals 2

    const-string v0, "TNCManager"

    const-string v1, "doRefresh, actual request"

    .line 255
    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/a/a;->c()V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/a/a;->f:Z

    if-nez p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->a:Lcom/bytedance/sdk/adnet/d/i;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/d/i;->sendEmptyMessage(I)Z

    return-void

    .line 264
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/adnet/a/a;->e()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 266
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/a/a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public d()[Ljava/lang/String;
    .locals 2

    .line 271
    invoke-static {}, Lcom/bytedance/sdk/adnet/a;->a()Lcom/bytedance/sdk/adnet/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/adnet/c/b;->f()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :cond_1
    return-object v0
.end method
