.class public Ld2/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ObsoleteSdkInt"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld2/b2$b;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ld2/x0;

.field public c:Z

.field public d:Ld2/f4;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Ld2/b2;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Ld2/x0;

    invoke-direct {v1}, Ld2/x0;-><init>()V

    iput-object v1, p0, Ld2/b2;->b:Ld2/x0;

    .line 4
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 5
    iput-object v1, p0, Ld2/b2;->d:Ld2/f4;

    const-string v1, "android"

    .line 6
    iput-object v1, p0, Ld2/b2;->e:Ljava/lang/String;

    const-string v1, "android_native"

    .line 7
    iput-object v1, p0, Ld2/b2;->f:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Ld2/b2;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/b2;->b:Ld2/x0;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, v0, Ld2/x0;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    .line 5
    new-instance v0, Ld2/b2$a;

    invoke-direct {v0, p0}, Ld2/b2$a;-><init>(Ld2/b2;)V

    const-string v1, "Device.get_info"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method

.method public b(J)Ld2/f4;
    .locals 9

    .line 1
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 2
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Ld2/b2;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "carrier_name"

    invoke-static {v0, v3, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->b()Ld2/o2;

    move-result-object v2

    .line 5
    iget-object v2, v2, Ld2/o2;->c:Ljava/lang/String;

    const-string v3, "data_path"

    .line 6
    invoke-static {v0, v3, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "device_api"

    invoke-static {v0, v3, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 8
    invoke-virtual {p0}, Ld2/b2;->g()Landroid/graphics/Rect;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const-string v4, "screen_width"

    invoke-static {v0, v4, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 10
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const-string v3, "screen_height"

    invoke-static {v0, v3, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 11
    sget-object v2, Ld2/t;->a:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v4, "display_dpi"

    .line 13
    invoke-static {v0, v4, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 14
    sget-object v2, Ld2/t;->a:Landroid/content/Context;

    const/4 v4, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 16
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v5, v6

    .line 17
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v6, v2

    mul-float v5, v5, v5

    mul-float v6, v6, v6

    add-float/2addr v6, v5

    float-to-double v5, v6

    .line 18
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4018000000000000L    # 6.0

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_3

    const-string v2, "tablet"

    goto :goto_3

    :cond_3
    const-string v2, "phone"

    :goto_3
    const-string v5, "device_type"

    .line 19
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v5, "locale_language_code"

    .line 21
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ln"

    .line 23
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    invoke-virtual {p0}, Ld2/b2;->e()Ljava/lang/String;

    move-result-object v2

    const-string v5, "locale_country_code"

    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    invoke-virtual {p0}, Ld2/b2;->e()Ljava/lang/String;

    move-result-object v2

    const-string v5, "locale"

    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, ""

    const-string v5, "mac_address"

    .line 26
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "manufacturer"

    .line 28
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v5, "device_brand"

    .line 29
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->b()Ld2/o2;

    move-result-object v2

    .line 31
    iget-object v2, v2, Ld2/o2;->b:Ljava/lang/String;

    const-string v5, "media_path"

    .line 32
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->b()Ld2/o2;

    move-result-object v2

    .line 34
    iget-object v2, v2, Ld2/o2;->d:Ljava/lang/String;

    const-string v5, "temp_storage_path"

    .line 35
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    sget-object v2, Ld2/t;->a:Landroid/content/Context;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    const-string v5, "activity"

    .line 37
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    if-nez v2, :cond_5

    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    .line 38
    :cond_5
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    :goto_5
    const-string v5, "memory_class"

    .line 39
    invoke-static {v0, v5, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 40
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const/high16 v2, 0x100000

    int-to-long v7, v2

    div-long/2addr v5, v7

    const-string v2, "memory_used_mb"

    .line 42
    :try_start_0
    iget-object v7, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    iget-object v8, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    invoke-virtual {v8, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    monitor-exit v7

    goto :goto_6

    :catchall_0
    move-exception v2

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    const-string v7, "JSON error in ADCJSON putLong(): "

    .line 45
    invoke-static {v7}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 46
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with key: memory_used_mb"

    .line 48
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " and value: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v3, v3, v2, v4}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 53
    :goto_6
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "model"

    .line 54
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v5, "device_model"

    .line 55
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    iget-object v2, p0, Ld2/b2;->f:Ljava/lang/String;

    const-string v5, "sdk_type"

    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "4.6.5"

    const-string v5, "sdk_version"

    .line 57
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    invoke-virtual {v1}, Ld2/f1;->r()Ld2/d1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/d1;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "network_type"

    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "os_version"

    .line 60
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    iget-object v2, p0, Ld2/b2;->e:Ljava/lang/String;

    const-string v5, "os_name"

    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    iget-object v2, p0, Ld2/b2;->e:Ljava/lang/String;

    const-string v5, "platform"

    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "os.arch"

    .line 63
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "arch"

    .line 64
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    invoke-virtual {v1}, Ld2/f1;->s()Ld2/l;

    move-result-object v2

    .line 66
    iget-object v2, v2, Ld2/l;->d:Ld2/f4;

    const-string v5, "user_id"

    .line 67
    invoke-virtual {v2, v5}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "user_id"

    .line 68
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    invoke-virtual {v1}, Ld2/f1;->s()Ld2/l;

    move-result-object v2

    .line 70
    iget-object v2, v2, Ld2/l;->a:Ljava/lang/String;

    const-string v5, "app_id"

    .line 71
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    sget-object v2, Ld2/i3;->a:Ljava/util/concurrent/ExecutorService;

    .line 73
    sget-object v2, Ld2/t;->a:Landroid/content/Context;

    const-string v5, ""

    if-nez v2, :cond_6

    goto :goto_8

    .line 74
    :cond_6
    instance-of v6, v2, Landroid/app/Application;

    if-eqz v6, :cond_7

    .line 75
    move-object v6, v2

    check-cast v6, Landroid/app/Application;

    goto :goto_7

    .line 76
    :cond_7
    move-object v6, v2

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    .line 77
    :goto_7
    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 78
    :try_start_3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 79
    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 80
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :catch_1
    const-string v2, "Failed to retrieve application label."

    .line 81
    invoke-static {v3, v3, v2, v4}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :goto_8
    const-string v2, "app_bundle_name"

    .line 82
    invoke-static {v0, v2, v5}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    invoke-static {}, Ld2/i3;->u()Ljava/lang/String;

    move-result-object v2

    const-string v5, "app_bundle_version"

    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    invoke-virtual {p0}, Ld2/b2;->c()D

    move-result-wide v5

    const-string v2, "battery_level"

    invoke-static {v0, v2, v5, v6}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    .line 85
    sget-object v2, Ld2/t;->a:Landroid/content/Context;

    const-string v5, ""

    if-nez v2, :cond_8

    goto :goto_9

    :cond_8
    const-string v6, "phone"

    .line 86
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_9

    goto :goto_9

    .line 87
    :cond_9
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    :goto_9
    const-string v2, "cell_service_country_code"

    .line 88
    invoke-static {v0, v2, v5}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const-string v5, "timezone_ietf"

    .line 91
    invoke-static {v0, v5, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    const-wide/16 v5, 0xf

    .line 93
    invoke-virtual {v2, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    const v5, 0xea60

    div-int/2addr v2, v5

    const-string v6, "timezone_gmt_m"

    .line 94
    invoke-static {v0, v6, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 95
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 96
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_a

    const/4 v2, 0x0

    goto :goto_a

    .line 97
    :cond_a
    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    div-int/2addr v2, v5

    :goto_a
    const-string v5, "timezone_dst_m"

    .line 98
    invoke-static {v0, v5, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 99
    iget-object v2, p0, Ld2/b2;->d:Ld2/f4;

    const-string v5, "launch_metadata"

    .line 100
    invoke-static {v0, v5, v2}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    .line 101
    iget-object v1, v1, Ld2/f1;->z:Ljava/lang/String;

    const-string v2, "controller_version"

    .line 102
    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    sget-object v1, Ld2/t;->a:Landroid/content/Context;

    const/4 v2, 0x2

    if-nez v1, :cond_b

    goto :goto_b

    .line 104
    :cond_b
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v4, :cond_d

    if-eq v1, v2, :cond_c

    goto :goto_b

    :cond_c
    const/4 v2, 0x1

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    :goto_b
    const-string v1, "current_orientation"

    .line 105
    invoke-static {v0, v1, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 106
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_f

    .line 107
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_c

    :cond_e
    const/4 v2, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v2, 0x1

    :goto_d
    const-string v4, "cleartext_permitted"

    .line 108
    invoke-static {v0, v4, v2}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 109
    invoke-virtual {p0}, Ld2/b2;->f()F

    move-result v2

    float-to-double v4, v2

    const-string v2, "density"

    invoke-static {v0, v2, v4, v5}, Ld2/e4;->f(Ld2/f4;Ljava/lang/String;D)Z

    .line 110
    sget-object v2, Ld2/t;->a:Landroid/content/Context;

    if-eqz v2, :cond_12

    const/16 v4, 0x1d

    if-ge v1, v4, :cond_10

    goto :goto_e

    .line 111
    :cond_10
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x10

    if-eq v1, v2, :cond_12

    const/16 v2, 0x20

    if-eq v1, v2, :cond_11

    goto :goto_e

    :cond_11
    const/4 v3, 0x1

    :cond_12
    :goto_e
    const-string v1, "dark_mode"

    .line 112
    invoke-static {v0, v1, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 113
    new-instance v1, Ld2/d4;

    invoke-direct {v1}, Ld2/d4;-><init>()V

    const-string v2, "com.android.vending"

    .line 114
    invoke-static {v2}, Ld2/i3;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "google"

    .line 115
    invoke-virtual {v1, v2}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;

    :cond_13
    const-string v2, "com.amazon.venezia"

    .line 116
    invoke-static {v2}, Ld2/i3;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "amazon"

    .line 117
    invoke-virtual {v1, v2}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;

    :cond_14
    const-string v2, "com.huawei.appmarket"

    .line 118
    invoke-static {v2}, Ld2/i3;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "huawei"

    .line 119
    invoke-virtual {v1, v2}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;

    :cond_15
    const-string v2, "com.sec.android.app.samsungapps"

    .line 120
    invoke-static {v2}, Ld2/i3;->w(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "samsung"

    .line 121
    invoke-virtual {v1, v2}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;

    :cond_16
    const-string v2, "available_stores"

    .line 122
    invoke-static {v0, v2, v1}, Ld2/e4;->g(Ld2/f4;Ljava/lang/String;Ld2/d4;)Z

    .line 123
    iget-object v1, p0, Ld2/b2;->b:Ld2/x0;

    .line 124
    iget-boolean v2, v1, Ld2/x0;->a:Z

    if-nez v2, :cond_18

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_18

    .line 125
    monitor-enter v1

    .line 126
    :try_start_4
    iget-boolean v2, v1, Ld2/x0;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v2, :cond_17

    .line 127
    :try_start_5
    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_2
    :cond_17
    monitor-exit v1

    goto :goto_f

    :catchall_1
    move-exception p1

    monitor-exit v1

    throw p1

    .line 128
    :cond_18
    :goto_f
    iget-object p1, p0, Ld2/b2;->a:Ljava/lang/String;

    const-string p2, "advertiser_id"

    .line 129
    invoke-static {v0, p2, p1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    iget-boolean p1, p0, Ld2/b2;->c:Z

    const-string p2, "limit_tracking"

    .line 131
    invoke-static {v0, p2, p1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 132
    iget-object p1, p0, Ld2/b2;->a:Ljava/lang/String;

    if-eqz p1, :cond_19

    const-string p2, ""

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 134
    :cond_19
    sget-object p1, Ld2/t;->a:Landroid/content/Context;

    if-nez p1, :cond_1a

    const-string p1, ""

    goto :goto_10

    .line 135
    :cond_1a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "android_id"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    :goto_10
    invoke-static {p1}, Ld2/i3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "android_id_sha1"

    invoke-static {v0, p2, p1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    :cond_1b
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->b()Ld2/o2;

    move-result-object p1

    sget-object p2, Ld2/i3;->a:Ljava/util/concurrent/ExecutorService;

    .line 138
    invoke-virtual {p1}, Ld2/o2;->c()Ld2/f4;

    move-result-object p2

    const-string v1, "adc_alt_id"

    .line 139
    invoke-virtual {p2, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 141
    invoke-static {}, Ld2/i3;->e()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-static {p2, v1, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    iget-object p1, p1, Ld2/o2;->a:Ljava/lang/String;

    .line 145
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AppVersion"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ld2/e4;->s(Ld2/f4;Ljava/lang/String;)Z

    :cond_1c
    const-string p1, "adc_alt_id"

    .line 146
    invoke-static {v0, p1, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0
.end method

.method public c()D
    .locals 6

    .line 1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    const-string v3, "level"

    const/4 v4, -0x1

    .line 4
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "scale"

    .line 5
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_3

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    int-to-double v1, v3

    int-to-double v3, v0

    div-double/2addr v1, v3

    :catch_0
    :cond_3
    :goto_0
    return-wide v1
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "phone"

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    const-string v1, "unknown"

    :cond_2
    return-object v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()F
    .locals 1

    .line 1
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public g()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    sget-object v1, Ld2/t;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "window"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 5
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    :cond_0
    return-object v0
.end method

.method public h()Landroid/graphics/Rect;
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    sget-object v1, Ld2/t;->a:Landroid/content/Context;

    if-eqz v1, :cond_8

    :try_start_0
    const-string v2, "window"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v2, :cond_8

    .line 4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v3, v4, :cond_5

    .line 5
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 6
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 7
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 9
    invoke-virtual {v2, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 10
    invoke-static {v1}, Ld2/i3;->A(Landroid/content/Context;)I

    move-result v2

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const-string v8, "android"

    const-string v9, "dimen"

    if-ne v7, v5, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "navigation_bar_height"

    invoke-virtual {v5, v7, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "navigation_bar_height_landscape"

    invoke-virtual {v5, v7, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :goto_0
    if-lez v5, :cond_1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_1
    iget v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v7

    if-gtz v5, :cond_2

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v3, v2

    invoke-direct {v1, v6, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_4

    :cond_2
    if-lez v1, :cond_4

    if-gt v5, v2, :cond_3

    if-le v1, v2, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    new-instance v5, Landroid/graphics/Rect;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v1, v2

    sub-int/2addr v4, v1

    invoke-direct {v5, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    goto/16 :goto_5

    .line 18
    :cond_4
    :goto_2
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v4, v2

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_4

    .line 19
    :cond_5
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 21
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 23
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x2

    if-le v1, v7, :cond_6

    const/4 v5, 0x2

    :cond_6
    if-ne v5, v8, :cond_7

    .line 24
    new-instance v1, Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    :cond_7
    new-instance v1, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 25
    :goto_3
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v6, v6, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v3

    goto :goto_5

    .line 26
    :catch_0
    :try_start_2
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 27
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    or-int/2addr v3, v4

    .line 28
    invoke-virtual {v1, v3}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 29
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v1, Landroid/graphics/Insets;->right:I

    iget v5, v1, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 30
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v4, v1, Landroid/graphics/Insets;->top:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v4, v1

    sub-int/2addr v2, v4

    .line 31
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v6, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    move-object v0, v1

    :catch_1
    :cond_8
    :goto_5
    return-object v0
.end method
