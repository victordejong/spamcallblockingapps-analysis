.class public final Lcom/google/android/gms/common/util/t;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# static fields
.field private static final a:Landroid/content/IntentFilter;

.field private static b:J

.field private static c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/util/t;->a:Landroid/content/IntentFilter;

    .line 32
    const/high16 v0, 0x7fc00000    # Float.NaN

    sput v0, Lcom/google/android/gms/common/util/t;->c:F

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 20
    :goto_0
    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v5, Lcom/google/android/gms/common/util/t;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    if-nez v0, :cond_3

    move v0, v1

    .line 6
    :goto_1
    const/4 v2, 0x3

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/util/m;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    const/4 v2, 0x7

    .line 9
    :cond_2
    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    move v2, v3

    .line 11
    :goto_2
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 12
    if-nez v0, :cond_5

    move v0, v4

    .line 13
    goto :goto_0

    .line 5
    :cond_3
    const-string/jumbo v2, "plugged"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_4
    move v2, v1

    .line 9
    goto :goto_2

    .line 15
    :cond_5
    invoke-static {}, Lcom/google/android/gms/common/util/m;->g()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 16
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 18
    :goto_3
    if-eqz v0, :cond_7

    const/4 v0, 0x2

    .line 19
    :goto_4
    if-eqz v2, :cond_8

    :goto_5
    or-int/2addr v0, v3

    .line 20
    goto :goto_0

    .line 17
    :cond_6
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_3

    :cond_7
    move v0, v1

    .line 18
    goto :goto_4

    :cond_8
    move v3, v1

    .line 19
    goto :goto_5
.end method

.method public static declared-synchronized b(Landroid/content/Context;)F
    .locals 6

    .prologue
    .line 21
    const-class v1, Lcom/google/android/gms/common/util/t;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/google/android/gms/common/util/t;->b:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    sget v0, Lcom/google/android/gms/common/util/t;->c:F

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    sget v0, Lcom/google/android/gms/common/util/t;->c:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_0
    monitor-exit v1

    return v0

    .line 24
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/common/util/t;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    const-string/jumbo v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 27
    const-string/jumbo v3, "scale"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 28
    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    sput v0, Lcom/google/android/gms/common/util/t;->c:F

    .line 29
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/common/util/t;->b:J

    .line 30
    sget v0, Lcom/google/android/gms/common/util/t;->c:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
