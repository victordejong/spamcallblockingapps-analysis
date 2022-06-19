.class public Le5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Date;

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/lang/Thread;

.field public final synthetic d:Ll5/d;

.field public final synthetic e:Le5/p;


# direct methods
.method public constructor <init>(Le5/p;Ljava/util/Date;Ljava/lang/Throwable;Ljava/lang/Thread;Ll5/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le5/m;->e:Le5/p;

    iput-object p2, p0, Le5/m;->a:Ljava/util/Date;

    iput-object p3, p0, Le5/m;->b:Ljava/lang/Throwable;

    iput-object p4, p0, Le5/m;->c:Ljava/lang/Thread;

    iput-object p5, p0, Le5/m;->d:Ll5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le5/m;->a:Ljava/util/Date;

    .line 2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 3
    iget-object v0, v1, Le5/m;->e:Le5/p;

    .line 4
    invoke-virtual {v0}, Le5/p;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    move-object v2, v1

    goto/16 :goto_19

    .line 6
    :cond_0
    iget-object v5, v1, Le5/m;->e:Le5/p;

    .line 7
    iget-object v5, v5, Le5/p;->c:Landroidx/appcompat/widget/z;

    .line 8
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :try_start_0
    invoke-virtual {v5}, Landroidx/appcompat/widget/z;->a()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 10
    :goto_0
    iget-object v5, v1, Le5/m;->e:Le5/p;

    .line 11
    iget-object v5, v5, Le5/p;->l:Le5/h0;

    .line 12
    iget-object v6, v1, Le5/m;->b:Ljava/lang/Throwable;

    iget-object v7, v1, Le5/m;->c:Ljava/lang/Thread;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "FirebaseCrashlytics"

    const/4 v9, 0x2

    .line 13
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    iget-object v9, v5, Le5/h0;->a:Le5/x;

    .line 15
    iget-object v10, v9, Le5/x;->a:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    .line 16
    new-instance v11, Lt/c;

    iget-object v12, v9, Le5/x;->d:Ln5/c;

    invoke-direct {v11, v6, v12}, Lt/c;-><init>(Ljava/lang/Throwable;Ln5/c;)V

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 18
    iget-object v3, v9, Le5/x;->c:Le5/a;

    iget-object v3, v3, Le5/a;->d:Ljava/lang/String;

    iget-object v6, v9, Le5/x;->a:Landroid/content/Context;

    const-string v12, "activity"

    .line 19
    invoke-virtual {v6, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 20
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 21
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 22
    iget-object v14, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_2
    move-object v13, v0

    :goto_1
    if-eqz v13, :cond_4

    .line 23
    iget v0, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-eq v0, v6, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 24
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_4
    move-object/from16 v16, v0

    .line 25
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v13, v11, Lt/c;->c:Ljava/lang/Object;

    check-cast v13, [Ljava/lang/StackTraceElement;

    const/4 v14, 0x4

    .line 28
    invoke-virtual {v9, v7, v13, v14}, Le5/x;->c(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Lg5/v$d$d$a$b$d;

    move-result-object v13

    .line 29
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v13

    .line 31
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Thread;

    .line 33
    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 34
    iget-object v3, v9, Le5/x;->d:Ln5/c;

    .line 35
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/StackTraceElement;

    invoke-interface {v3, v14}, Ln5/c;->b([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v14, 0x0

    .line 36
    invoke-virtual {v9, v15, v3, v14}, Le5/x;->c(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;I)Lg5/v$d$d$a$b$d;

    move-result-object v3

    .line 37
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    .line 38
    new-instance v3, Lg5/w;

    invoke-direct {v3, v6}, Lg5/w;-><init>(Ljava/util/List;)V

    const/16 v6, 0x8

    const/4 v7, 0x4

    .line 39
    invoke-virtual {v9, v11, v7, v6, v14}, Le5/x;->a(Lt/c;III)Lg5/v$d$d$a$b$b;

    move-result-object v19

    const-wide/16 v6, 0x0

    .line 40
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v23, ""

    if-nez v11, :cond_7

    const-string v13, " address"

    goto :goto_4

    :cond_7
    move-object/from16 v13, v23

    .line 41
    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    const-string v15, "Missing required properties:"

    if-eqz v14, :cond_23

    .line 42
    new-instance v20, Lg5/o;

    .line 43
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    const/16 v29, 0x0

    const-string v25, "0"

    const-string v26, "0"

    move-object/from16 v24, v20

    invoke-direct/range {v24 .. v29}, Lg5/o;-><init>(Ljava/lang/String;Ljava/lang/String;JLg5/o$a;)V

    const/4 v11, 0x1

    new-array v11, v11, [Lg5/v$d$d$a$b$a;

    .line 44
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 45
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 46
    iget-object v7, v9, Le5/x;->c:Le5/a;

    iget-object v7, v7, Le5/a;->d:Ljava/lang/String;

    const-string v14, "Null name"

    .line 47
    invoke-static {v7, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iget-object v14, v9, Le5/x;->c:Le5/a;

    iget-object v14, v14, Le5/a;->b:Ljava/lang/String;

    if-nez v13, :cond_8

    const-string v17, " baseAddress"

    move-object/from16 v32, v15

    move-object/from16 v15, v17

    goto :goto_5

    :cond_8
    move-object/from16 v32, v15

    move-object/from16 v15, v23

    :goto_5
    if-nez v6, :cond_9

    const-string v1, " size"

    .line 49
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 50
    :cond_9
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 51
    new-instance v1, Lg5/m;

    .line 52
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 53
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    const/16 v31, 0x0

    move-object/from16 v24, v1

    move-object/from16 v29, v7

    move-object/from16 v30, v14

    invoke-direct/range {v24 .. v31}, Lg5/m;-><init>(JJLjava/lang/String;Ljava/lang/String;Lg5/m$a;)V

    const/4 v6, 0x0

    aput-object v1, v11, v6

    .line 54
    new-instance v1, Lg5/w;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Lg5/w;-><init>(Ljava/util/List;)V

    .line 55
    new-instance v14, Lg5/l;

    const/16 v22, 0x0

    move-object/from16 v17, v14

    move-object/from16 v18, v3

    move-object/from16 v21, v1

    invoke-direct/range {v17 .. v22}, Lg5/l;-><init>(Lg5/w;Lg5/v$d$d$a$b$b;Lg5/v$d$d$a$b$c;Lg5/w;Lg5/l$a;)V

    if-nez v0, :cond_a

    const-string v1, " uiOrientation"

    goto :goto_6

    :cond_a
    move-object/from16 v1, v23

    .line 56
    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 57
    new-instance v1, Lg5/k;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object v13, v1

    move-object/from16 v0, v32

    invoke-direct/range {v13 .. v18}, Lg5/k;-><init>(Lg5/v$d$d$a$b;Lg5/w;Ljava/lang/Boolean;ILg5/k$a;)V

    .line 59
    iget-object v3, v9, Le5/x;->a:Landroid/content/Context;

    .line 60
    :try_start_1
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 61
    invoke-virtual {v3, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_10

    const-string v6, "status"

    const/4 v7, -0x1

    .line 62
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v6, v7, :cond_b

    goto :goto_7

    :cond_b
    const/4 v11, 0x2

    if-eq v6, v11, :cond_d

    const/4 v11, 0x5

    if-ne v6, v11, :cond_c

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v6, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 v6, 0x1

    :goto_9
    :try_start_2
    const-string v11, "level"

    .line 63
    invoke-virtual {v3, v11, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string v13, "scale"

    .line 64
    invoke-virtual {v3, v13, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v11, v7, :cond_f

    if-ne v3, v7, :cond_e

    goto :goto_a

    :cond_e
    int-to-float v7, v11

    int-to-float v3, v3

    div-float/2addr v7, v3

    .line 65
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    :cond_f
    :goto_a
    const/4 v3, 0x0

    goto :goto_b

    :catch_2
    :cond_10
    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_b
    if-eqz v3, :cond_11

    .line 66
    invoke-virtual {v3}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_c

    :cond_11
    const/4 v7, 0x0

    :goto_c
    if-eqz v6, :cond_14

    if-nez v3, :cond_12

    goto :goto_d

    .line 67
    :cond_12
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v13, v3

    const-wide v15, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v3, v13, v15

    if-gez v3, :cond_13

    const/4 v3, 0x2

    goto :goto_e

    :cond_13
    const/4 v3, 0x3

    goto :goto_e

    :cond_14
    :goto_d
    const/4 v3, 0x1

    .line 68
    :goto_e
    iget-object v6, v9, Le5/x;->a:Landroid/content/Context;

    .line 69
    invoke-static {v6}, Le5/e;->j(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_f

    :cond_15
    const-string v11, "sensor"

    .line 70
    invoke-virtual {v6, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/SensorManager;

    const/16 v11, 0x8

    .line 71
    invoke-virtual {v6, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    goto :goto_10

    :cond_16
    :goto_f
    const/4 v6, 0x0

    .line 72
    :goto_10
    invoke-static {}, Le5/e;->h()J

    move-result-wide v13

    iget-object v9, v9, Le5/x;->a:Landroid/content/Context;

    .line 73
    new-instance v11, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v11}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 74
    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    invoke-virtual {v9, v11}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 75
    iget-wide v11, v11, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr v13, v11

    .line 76
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 77
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    move-object/from16 v32, v0

    move-object v12, v1

    int-to-long v0, v9

    .line 79
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    move-object/from16 v16, v8

    int-to-long v8, v9

    mul-long v8, v8, v0

    .line 80
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    move-object v15, v12

    int-to-long v11, v11

    mul-long v0, v0, v11

    sub-long/2addr v8, v0

    .line 81
    new-instance v0, Lg5/r$b;

    invoke-direct {v0}, Lg5/r$b;-><init>()V

    .line 82
    iput-object v7, v0, Lg5/r$b;->a:Ljava/lang/Double;

    .line 83
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lg5/r$b;->b:Ljava/lang/Integer;

    .line 84
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lg5/r$b;->c:Ljava/lang/Boolean;

    .line 85
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lg5/r$b;->d:Ljava/lang/Integer;

    .line 86
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lg5/r$b;->e:Ljava/lang/Long;

    .line 87
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lg5/r$b;->f:Ljava/lang/Long;

    .line 88
    invoke-virtual {v0}, Lg5/r$b;->a()Lg5/v$d$d$b;

    move-result-object v11

    const-string v0, " timestamp"

    if-nez v2, :cond_17

    move-object v1, v0

    goto :goto_11

    :cond_17
    move-object/from16 v1, v23

    .line 89
    :goto_11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 90
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 92
    iget-object v2, v5, Le5/h0;->d:Lf5/b;

    .line 93
    iget-object v2, v2, Lf5/b;->c:Lf5/a;

    invoke-interface {v2}, Lf5/a;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 94
    new-instance v3, Lg5/s;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, Lg5/s;-><init>(Ljava/lang/String;Lg5/s$a;)V

    move-object v12, v3

    move-object/from16 v3, v16

    goto :goto_12

    :cond_18
    const/4 v2, 0x2

    move-object/from16 v3, v16

    .line 95
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v2, 0x0

    move-object v12, v2

    .line 96
    :goto_12
    iget-object v2, v5, Le5/h0;->e:Le5/i0;

    .line 97
    iget-object v2, v2, Le5/i0;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 98
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 100
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "Null key"

    .line 102
    invoke-static {v8, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, "Null value"

    .line 104
    invoke-static {v7, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    new-instance v9, Lg5/c;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v7, v10}, Lg5/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lg5/c$a;)V

    .line 106
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 107
    :cond_19
    sget-object v2, Le5/g0;->a:Le5/g0;

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 109
    invoke-virtual {v15}, Lg5/k;->e()Lg5/v$d$d$a$a;

    move-result-object v2

    .line 110
    new-instance v7, Lg5/w;

    invoke-direct {v7, v6}, Lg5/w;-><init>(Ljava/util/List;)V

    .line 111
    check-cast v2, Lg5/k$b;

    .line 112
    iput-object v7, v2, Lg5/k$b;->b:Lg5/w;

    .line 113
    invoke-virtual {v2}, Lg5/k$b;->a()Lg5/v$d$d$a;

    move-result-object v2

    move-object v10, v2

    goto :goto_14

    :cond_1a
    move-object v10, v15

    .line 114
    :goto_14
    iget-object v2, v5, Le5/h0;->b:Lj5/f;

    if-nez v1, :cond_1b

    goto :goto_15

    :cond_1b
    move-object/from16 v0, v23

    .line 115
    :goto_15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 116
    new-instance v0, Lg5/j;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v13, 0x0

    const-string v9, "crash"

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Lg5/j;-><init>(JLjava/lang/String;Lg5/v$d$d$a;Lg5/v$d$d$b;Lg5/v$d$d$c;Lg5/j$a;)V

    .line 118
    iget-object v1, v2, Lj5/f;->f:Ll5/d;

    .line 119
    check-cast v1, Ll5/c;

    invoke-virtual {v1}, Ll5/c;->b()Lm5/d;

    move-result-object v1

    invoke-interface {v1}, Lm5/d;->a()Lm5/c;

    move-result-object v1

    iget v1, v1, Lm5/c;->a:I

    .line 120
    invoke-virtual {v2, v4}, Lj5/f;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 121
    sget-object v6, Lj5/f;->i:Lh5/a;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v6, Lh5/a;->a:Lr5/a;

    check-cast v6, Lt5/d;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 124
    :try_start_3
    invoke-virtual {v6, v0, v7}, Lt5/d;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 125
    :catch_3
    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v2, v2, Lj5/f;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    .line 127
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const-string v2, "%010d"

    invoke-static {v6, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "event"

    const-string v7, "_"

    .line 128
    invoke-static {v6, v2, v7}, Landroid/support/v4/media/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    :try_start_4
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lj5/f;->j(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_16

    :catch_4
    move-exception v0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not persist event for session "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :goto_16
    sget-object v0, Lj5/c;->a:Lj5/c;

    .line 133
    invoke-static {v5, v0}, Lj5/f;->e(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 134
    sget-object v2, Lj5/e;->a:Lj5/e;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 136
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-gt v2, v1, :cond_1c

    goto :goto_18

    .line 137
    :cond_1c
    invoke-static {v3}, Lj5/f;->i(Ljava/io/File;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_1d
    :goto_18
    move-object/from16 v2, p0

    .line 138
    iget-object v0, v2, Le5/m;->e:Le5/p;

    iget-object v1, v2, Le5/m;->a:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 139
    invoke-virtual {v0, v3, v4}, Le5/p;->d(J)V

    .line 140
    iget-object v0, v2, Le5/m;->e:Le5/p;

    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Le5/p;->c(Z)V

    .line 142
    iget-object v0, v2, Le5/m;->e:Le5/p;

    invoke-static {v0}, Le5/p;->a(Le5/p;)V

    .line 143
    iget-object v0, v2, Le5/m;->e:Le5/p;

    .line 144
    iget-object v0, v0, Le5/p;->b:Le5/a0;

    .line 145
    invoke-virtual {v0}, Le5/a0;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    .line 146
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_19

    .line 147
    :cond_1e
    iget-object v0, v2, Le5/m;->e:Le5/p;

    .line 148
    iget-object v0, v0, Le5/p;->d:Le5/f;

    .line 149
    iget-object v0, v0, Le5/f;->a:Ljava/util/concurrent/Executor;

    .line 150
    iget-object v1, v2, Le5/m;->d:Ll5/d;

    .line 151
    check-cast v1, Ll5/c;

    .line 152
    iget-object v1, v1, Ll5/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 153
    new-instance v3, Le5/l;

    invoke-direct {v3, v2, v0}, Le5/l;-><init>(Le5/m;Ljava/util/concurrent/Executor;)V

    .line 154
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1f
    move-object/from16 v2, p0

    .line 155
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object/from16 v3, v32

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    move-object/from16 v2, p0

    move-object/from16 v3, v32

    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move-object/from16 v2, p0

    move-object/from16 v3, v32

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    move-object/from16 v2, p0

    move-object/from16 v3, v32

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3, v15}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move-object v2, v1

    move-object v3, v15

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3, v13}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
