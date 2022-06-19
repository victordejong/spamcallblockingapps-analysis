.class public Ld2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ld2/i3;->F()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ld2/s;
    .locals 1

    .line 1
    invoke-static {}, Ld2/t;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 3
    iget-object v0, v0, Ld2/f1;->u:Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/s;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ld2/t;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 6
    iget-object v0, v0, Ld2/f1;->u:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/s;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 8
    new-instance v0, Ld2/s;

    invoke-direct {v0, p0}, Ld2/s;-><init>(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ld2/l;)V
    .locals 13

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v1

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    sget-object v2, Ld2/i3;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "unknown"

    .line 5
    :goto_0
    invoke-static {}, Ld2/i3;->u()Ljava/lang/String;

    move-result-object v2

    .line 6
    sget-object v3, Ld2/t;->a:Landroid/content/Context;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 8
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 9
    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve package info."

    .line 10
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v5

    invoke-virtual {v5}, Ld2/f1;->p()Ld2/h0;

    move-result-object v5

    const/4 v6, 0x1

    .line 13
    invoke-virtual {v5, v4, v4, v3, v6}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 14
    :goto_1
    invoke-virtual {v1}, Ld2/b2;->d()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0}, Ld2/f1;->r()Ld2/d1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/d1;->b()Ljava/lang/String;

    move-result-object v3

    .line 16
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "sessionId"

    const-string v7, "unknown"

    .line 17
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "advertiserId"

    const-string v7, "unknown"

    .line 18
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "countryLocale"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v6

    invoke-virtual {v6}, Ld2/f1;->m()Ld2/b2;

    move-result-object v6

    invoke-virtual {v6}, Ld2/b2;->e()Ljava/lang/String;

    move-result-object v6

    const-string v7, "countryLocaleShort"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v6

    invoke-virtual {v6}, Ld2/f1;->m()Ld2/b2;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v7, "manufacturer"

    .line 23
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v6

    invoke-virtual {v6}, Ld2/f1;->m()Ld2/b2;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "model"

    .line 26
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v6

    invoke-virtual {v6}, Ld2/f1;->m()Ld2/b2;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v7, "osVersion"

    .line 29
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "carrierName"

    .line 30
    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "networkType"

    .line 31
    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v3, "android"

    .line 32
    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appName"

    .line 33
    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "appVersion"

    .line 34
    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "appBuildNumber"

    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p1, Ld2/l;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "appId"

    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "apiLevel"

    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p0

    invoke-virtual {p0}, Ld2/f1;->m()Ld2/b2;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "4.6.5"

    const-string v1, "sdkVersion"

    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "controllerVersion"

    const-string v1, "unknown"

    .line 41
    invoke-virtual {v5, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p0, p1, Ld2/l;->c:Ld2/d4;

    const-string v1, "zoneIds"

    .line 43
    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Ld2/l;->d()Lorg/json/JSONObject;

    move-result-object p0

    .line 45
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Ld2/l;->e()Lorg/json/JSONObject;

    move-result-object p1

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mediation_network"

    .line 48
    monitor-enter p0

    .line 49
    :try_start_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const-string v2, ""

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mediation_network"

    .line 51
    monitor-enter p0

    .line 52
    :try_start_3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v2, "mediationNetwork"

    .line 53
    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mediation_network_version"

    .line 54
    monitor-enter p0

    .line 55
    :try_start_4
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string p0, "mediationNetworkVersion"

    .line 56
    invoke-virtual {v5, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 57
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 58
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :cond_2
    :goto_2
    const-string p0, "plugin"

    .line 59
    monitor-enter p1

    .line 60
    :try_start_7
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const-string v1, ""

    .line 61
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "plugin"

    .line 62
    monitor-enter p1

    .line 63
    :try_start_8
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-string v1, "plugin"

    .line 64
    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "plugin_version"

    .line 65
    monitor-enter p1

    .line 66
    :try_start_9
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-string p1, "pluginVersion"

    .line 67
    invoke-virtual {v5, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 68
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 69
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw p0

    .line 70
    :cond_3
    :goto_3
    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :try_start_c
    new-instance p1, Ld2/d2;

    new-instance v0, Ld2/g4;

    new-instance v1, Ljava/net/URL;

    const-string v2, "https://wd.adcolony.com/logs"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ld2/g4;-><init>(Ljava/net/URL;)V

    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-direct {p1, v0, v1, v5}, Ld2/d2;-><init>(Ld2/g4;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/HashMap;)V

    iput-object p1, p0, Ld2/h0;->d:Ld2/d2;

    const-wide/16 v10, 0x5

    .line 73
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 74
    monitor-enter p1
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_3

    .line 75
    :try_start_d
    iget-object p0, p1, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p1, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result p0

    if-nez p0, :cond_4

    .line 76
    iget-object v6, p1, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Ld2/c2;

    invoke-direct {v7, p1}, Ld2/c2;-><init>(Ld2/d2;)V

    move-wide v8, v10

    invoke-interface/range {v6 .. v12}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p0

    :try_start_e
    monitor-exit p1

    throw p0

    .line 77
    :catch_2
    :cond_4
    :goto_4
    monitor-exit p1
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_5
    return-void

    :catchall_5
    move-exception p0

    .line 79
    :try_start_f
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw p0

    :catchall_6
    move-exception p1

    .line 80
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw p1

    :cond_5
    :goto_6
    return-void
.end method

.method public static c(Landroid/support/v4/media/a;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ld2/b$b;

    invoke-direct {v0, p0, p1}, Ld2/b$b;-><init>(Landroid/support/v4/media/a;Ljava/lang/String;)V

    invoke-static {v0}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static d(Ld2/k;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ld2/b$c;

    invoke-direct {v0, p0, p1}, Ld2/b$c;-><init>(Ld2/k;Ljava/lang/String;)V

    invoke-static {v0}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static varargs e(Landroid/content/Context;Ld2/l;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ld2/z1;->a(ILandroid/os/Bundle;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p0, "Cannot configure AdColony; configuration mechanism requires 5 seconds between attempts."

    .line 2
    invoke-static {v0, v2, p0, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return v0

    :cond_0
    if-nez p0, :cond_1

    .line 3
    sget-object p0, Ld2/t;->a:Landroid/content/Context;

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "Ignoring call to AdColony.configure() as the provided Activity or Application context is null and we do not currently hold a reference to either for our use."

    .line 4
    invoke-static {v0, v2, p0, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return v0

    .line 5
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_3

    .line 6
    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_3
    if-nez p1, :cond_4

    .line 7
    new-instance p1, Ld2/l;

    invoke-direct {p1}, Ld2/l;-><init>()V

    .line 8
    :cond_4
    invoke-static {}, Ld2/t;->f()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ld2/f1;->s()Ld2/l;

    move-result-object v1

    .line 10
    iget-object v1, v1, Ld2/l;->d:Ld2/f4;

    const-string v3, "reconfigurable"

    .line 11
    invoke-static {v1, v3}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 12
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ld2/f1;->s()Ld2/l;

    move-result-object v3

    .line 14
    iget-object v3, v3, Ld2/l;->a:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string p0, "Ignoring call to AdColony.configure() as the app id does not match what was used during the initial configuration."

    .line 16
    invoke-static {v0, v2, p0, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return v0

    .line 17
    :cond_5
    invoke-virtual {v1}, Ld2/f1;->s()Ld2/l;

    move-result-object v1

    .line 18
    iget-object v1, v1, Ld2/l;->b:[Ljava/lang/String;

    .line 19
    sget-object v3, Ld2/i3;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p3, :cond_7

    if-eqz v1, :cond_7

    .line 20
    array-length v3, p3

    array-length v4, v1

    if-eq v3, v4, :cond_6

    goto :goto_0

    .line 21
    :cond_6
    invoke-static {p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 23
    invoke-static {p3, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_8

    const-string p0, "Ignoring call to AdColony.configure() as the same zone ids were used during the previous configuration."

    .line 24
    invoke-static {v0, v2, p0, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return v2

    .line 25
    :cond_8
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "HH:mm:ss:SSS"

    invoke-direct {v1, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 27
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 28
    :goto_2
    array-length v4, p3

    if-ge v1, v4, :cond_a

    .line 29
    aget-object v4, p3, v1

    if-eqz v4, :cond_9

    aget-object v4, p3, v1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v3, 0x0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    const-string v1, ""

    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    if-eqz v3, :cond_b

    goto/16 :goto_9

    .line 31
    :cond_b
    sput-boolean v2, Ld2/t;->c:Z

    .line 32
    invoke-virtual {p1, p2}, Ld2/l;->a(Ljava/lang/String;)Ld2/l;

    .line 33
    invoke-virtual {p1, p3}, Ld2/l;->b([Ljava/lang/String;)Ld2/l;

    .line 34
    invoke-static {p0, p1, v0}, Ld2/t;->b(Landroid/content/Context;Ld2/l;Z)V

    .line 35
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f1;->b()Ld2/o2;

    move-result-object p1

    invoke-virtual {p1}, Ld2/o2;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/adc3/AppInfo"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 36
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    .line 37
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 38
    invoke-static {p0}, Ld2/e4;->q(Ljava/lang/String;)Ld2/f4;

    move-result-object p1

    .line 39
    :cond_c
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    const-string v3, "appId"

    .line 40
    invoke-virtual {p1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v0, "zoneIds"

    .line 42
    invoke-static {p1, v0}, Ld2/e4;->c(Ld2/f4;Ljava/lang/String;)Ld2/d4;

    move-result-object p1

    .line 43
    array-length v0, p3

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_10

    aget-object v4, p3, v3

    .line 44
    iget-object v5, p1, Ld2/d4;->a:Lorg/json/JSONArray;

    monitor-enter v5

    const/4 v6, 0x0

    .line 45
    :goto_4
    :try_start_0
    iget-object v7, p1, Ld2/d4;->a:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_e

    .line 46
    invoke-virtual {p1, v6}, Ld2/d4;->e(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v6, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_e
    const/4 v6, 0x0

    .line 47
    :goto_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_f

    goto :goto_6

    .line 48
    :cond_f
    invoke-virtual {p1, v4}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_10
    const-string p3, "zoneIds"

    .line 50
    invoke-static {v1, p3, p1}, Ld2/e4;->g(Ld2/f4;Ljava/lang/String;Ld2/d4;)Z

    const-string p1, "appId"

    .line 51
    invoke-static {v1, p1, p2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    .line 52
    :cond_11
    new-instance p1, Ld2/d4;

    invoke-direct {p1}, Ld2/d4;-><init>()V

    .line 53
    array-length v3, p3

    :goto_7
    if-ge v0, v3, :cond_12

    aget-object v4, p3, v0

    .line 54
    invoke-virtual {p1, v4}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    const-string p3, "zoneIds"

    .line 55
    invoke-static {v1, p3, p1}, Ld2/e4;->g(Ld2/f4;Ljava/lang/String;Ld2/d4;)Z

    const-string p1, "appId"

    .line 56
    invoke-static {v1, p1, p2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    :goto_8
    invoke-static {v1, p0}, Ld2/e4;->s(Ld2/f4;Ljava/lang/String;)Z

    return v2

    :cond_13
    :goto_9
    const-string p0, "AdColony.configure() called with an empty app or zone id String."

    .line 58
    invoke-static {v0, v0, p0, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return v0
.end method

.method public static f(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    sget-object v0, Ld2/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p0}, Ld2/i3;->m(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static g(J)Ld2/f4;
    .locals 5

    .line 1
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    .line 2
    invoke-static {}, Ld2/r1;->c()Ld2/r1;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ld2/w1;

    .line 3
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4
    new-instance v2, Ld2/q1;

    invoke-direct {v2, v1, v3, v4}, Ld2/q1;-><init>(Ld2/r1;[Ld2/w1;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2, p0, p1}, Ld2/r1;->b(Ld2/a;J)V

    .line 5
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    .line 6
    aget-object p0, v3, p0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Ld2/r1;->c()Ld2/r1;

    move-result-object p0

    .line 8
    iget-object p0, p0, Ld2/r1;->c:Ld2/w1;

    :goto_0
    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {p0}, Ld2/w1;->a()Ld2/f4;

    move-result-object p0

    const-string p1, "odt_payload"

    invoke-static {v0, p1, p0}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    :cond_1
    return-object v0
.end method

.method public static h()Z
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    .line 3
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    .line 4
    :catch_0
    :goto_0
    iget-boolean v3, v2, Ld2/f1;->D:Z

    if-nez v3, :cond_2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    move-wide v3, v5

    :cond_0
    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    const-wide/16 v3, 0x64

    .line 6
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v0, v2, Ld2/f1;->D:Z

    return v0
.end method

.method public static i()Z
    .locals 2

    .line 1
    sget-boolean v0, Ld2/t;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget-object v0, Ld2/t;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Ld2/w;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 5
    :cond_1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v1

    invoke-virtual {v1}, Ld2/k0;->f()V

    .line 7
    invoke-virtual {v0}, Ld2/f1;->e()V

    .line 8
    new-instance v1, Ld2/b$d;

    invoke-direct {v1, v0}, Ld2/b$d;-><init>(Ld2/f1;)V

    invoke-static {v1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    .line 9
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Ld2/f1;->C:Z

    return v1
.end method

.method public static j(Ljava/lang/String;Ld2/k;Ld2/h;Ld2/g;)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "AdColonyAdViewListener is set to null. "

    const-string v3, "It is required to be non null."

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v1, v0, v2, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 3
    :cond_0
    sget-boolean v2, Ld2/t;->c:Z

    if-nez v2, :cond_1

    const-string p2, "Ignoring call to requestAdView as AdColony has not yet been"

    const-string p3, " configured."

    .line 4
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {v1, v0, p2, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 6
    invoke-static {p1, p0}, Ld2/b;->d(Ld2/k;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_1
    iget v2, p2, Ld2/h;->b:I

    if-lez v2, :cond_5

    .line 8
    iget v2, p2, Ld2/h;->a:I

    if-gtz v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "zone_id"

    .line 10
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v0, v2}, Ld2/z1;->a(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    invoke-static {p1, p0}, Ld2/b;->d(Ld2/k;Ljava/lang/String;)V

    return v1

    .line 13
    :cond_3
    new-instance v9, Ld2/i3$c;

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    .line 14
    iget-wide v2, v2, Ld2/f1;->T:J

    .line 15
    invoke-direct {v9, v2, v3}, Ld2/i3$c;-><init>(J)V

    .line 16
    new-instance v2, Ld2/b$e;

    invoke-direct {v2, p1, p0, v9}, Ld2/b$e;-><init>(Ld2/k;Ljava/lang/String;Ld2/i3$c;)V

    .line 17
    invoke-virtual {v9}, Ld2/i3$c;->b()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Ld2/i3;->k(Ljava/lang/Runnable;J)Z

    .line 18
    new-instance v10, Ld2/b$f;

    move-object v3, v10

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Ld2/b$f;-><init>(Ld2/i3$b;Ljava/lang/String;Ld2/k;Ld2/h;Ld2/g;Ld2/i3$c;)V

    .line 19
    invoke-static {v10}, Ld2/b;->f(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 20
    invoke-static {v2}, Ld2/i3;->i(Ld2/i3$b;)Z

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    const-string p2, "Ignoring call to requestAdView as you\'ve provided an AdColonyAdSize"

    const-string p3, " object with an invalid width or height."

    .line 21
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-static {v1, v0, p2, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 23
    invoke-static {p1, p0}, Ld2/b;->d(Ld2/k;Ljava/lang/String;)V

    return v1
.end method

.method public static k(Ljava/lang/String;Landroid/support/v4/media/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Ld2/b;->l(Ljava/lang/String;Landroid/support/v4/media/a;Ld2/g;)Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;Landroid/support/v4/media/a;Ld2/g;)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v2, "AdColonyInterstitialListener is set to null. "

    const-string v3, "It is required to be non null."

    .line 1
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v1, v0, v2, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 3
    :cond_0
    sget-boolean v2, Ld2/t;->c:Z

    if-nez v2, :cond_1

    const-string p2, "Ignoring call to AdColony.requestInterstitial as AdColony has not"

    const-string v2, " yet been configured."

    .line 4
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {v1, v0, p2, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 6
    invoke-static {p1, p0}, Ld2/b;->c(Landroid/support/v4/media/a;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "zone_id"

    .line 8
    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v0, v2}, Ld2/z1;->a(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-static {p1, p0}, Ld2/b;->c(Landroid/support/v4/media/a;Ljava/lang/String;)V

    return v1

    .line 11
    :cond_2
    new-instance v8, Ld2/i3$c;

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    .line 12
    iget-wide v2, v2, Ld2/f1;->T:J

    .line 13
    invoke-direct {v8, v2, v3}, Ld2/i3$c;-><init>(J)V

    .line 14
    new-instance v2, Ld2/b$g;

    invoke-direct {v2, p1, p0, v8}, Ld2/b$g;-><init>(Landroid/support/v4/media/a;Ljava/lang/String;Ld2/i3$c;)V

    .line 15
    invoke-virtual {v8}, Ld2/i3$c;->b()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Ld2/i3;->k(Ljava/lang/Runnable;J)Z

    .line 16
    new-instance v9, Ld2/b$a;

    move-object v3, v9

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Ld2/b$a;-><init>(Ld2/i3$b;Ljava/lang/String;Landroid/support/v4/media/a;Ld2/g;Ld2/i3$c;)V

    .line 17
    invoke-static {v9}, Ld2/b;->f(Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 18
    invoke-static {v2}, Ld2/i3;->i(Ld2/i3$b;)Z

    return v1

    :cond_3
    return v0
.end method

.method public static m(Ld2/r;)Z
    .locals 2

    .line 1
    sget-boolean v0, Ld2/t;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    const-string v0, "Ignoring call to AdColony.setRewardListener() as AdColony has not yet been configured."

    .line 2
    invoke-static {p0, v1, v0, p0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return p0

    .line 3
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 4
    iput-object p0, v0, Ld2/f1;->p:Ld2/r;

    return v1
.end method
