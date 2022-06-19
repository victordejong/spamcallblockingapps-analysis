.class public Le5/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le5/a0;

.field public final c:Landroidx/appcompat/widget/z;

.field public final d:Le5/f;

.field public final e:Le5/e0;

.field public final f:Lx2/f;

.field public final g:Le5/a;

.field public final h:Lf5/b;

.field public final i:Lb5/a;

.field public final j:Ljava/lang/String;

.field public final k:Lc5/a;

.field public final l:Le5/h0;

.field public m:Le5/z;

.field public final n:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le5/f;Le5/e0;Le5/a0;Lx2/f;Landroidx/appcompat/widget/z;Le5/a;Le5/i0;Lf5/b;Lf5/b$b;Le5/h0;Lb5/a;Lc5/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p8, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p8}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p8, p0, Le5/p;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    new-instance p8, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p8}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p8, p0, Le5/p;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    new-instance p8, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p8}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p8, p0, Le5/p;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    new-instance p8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p10, 0x0

    invoke-direct {p8, p10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 6
    iput-object p1, p0, Le5/p;->a:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Le5/p;->d:Le5/f;

    .line 8
    iput-object p3, p0, Le5/p;->e:Le5/e0;

    .line 9
    iput-object p4, p0, Le5/p;->b:Le5/a0;

    .line 10
    iput-object p5, p0, Le5/p;->f:Lx2/f;

    .line 11
    iput-object p6, p0, Le5/p;->c:Landroidx/appcompat/widget/z;

    .line 12
    iput-object p7, p0, Le5/p;->g:Le5/a;

    .line 13
    iput-object p9, p0, Le5/p;->h:Lf5/b;

    .line 14
    iput-object p12, p0, Le5/p;->i:Lb5/a;

    .line 15
    iget-object p1, p7, Le5/a;->g:Lo5/a;

    invoke-virtual {p1}, Lo5/a;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le5/p;->j:Ljava/lang/String;

    .line 16
    iput-object p13, p0, Le5/p;->k:Lc5/a;

    .line 17
    iput-object p11, p0, Le5/p;->l:Le5/h0;

    return-void
.end method

.method public static a(Le5/p;)V
    .locals 35

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 3
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 4
    new-instance v3, Le5/d;

    iget-object v4, v0, Le5/p;->e:Le5/e0;

    invoke-direct {v3, v4}, Le5/d;-><init>(Le5/e0;)V

    .line 5
    sget-object v3, Le5/d;->b:Ljava/lang/String;

    const-string v4, "FirebaseCrashlytics"

    const/4 v5, 0x3

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 7
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 8
    iget-object v5, v0, Le5/p;->i:Lb5/a;

    invoke-interface {v5, v3}, Lb5/a;->g(Ljava/lang/String;)Z

    .line 9
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v13, "18.1.0"

    aput-object v13, v6, v7

    const-string v7, "Crashlytics Android SDK/%s"

    .line 10
    invoke-static {v14, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 11
    iget-object v7, v0, Le5/p;->i:Lb5/a;

    invoke-interface {v7, v3, v6, v1, v2}, Lb5/a;->e(Ljava/lang/String;Ljava/lang/String;J)V

    .line 12
    iget-object v6, v0, Le5/p;->e:Le5/e0;

    .line 13
    iget-object v7, v6, Le5/e0;->c:Ljava/lang/String;

    .line 14
    iget-object v8, v0, Le5/p;->g:Le5/a;

    iget-object v9, v8, Le5/a;->e:Ljava/lang/String;

    .line 15
    iget-object v10, v8, Le5/a;->f:Ljava/lang/String;

    .line 16
    invoke-virtual {v6}, Le5/e0;->c()Ljava/lang/String;

    move-result-object v11

    .line 17
    iget-object v6, v0, Le5/p;->g:Le5/a;

    iget-object v6, v6, Le5/a;->c:Ljava/lang/String;

    const/16 v18, 0x4

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    .line 18
    :cond_0
    invoke-static {v5}, Landroidx/recyclerview/widget/b;->e(I)I

    move-result v12

    .line 19
    iget-object v5, v0, Le5/p;->i:Lb5/a;

    iget-object v8, v0, Le5/p;->j:Ljava/lang/String;

    move-object v6, v3

    move-object/from16 v16, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    move-object/from16 v12, v16

    invoke-interface/range {v5 .. v12}, Lb5/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 21
    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 22
    iget-object v5, v0, Le5/p;->a:Landroid/content/Context;

    .line 23
    invoke-static {v5}, Le5/e;->k(Landroid/content/Context;)Z

    move-result v5

    .line 24
    iget-object v6, v0, Le5/p;->i:Lb5/a;

    invoke-interface {v6, v3, v12, v10, v5}, Lb5/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 25
    iget-object v5, v0, Le5/p;->a:Landroid/content/Context;

    .line 26
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 27
    sget-object v7, Le5/e$a;->a:Le5/e$a;

    sget-object v11, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 28
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x2

    .line 29
    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v11, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 31
    sget-object v9, Le5/e$a;->b:Ljava/util/Map;

    check-cast v9, Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le5/e$a;

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v8

    .line 32
    :goto_0
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    .line 33
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v16

    .line 35
    invoke-static {}, Le5/e;->h()J

    move-result-wide v19

    .line 36
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v8

    move-object/from16 v17, v10

    move-object/from16 v21, v11

    int-to-long v10, v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    move-object/from16 v23, v12

    move-object/from16 v22, v13

    int-to-long v12, v6

    mul-long v12, v12, v10

    .line 37
    invoke-static {v5}, Le5/e;->j(Landroid/content/Context;)Z

    move-result v24

    .line 38
    invoke-static {v5}, Le5/e;->d(Landroid/content/Context;)I

    move-result v25

    .line 39
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 40
    sget-object v11, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 41
    iget-object v5, v0, Le5/p;->i:Lb5/a;

    const/4 v8, 0x3

    move-object v6, v3

    move-object/from16 v26, v4

    const/4 v4, 0x3

    move-object v8, v9

    move-object v4, v9

    move/from16 v9, v16

    move-object/from16 v27, v4

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v4, v17

    move-object/from16 v28, v21

    move-wide/from16 v10, v19

    move-object/from16 v31, v4

    move-object/from16 v4, v22

    move-object/from16 v32, v23

    move-object/from16 v33, v14

    move/from16 v14, v24

    move-object/from16 v34, v15

    move/from16 v15, v25

    move-object/from16 v16, v29

    move-object/from16 v17, v30

    invoke-interface/range {v5 .. v17}, Lb5/a;->c(Ljava/lang/String;ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v5, v0, Le5/p;->h:Lf5/b;

    invoke-virtual {v5, v3}, Lf5/b;->a(Ljava/lang/String;)V

    .line 43
    iget-object v0, v0, Le5/p;->l:Le5/h0;

    .line 44
    iget-object v5, v0, Le5/h0;->a:Le5/x;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v6, Lg5/v;->a:Ljava/nio/charset/Charset;

    .line 46
    new-instance v6, Lg5/b$b;

    invoke-direct {v6}, Lg5/b$b;-><init>()V

    .line 47
    iput-object v4, v6, Lg5/b$b;->a:Ljava/lang/String;

    .line 48
    iget-object v4, v5, Le5/x;->c:Le5/a;

    iget-object v4, v4, Le5/a;->a:Ljava/lang/String;

    const-string v7, "Null gmpAppId"

    .line 49
    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    iput-object v4, v6, Lg5/b$b;->b:Ljava/lang/String;

    .line 51
    iget-object v4, v5, Le5/x;->b:Le5/e0;

    .line 52
    invoke-virtual {v4}, Le5/e0;->c()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Null installationUuid"

    .line 53
    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iput-object v4, v6, Lg5/b$b;->d:Ljava/lang/String;

    .line 55
    iget-object v4, v5, Le5/x;->c:Le5/a;

    iget-object v4, v4, Le5/a;->e:Ljava/lang/String;

    const-string v7, "Null buildVersion"

    .line 56
    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    iput-object v4, v6, Lg5/b$b;->e:Ljava/lang/String;

    .line 58
    iget-object v4, v5, Le5/x;->c:Le5/a;

    iget-object v4, v4, Le5/a;->f:Ljava/lang/String;

    const-string v8, "Null displayVersion"

    .line 59
    invoke-static {v4, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    iput-object v4, v6, Lg5/b$b;->f:Ljava/lang/String;

    .line 61
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v6, Lg5/b$b;->c:Ljava/lang/Integer;

    .line 62
    new-instance v4, Lg5/f$b;

    invoke-direct {v4}, Lg5/f$b;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lg5/f$b;->b(Z)Lg5/v$d$b;

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v4, Lg5/f$b;->c:Ljava/lang/Long;

    const-string v1, "Null identifier"

    .line 64
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    iput-object v3, v4, Lg5/f$b;->b:Ljava/lang/String;

    .line 66
    sget-object v2, Le5/x;->f:Ljava/lang/String;

    const-string v3, "Null generator"

    .line 67
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iput-object v2, v4, Lg5/f$b;->a:Ljava/lang/String;

    .line 69
    iget-object v2, v5, Le5/x;->b:Le5/e0;

    .line 70
    iget-object v9, v2, Le5/e0;->c:Ljava/lang/String;

    .line 71
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v1, v5, Le5/x;->c:Le5/a;

    iget-object v10, v1, Le5/a;->e:Ljava/lang/String;

    const-string v1, "Null version"

    .line 73
    invoke-static {v10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    iget-object v2, v5, Le5/x;->c:Le5/a;

    iget-object v11, v2, Le5/a;->f:Ljava/lang/String;

    .line 75
    iget-object v2, v5, Le5/x;->b:Le5/e0;

    .line 76
    invoke-virtual {v2}, Le5/e0;->c()Ljava/lang/String;

    move-result-object v13

    .line 77
    iget-object v2, v5, Le5/x;->c:Le5/a;

    iget-object v2, v2, Le5/a;->g:Lo5/a;

    invoke-virtual {v2}, Lo5/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const-string v3, "Unity"

    move-object v15, v2

    move-object v14, v3

    goto :goto_1

    :cond_3
    move-object v14, v3

    move-object v15, v14

    .line 78
    :goto_1
    new-instance v2, Lg5/g;

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v16}, Lg5/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg5/v$d$a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg5/g$a;)V

    .line 79
    iput-object v2, v4, Lg5/f$b;->f:Lg5/v$d$a;

    move-object/from16 v2, v32

    .line 80
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v1, v31

    .line 81
    invoke-static {v1, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    iget-object v3, v5, Le5/x;->a:Landroid/content/Context;

    .line 83
    invoke-static {v3}, Le5/e;->k(Landroid/content/Context;)Z

    move-result v3

    .line 84
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v7, v34

    if-nez v7, :cond_4

    const-string v8, " platform"

    goto :goto_2

    :cond_4
    const-string v8, ""

    :goto_2
    if-nez v3, :cond_5

    const-string v9, " jailbroken"

    .line 85
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 87
    new-instance v8, Lg5/t;

    .line 88
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 89
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, v8

    move-object/from16 v21, v2

    move-object/from16 v22, v1

    invoke-direct/range {v19 .. v24}, Lg5/t;-><init>(ILjava/lang/String;Ljava/lang/String;ZLg5/t$a;)V

    .line 90
    iput-object v8, v4, Lg5/f$b;->h:Lg5/v$d$e;

    .line 91
    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 93
    :cond_6
    sget-object v2, Le5/x;->e:Ljava/util/Map;

    move-object/from16 v9, v28

    move-object/from16 v8, v33

    invoke-virtual {v9, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_7

    goto :goto_3

    .line 94
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 95
    :goto_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 96
    invoke-static {}, Le5/e;->h()J

    move-result-wide v8

    .line 97
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v12, v1

    mul-long v10, v10, v12

    .line 98
    iget-object v1, v5, Le5/x;->a:Landroid/content/Context;

    invoke-static {v1}, Le5/e;->j(Landroid/content/Context;)Z

    move-result v1

    .line 99
    iget-object v5, v5, Le5/x;->a:Landroid/content/Context;

    invoke-static {v5}, Le5/e;->d(Landroid/content/Context;)I

    move-result v5

    .line 100
    new-instance v12, Lg5/i$b;

    invoke-direct {v12}, Lg5/i$b;-><init>()V

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v12, Lg5/i$b;->a:Ljava/lang/Integer;

    const-string v3, "Null model"

    move-object/from16 v13, v27

    .line 102
    invoke-static {v13, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    iput-object v13, v12, Lg5/i$b;->b:Ljava/lang/String;

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v12, Lg5/i$b;->c:Ljava/lang/Integer;

    .line 105
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v12, Lg5/i$b;->d:Ljava/lang/Long;

    .line 106
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v12, Lg5/i$b;->e:Ljava/lang/Long;

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v12, Lg5/i$b;->f:Ljava/lang/Boolean;

    .line 108
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v12, Lg5/i$b;->g:Ljava/lang/Integer;

    const-string v1, "Null manufacturer"

    move-object/from16 v2, v29

    .line 109
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iput-object v2, v12, Lg5/i$b;->h:Ljava/lang/String;

    const-string v1, "Null modelClass"

    move-object/from16 v2, v30

    .line 111
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iput-object v2, v12, Lg5/i$b;->i:Ljava/lang/String;

    .line 113
    invoke-virtual {v12}, Lg5/i$b;->a()Lg5/v$d$c;

    move-result-object v1

    .line 114
    iput-object v1, v4, Lg5/f$b;->i:Lg5/v$d$c;

    .line 115
    iput-object v7, v4, Lg5/f$b;->k:Ljava/lang/Integer;

    .line 116
    invoke-virtual {v4}, Lg5/f$b;->a()Lg5/v$d;

    move-result-object v1

    .line 117
    iput-object v1, v6, Lg5/b$b;->g:Lg5/v$d;

    .line 118
    invoke-virtual {v6}, Lg5/b$b;->a()Lg5/v;

    move-result-object v1

    .line 119
    iget-object v0, v0, Le5/h0;->b:Lj5/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    move-object v2, v1

    check-cast v2, Lg5/b;

    .line 121
    iget-object v2, v2, Lg5/b;->h:Lg5/v$d;

    if-nez v2, :cond_8

    move-object/from16 v3, v26

    const/4 v4, 0x3

    .line 122
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_4

    :cond_8
    move-object/from16 v3, v26

    .line 123
    invoke-virtual {v2}, Lg5/v$d;->g()Ljava/lang/String;

    move-result-object v2

    .line 124
    :try_start_0
    invoke-virtual {v0, v2}, Lj5/f;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lj5/f;->g(Ljava/io/File;)Ljava/io/File;

    .line 125
    sget-object v2, Lj5/f;->i:Lh5/a;

    invoke-virtual {v2, v1}, Lh5/a;->g(Lg5/v;)Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/io/File;

    const-string v4, "report"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lj5/f;->j(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 v0, 0x3

    .line 127
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_4
    return-void

    .line 128
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Le5/p;)Lcom/google/android/gms/tasks/Task;
    .locals 12

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebaseCrashlytics"

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Le5/i;->b:Le5/i;

    .line 4
    invoke-virtual {p0}, Le5/p;->g()Ljava/io/File;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/io/File;

    .line 6
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    const/4 v6, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x1

    :try_start_1
    const-string v11, "com.google.firebase.crash.FirebaseCrash"

    .line 8
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x1

    goto :goto_1

    :catch_0
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_1

    :try_start_2
    const-string v7, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    .line 9
    invoke-static {v0, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    invoke-static {v6}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v7

    goto :goto_2

    .line 11
    :cond_1
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 12
    new-instance v8, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v8, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 13
    new-instance v7, Le5/j;

    invoke-direct {v7, p0, v9, v10}, Le5/j;-><init>(Le5/p;J)V

    invoke-static {v8, v7}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v7

    .line 14
    :goto_2
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    const-string v7, "Could not parse app exception timestamp from file "

    .line 15
    invoke-static {v7}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 16
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-static {v0, v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Z)V
    .locals 13

    .line 1
    iget-object v0, p0, Le5/p;->l:Le5/h0;

    invoke-virtual {v0}, Le5/h0;->b()Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "FirebaseCrashlytics"

    if-gt v1, p1, :cond_0

    .line 3
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v4, p0, Le5/p;->i:Lb5/a;

    invoke-interface {v4, v1}, Lb5/a;->h(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 6
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    iget-object v4, p0, Le5/p;->i:Lb5/a;

    .line 8
    invoke-interface {v4, v1}, Lb5/a;->b(Ljava/lang/String;)Lb5/b;

    move-result-object v4

    .line 9
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No minidump data found for session "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    iget-object v4, p0, Le5/p;->i:Lb5/a;

    invoke-interface {v4, v1}, Lb5/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not finalize native session: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v3, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object p1, v5

    .line 16
    :goto_0
    iget-object v0, p0, Le5/p;->l:Le5/h0;

    .line 17
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 18
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 19
    iget-object v0, v0, Le5/h0;->b:Lj5/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v4, Lj5/a;

    invoke-direct {v4, p1}, Lj5/a;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p1, v0, Lj5/f;->b:Ljava/io/File;

    .line 22
    invoke-static {p1, v4}, Lj5/f;->d(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object p1

    .line 23
    sget-object v4, Lj5/f;->j:Ljava/util/Comparator;

    invoke-static {p1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v8, 0x8

    if-gt v4, v8, :cond_3

    goto :goto_2

    .line 25
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v8, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 27
    invoke-static {v9}, Lj5/f;->i(Ljava/io/File;)V

    goto :goto_1

    .line 28
    :cond_4
    invoke-interface {p1, v1, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 29
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 31
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 32
    sget-object v4, Lj5/f;->k:Ljava/io/FilenameFilter;

    invoke-static {v1, v4}, Lj5/f;->e(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v4

    .line 33
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 34
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 35
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 36
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 39
    :try_start_0
    sget-object v10, Lj5/f;->i:Lh5/a;

    invoke-static {v9}, Lj5/f;->h(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :try_start_1
    new-instance v10, Landroid/util/JsonReader;

    new-instance v12, Ljava/io/StringReader;

    invoke-direct {v12, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v12}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    :try_start_2
    invoke-static {v10}, Lh5/a;->c(Landroid/util/JsonReader;)Lg5/v$d$d;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :try_start_3
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 43
    :try_start_4
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v8, :cond_8

    .line 44
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "event"

    .line 45
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_6

    :cond_8
    const/4 v8, 0x1

    goto :goto_4

    :catchall_0
    move-exception v11

    .line 46
    :try_start_5
    invoke-virtual {v10}, Landroid/util/JsonReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v10

    :try_start_6
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v11
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    move-exception v10

    .line 47
    :try_start_7
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11, v10}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v11
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v10

    .line 48
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not add event to report for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 49
    invoke-static {v3, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 50
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v2, "Could not parse event files for session "

    .line 51
    invoke-static {v2}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v3, v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 53
    :cond_a
    new-instance v4, Ljava/io/File;

    const-string v9, "user"

    invoke-direct {v4, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 55
    :try_start_8
    invoke-static {v4}, Lj5/f;->h(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_7

    :catch_2
    move-exception v4

    const-string v9, "Could not read user ID file in "

    .line 56
    invoke-static {v9}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 57
    invoke-static {v3, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    move-object v4, v5

    .line 58
    :goto_7
    new-instance v9, Ljava/io/File;

    const-string v10, "report"

    invoke-direct {v9, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v8, :cond_c

    .line 59
    iget-object v10, v0, Lj5/f;->c:Ljava/io/File;

    goto :goto_8

    :cond_c
    iget-object v10, v0, Lj5/f;->d:Ljava/io/File;

    .line 60
    :goto_8
    :try_start_9
    sget-object v11, Lj5/f;->i:Lh5/a;

    .line 61
    invoke-static {v9}, Lj5/f;->h(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lh5/a;->f(Ljava/lang/String;)Lg5/v;

    move-result-object v12

    .line 62
    invoke-virtual {v12, v6, v7, v8, v4}, Lg5/v;->j(JZLjava/lang/String;)Lg5/v;

    move-result-object v4

    .line 63
    new-instance v8, Lg5/w;

    invoke-direct {v8, v2}, Lg5/w;-><init>(Ljava/util/List;)V

    .line 64
    move-object v2, v4

    check-cast v2, Lg5/b;

    .line 65
    iget-object v2, v2, Lg5/b;->h:Lg5/v$d;

    if-eqz v2, :cond_e

    .line 66
    invoke-virtual {v4}, Lg5/v;->i()Lg5/v$a;

    move-result-object v2

    check-cast v4, Lg5/b;

    .line 67
    iget-object v4, v4, Lg5/b;->h:Lg5/v$d;

    .line 68
    invoke-virtual {v4}, Lg5/v$d;->l()Lg5/v$d$b;

    move-result-object v4

    check-cast v4, Lg5/f$b;

    .line 69
    iput-object v8, v4, Lg5/f$b;->j:Lg5/w;

    .line 70
    invoke-virtual {v4}, Lg5/f$b;->a()Lg5/v$d;

    move-result-object v4

    .line 71
    check-cast v2, Lg5/b$b;

    .line 72
    iput-object v4, v2, Lg5/b$b;->g:Lg5/v$d;

    .line 73
    invoke-virtual {v2}, Lg5/b$b;->a()Lg5/v;

    move-result-object v2

    .line 74
    move-object v4, v2

    check-cast v4, Lg5/b;

    .line 75
    iget-object v4, v4, Lg5/b;->h:Lg5/v$d;

    if-nez v4, :cond_d

    goto :goto_9

    .line 76
    :cond_d
    new-instance v8, Ljava/io/File;

    .line 77
    invoke-static {v10}, Lj5/f;->g(Ljava/io/File;)Ljava/io/File;

    invoke-virtual {v4}, Lg5/v$d;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v11, v2}, Lh5/a;->g(Lg5/v;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v8, v2}, Lj5/f;->j(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_9

    .line 80
    :cond_e
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Reports without sessions cannot have events added to them."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception v2

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not synthesize final report file for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_9
    invoke-static {v1}, Lj5/f;->i(Ljava/io/File;)V

    const/4 v2, 0x2

    goto/16 :goto_3

    .line 84
    :cond_f
    iget-object p1, v0, Lj5/f;->f:Ll5/d;

    .line 85
    check-cast p1, Ll5/c;

    invoke-virtual {p1}, Ll5/c;->b()Lm5/d;

    move-result-object p1

    invoke-interface {p1}, Lm5/d;->a()Lm5/c;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {v0}, Lj5/f;->c()Ljava/util/List;

    move-result-object p1

    .line 87
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_10

    goto :goto_b

    .line 88
    :cond_10
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_a

    :cond_11
    :goto_b
    return-void
.end method

.method public final d(J)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Le5/p;->g()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".ae"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "FirebaseCrashlytics"

    const-string v0, "Could not create app exception marker file."

    .line 2
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le5/p;->d:Le5/f;

    invoke-virtual {v0}, Le5/f;->a()V

    .line 2
    iget-object v0, p0, Le5/p;->m:Le5/z;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le5/z;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "FirebaseCrashlytics"

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "Skipping session finalization because a crash has already occurred."

    .line 4
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_1
    const/4 v0, 0x2

    .line 5
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    :try_start_0
    invoke-virtual {p0, v1}, Le5/p;->c(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return v1

    :catch_0
    return v2
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le5/p;->l:Le5/h0;

    invoke-virtual {v0}, Le5/h0;->b()Ljava/util/List;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Le5/p;->f:Lx2/f;

    invoke-virtual {v0}, Lx2/f;->h()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lm5/a;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le5/p;->l:Le5/h0;

    .line 2
    iget-object v0, v0, Le5/h0;->b:Lj5/f;

    .line 3
    invoke-virtual {v0}, Lj5/f;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    if-nez v0, :cond_0

    const-string p1, "FirebaseCrashlytics"

    .line 4
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    .line 5
    iget-object p1, p0, Le5/p;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "FirebaseCrashlytics"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    .line 8
    iget-object v0, p0, Le5/p;->b:Le5/a0;

    invoke-virtual {v0}, Le5/a0;->a()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    const-string v0, "FirebaseCrashlytics"

    .line 9
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 10
    iget-object v0, p0, Le5/p;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "FirebaseCrashlytics"

    .line 12
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const-string v0, "FirebaseCrashlytics"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 14
    iget-object v0, p0, Le5/p;->n:Lcom/google/android/gms/tasks/TaskCompletionSource;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Le5/p;->b:Le5/a0;

    .line 16
    iget-object v1, v0, Le5/a0;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v0, v0, Le5/a0;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    new-instance v1, Le5/h;

    invoke-direct {v1, p0}, Le5/h;-><init>(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "FirebaseCrashlytics"

    .line 20
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 21
    iget-object v1, p0, Le5/p;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    sget-object v2, Le5/l0;->a:Ljava/util/concurrent/ExecutorService;

    .line 22
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 23
    new-instance v3, Le5/j0;

    invoke-direct {v3, v2}, Le5/j0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 24
    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 25
    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 27
    :goto_0
    new-instance v1, Le5/p$a;

    invoke-direct {v1, p0, p1}, Le5/p$a;-><init>(Le5/p;Lcom/google/android/gms/tasks/Task;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
