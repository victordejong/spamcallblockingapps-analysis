.class public final synthetic Lz4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lz4/a;->a:I

    iput-object p1, p0, Lz4/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lz4/d;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v1, p0

    iget v0, v1, Lz4/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, v1, Lz4/a;->b:Ljava/lang/Object;

    return-object v0

    :goto_0
    iget-object v0, v1, Lz4/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    const-class v0, Lt4/c;

    move-object/from16 v2, p1

    check-cast v2, Lz4/t;

    invoke-virtual {v2, v0}, Lz4/t;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt4/c;

    .line 2
    const-class v3, Lb5/a;

    .line 3
    invoke-virtual {v2, v3}, Lz4/t;->c(Ljava/lang/Class;)Lw5/b;

    move-result-object v3

    .line 4
    const-class v4, Lx4/a;

    .line 5
    invoke-virtual {v2, v4}, Lz4/t;->e(Ljava/lang/Class;)Lw5/a;

    move-result-object v4

    .line 6
    const-class v5, Lx5/e;

    invoke-virtual {v2, v5}, Lz4/t;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx5/e;

    .line 7
    invoke-virtual {v0}, Lt4/c;->a()V

    .line 8
    iget-object v11, v0, Lt4/c;->a:Landroid/content/Context;

    .line 9
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initializing Firebase Crashlytics "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "18.1.0"

    .line 11
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FirebaseCrashlytics"

    const/4 v13, 0x0

    .line 12
    invoke-static {v7, v6, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    new-instance v12, Le5/a0;

    invoke-direct {v12, v0}, Le5/a0;-><init>(Lt4/c;)V

    .line 14
    new-instance v15, Le5/e0;

    invoke-direct {v15, v11, v5, v2, v12}, Le5/e0;-><init>(Landroid/content/Context;Ljava/lang/String;Lx5/e;Le5/a0;)V

    .line 15
    new-instance v6, Lb5/c;

    invoke-direct {v6, v3}, Lb5/c;-><init>(Lw5/b;)V

    .line 16
    new-instance v2, La5/a;

    invoke-direct {v2, v4}, La5/a;-><init>(Lw5/a;)V

    const-string v3, "Crashlytics Exception Handler"

    .line 17
    invoke-static {v3}, Le5/d0;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    .line 18
    new-instance v14, Le5/v;

    .line 19
    new-instance v8, Ly2/l;

    const/4 v9, 0x1

    invoke-direct {v8, v2, v9}, Ly2/l;-><init>(Ljava/lang/Object;I)V

    .line 20
    new-instance v7, Lz2/k;

    const/4 v5, 0x2

    invoke-direct {v7, v2, v5}, Lz2/k;-><init>(Ljava/lang/Object;I)V

    move-object v3, v14

    move-object v4, v0

    const/4 v2, 0x2

    move-object v5, v15

    move-object/from16 v16, v7

    move-object v7, v12

    const/4 v13, 0x1

    move-object/from16 v9, v16

    .line 21
    invoke-direct/range {v3 .. v10}, Le5/v;-><init>(Lt4/c;Le5/e0;Lb5/a;Le5/a0;Ld5/b;Lc5/a;Ljava/util/concurrent/ExecutorService;)V

    .line 22
    invoke-virtual {v0}, Lt4/c;->a()V

    .line 23
    iget-object v0, v0, Lt4/c;->c:Lt4/e;

    .line 24
    iget-object v0, v0, Lt4/e;->b:Ljava/lang/String;

    .line 25
    invoke-static {v11}, Le5/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "FirebaseCrashlytics"

    const/4 v10, 0x3

    .line 26
    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 27
    new-instance v9, Lo5/a;

    invoke-direct {v9, v11}, Lo5/a;-><init>(Landroid/content/Context;)V

    .line 28
    :try_start_0
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-virtual {v15}, Le5/e0;->d()Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v8, 0x0

    .line 31
    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 32
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 33
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, "0.0"

    :cond_0
    move-object/from16 v21, v3

    .line 34
    new-instance v4, Le5/a;

    move-object v3, v4

    move-object/from16 v37, v4

    move-object v4, v0

    const/16 v38, 0x0

    move-object/from16 v8, v22

    move-object/from16 v16, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Le5/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo5/a;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v3, "FirebaseCrashlytics"

    .line 35
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const-string v3, "com.google.firebase.crashlytics.startup"

    .line 36
    invoke-static {v3}, Le5/d0;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 37
    new-instance v4, Lb0/a;

    invoke-direct {v4}, Lb0/a;-><init>()V

    .line 38
    invoke-virtual {v15}, Le5/e0;->d()Ljava/lang/String;

    move-result-object v5

    .line 39
    new-instance v8, Lb0/a;

    invoke-direct {v8}, Lb0/a;-><init>()V

    .line 40
    new-instance v9, Ll5/e;

    invoke-direct {v9, v8}, Ll5/e;-><init>(Lb0/a;)V

    .line 41
    new-instance v10, Li4/j;

    invoke-direct {v10, v11}, Li4/j;-><init>(Landroid/content/Context;)V

    .line 42
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v0, v7, v38

    const-string v13, "https://firebase-settings.crashlytics.com/spi/v2/platforms/android/gmp/%s/settings"

    invoke-static {v6, v13, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 43
    new-instance v13, Lj4/s1;

    invoke-direct {v13, v7, v4}, Lj4/s1;-><init>(Ljava/lang/String;Lb0/a;)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 44
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 45
    invoke-virtual {v15, v7}, Le5/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v38

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 46
    invoke-virtual {v15, v7}, Le5/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x1

    aput-object v7, v4, v16

    const-string v7, "%s/%s"

    .line 47
    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 48
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v15, v6}, Le5/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 49
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v15, v6}, Le5/e0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    .line 50
    invoke-static {v11}, Le5/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v7, v38

    aput-object v0, v7, v16

    aput-object v21, v7, v2

    const/4 v2, 0x3

    aput-object v22, v7, v2

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_2

    .line 52
    aget-object v6, v7, v1

    if-eqz v6, :cond_1

    move-object/from16 v19, v7

    const-string v7, "-"

    move-object/from16 v20, v14

    const-string v14, ""

    .line 53
    invoke-virtual {v6, v7, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    move-object/from16 v19, v7

    move-object/from16 v20, v14

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, v19

    move-object/from16 v14, v20

    const/4 v6, 0x4

    goto :goto_1

    :cond_2
    move-object/from16 v20, v14

    .line 54
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 57
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-static {v1}, Le5/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v5, :cond_5

    const/16 v16, 0x4

    goto :goto_5

    :cond_5
    const/16 v16, 0x1

    .line 60
    :goto_5
    invoke-static/range {v16 .. v16}, Landroidx/recyclerview/widget/b;->e(I)I

    move-result v23

    .line 61
    new-instance v7, Lm5/f;

    move-object/from16 v2, v20

    move-object v14, v7

    move-object v5, v15

    move-object v15, v0

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v23}, Lm5/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le5/f0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    new-instance v0, Ll5/c;

    move-object v5, v0

    move-object v6, v11

    move-object v11, v13

    invoke-direct/range {v5 .. v12}, Ll5/c;-><init>(Landroid/content/Context;Lm5/f;Lb0/a;Ll5/e;Li4/j;Lj4/s1;Le5/a0;)V

    .line 63
    iget-object v1, v0, Ll5/c;->a:Landroid/content/Context;

    invoke-static {v1}, Le5/e;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "existing_instance_identifier"

    const-string v5, ""

    .line 64
    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v4, v0, Ll5/c;->b:Lm5/f;

    iget-object v4, v4, Lm5/f;->f:Ljava/lang/String;

    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    if-nez v1, :cond_6

    .line 67
    invoke-virtual {v0, v4}, Ll5/c;->a(I)Lm5/e;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 68
    iget-object v4, v0, Ll5/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    iget-object v4, v0, Ll5/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 70
    iget-object v1, v1, Lm5/e;->a:Lm5/a;

    .line 71
    invoke-virtual {v4, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 72
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    goto :goto_6

    :cond_6
    const/4 v1, 0x3

    .line 73
    invoke-virtual {v0, v1}, Ll5/c;->a(I)Lm5/e;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 74
    iget-object v1, v0, Ll5/c;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 75
    iget-object v1, v0, Ll5/c;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 76
    iget-object v4, v4, Lm5/e;->a:Lm5/a;

    .line 77
    invoke-virtual {v1, v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 78
    :cond_7
    iget-object v1, v0, Ll5/c;->g:Le5/a0;

    .line 79
    iget-object v4, v1, Le5/a0;->g:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    .line 81
    iget-object v5, v1, Le5/a0;->c:Ljava/lang/Object;

    monitor-enter v5

    .line 82
    :try_start_1
    iget-object v1, v1, Le5/a0;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    sget-object v5, Le5/l0;->a:Ljava/util/concurrent/ExecutorService;

    .line 84
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 85
    new-instance v6, Le5/j0;

    invoke-direct {v6, v5}, Le5/j0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 86
    invoke-virtual {v4, v6}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 87
    invoke-virtual {v1, v6}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 88
    invoke-virtual {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 89
    new-instance v4, Ll5/b;

    invoke-direct {v4, v0}, Ll5/b;-><init>(Ll5/c;)V

    .line 90
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    .line 91
    :goto_6
    new-instance v1, La5/c;

    invoke-direct {v1}, La5/c;-><init>()V

    .line 92
    invoke-virtual {v4, v3, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 93
    iget-object v1, v2, Le5/v;->a:Landroid/content/Context;

    const-string v4, "com.crashlytics.RequireBuildId"

    const/4 v5, 0x1

    .line 94
    invoke-static {v1, v4, v5}, Le5/e;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v4, v37

    .line 95
    iget-object v5, v4, Le5/a;->b:Ljava/lang/String;

    const-string v6, "FirebaseCrashlytics"

    if-nez v1, :cond_8

    const/4 v1, 0x2

    .line 96
    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_7

    .line 97
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_9
    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_e

    .line 98
    :try_start_2
    new-instance v1, Lx2/f;

    iget-object v5, v2, Le5/v;->a:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-direct {v1, v5, v7}, Lx2/f;-><init>(Ljava/lang/Object;I)V

    .line 99
    new-instance v5, Landroidx/appcompat/widget/z;

    const-string v7, "crash_marker"

    invoke-direct {v5, v7, v1}, Landroidx/appcompat/widget/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, v2, Le5/v;->e:Landroidx/appcompat/widget/z;

    .line 100
    new-instance v5, Landroidx/appcompat/widget/z;

    const-string v7, "initialization_marker"

    invoke-direct {v5, v7, v1}, Landroidx/appcompat/widget/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v5, v2, Le5/v;->d:Landroidx/appcompat/widget/z;

    .line 101
    new-instance v31, Le5/i0;

    invoke-direct/range {v31 .. v31}, Le5/i0;-><init>()V

    .line 102
    new-instance v5, Le5/v$b;

    invoke-direct {v5, v1}, Le5/v$b;-><init>(Lx2/f;)V

    .line 103
    new-instance v7, Lf5/b;

    iget-object v8, v2, Le5/v;->a:Landroid/content/Context;

    invoke-direct {v7, v8, v5}, Lf5/b;-><init>(Landroid/content/Context;Lf5/b$b;)V

    .line 104
    new-instance v8, Ln5/a;

    const/16 v9, 0x400

    const/4 v10, 0x1

    new-array v11, v10, [Ln5/c;

    new-instance v12, Lb0/a;

    const/16 v13, 0xa

    invoke-direct {v12, v13}, Lb0/a;-><init>(I)V

    aput-object v12, v11, v38

    invoke-direct {v8, v9, v11}, Ln5/a;-><init>(I[Ln5/c;)V

    .line 105
    iget-object v9, v2, Le5/v;->a:Landroid/content/Context;

    iget-object v11, v2, Le5/v;->g:Le5/e0;

    move-object/from16 v23, v9

    move-object/from16 v24, v11

    move-object/from16 v25, v1

    move-object/from16 v26, v4

    move-object/from16 v27, v7

    move-object/from16 v28, v31

    move-object/from16 v29, v8

    move-object/from16 v30, v0

    .line 106
    invoke-static/range {v23 .. v30}, Le5/h0;->a(Landroid/content/Context;Le5/e0;Lx2/f;Le5/a;Lf5/b;Le5/i0;Ln5/c;Ll5/d;)Le5/h0;

    move-result-object v34

    .line 107
    new-instance v8, Le5/p;

    iget-object v9, v2, Le5/v;->a:Landroid/content/Context;

    iget-object v11, v2, Le5/v;->k:Le5/f;

    iget-object v12, v2, Le5/v;->g:Le5/e0;

    iget-object v13, v2, Le5/v;->b:Le5/a0;

    iget-object v14, v2, Le5/v;->e:Landroidx/appcompat/widget/z;

    iget-object v15, v2, Le5/v;->l:Lb5/a;

    iget-object v10, v2, Le5/v;->i:Lc5/a;

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v1

    move-object/from16 v29, v14

    move-object/from16 v30, v4

    move-object/from16 v32, v7

    move-object/from16 v33, v5

    move-object/from16 v35, v15

    move-object/from16 v36, v10

    invoke-direct/range {v23 .. v36}, Le5/p;-><init>(Landroid/content/Context;Le5/f;Le5/e0;Le5/a0;Lx2/f;Landroidx/appcompat/widget/z;Le5/a;Le5/i0;Lf5/b;Lf5/b$b;Le5/h0;Lb5/a;Lc5/a;)V

    iput-object v8, v2, Le5/v;->f:Le5/p;

    .line 108
    iget-object v1, v2, Le5/v;->d:Landroidx/appcompat/widget/z;

    .line 109
    invoke-virtual {v1}, Landroidx/appcompat/widget/z;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 110
    iget-object v4, v2, Le5/v;->k:Le5/f;

    new-instance v5, Le5/w;

    invoke-direct {v5, v2}, Le5/w;-><init>(Le5/v;)V

    .line 111
    invoke-virtual {v4, v5}, Le5/f;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 112
    :try_start_3
    invoke-static {v4}, Le5/l0;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 113
    :try_start_4
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 114
    :catch_0
    iget-object v4, v2, Le5/v;->f:Le5/p;

    .line 115
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    .line 116
    iget-object v7, v4, Le5/p;->d:Le5/f;

    new-instance v8, Le5/r;

    invoke-direct {v8, v4}, Le5/r;-><init>(Le5/p;)V

    invoke-virtual {v7, v8}, Le5/f;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 117
    new-instance v7, Le5/k;

    invoke-direct {v7, v4}, Le5/k;-><init>(Le5/p;)V

    .line 118
    new-instance v8, Le5/z;

    invoke-direct {v8, v7, v0, v5}, Le5/z;-><init>(Le5/z$a;Ll5/d;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v8, v4, Le5/p;->m:Le5/z;

    .line 119
    invoke-static {v8}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    if-eqz v1, :cond_d

    .line 120
    iget-object v1, v2, Le5/v;->a:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    .line 121
    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_a

    const/4 v9, 0x1

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_c

    const-string v4, "connectivity"

    .line 122
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 123
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 124
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_a

    :cond_b
    const/4 v9, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    const/4 v9, 0x1

    :goto_b
    if-eqz v9, :cond_d

    const/4 v1, 0x3

    .line 125
    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 126
    new-instance v4, Le5/u;

    invoke-direct {v4, v2, v0}, Le5/u;-><init>(Le5/v;Ll5/d;)V

    .line 127
    iget-object v5, v2, Le5/v;->j:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 128
    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-wide/16 v5, 0x4

    .line 129
    :try_start_5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_c

    :cond_d
    const/4 v1, 0x3

    .line 130
    invoke-static {v6, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v9, 0x1

    goto :goto_d

    :catch_1
    const/4 v1, 0x0

    .line 131
    iput-object v1, v2, Le5/v;->f:Le5/p;

    :catch_2
    :goto_c
    const/4 v9, 0x0

    .line 132
    :goto_d
    new-instance v1, La5/d;

    invoke-direct {v1, v9, v2, v0}, La5/d;-><init>(ZLe5/v;Ll5/c;)V

    invoke-static {v3, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    .line 133
    new-instance v13, La5/e;

    invoke-direct {v13, v2}, La5/e;-><init>(Le5/v;)V

    goto :goto_e

    .line 134
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app\'s build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 135
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_3
    const/4 v1, 0x0

    move-object v13, v1

    :goto_e
    return-object v13

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
