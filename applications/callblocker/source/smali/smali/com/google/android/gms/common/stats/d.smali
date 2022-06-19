.class public Lcom/google/android/gms/common/stats/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# static fields
.field private static a:Lcom/google/android/gms/common/stats/d;

.field private static b:Ljava/lang/Boolean;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/gms/common/stats/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/d;->a:Lcom/google/android/gms/common/stats/d;

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/common/stats/d;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/common/stats/d;
    .locals 1

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/common/stats/d;->a:Lcom/google/android/gms/common/stats/d;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/common/stats/WakeLockEvent;)V
    .locals 2

    .prologue
    .line 41
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/google/android/gms/common/stats/b;->a:Landroid/content/ComponentName;

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string/jumbo v1, "WakeLockTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b()Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/gms/common/stats/d;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/d;->b:Ljava/lang/Boolean;

    .line 52
    :cond_0
    sget-object v0, Lcom/google/android/gms/common/stats/d;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;J)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {}, Lcom/google/android/gms/common/stats/d;->b()Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    const-string/jumbo v3, "WakeLockTracker"

    const-string/jumbo v4, "missing wakeLock key. "

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_3
    const/4 v2, 0x7

    move/from16 v0, p3

    if-eq v2, v0, :cond_4

    const/16 v2, 0x8

    move/from16 v0, p3

    if-eq v2, v0, :cond_4

    const/16 v2, 0xa

    move/from16 v0, p3

    if-eq v2, v0, :cond_4

    const/16 v2, 0xb

    move/from16 v0, p3

    if-ne v2, v0, :cond_0

    .line 22
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 23
    new-instance v2, Lcom/google/android/gms/common/stats/WakeLockEvent;

    .line 24
    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/stats/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 26
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/util/t;->a(Landroid/content/Context;)I

    move-result v12

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/stats/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 28
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/util/t;->b(Landroid/content/Context;)F

    move-result v15

    const/16 v19, 0x0

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move-object/from16 v9, p2

    move-object/from16 v13, p5

    move-wide/from16 v16, p9

    move-object/from16 v18, p6

    invoke-direct/range {v2 .. v19}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V

    .line 29
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/gms/common/stats/d;->a(Landroid/content/Context;Lcom/google/android/gms/common/stats/WakeLockEvent;)V

    goto :goto_0
.end method
