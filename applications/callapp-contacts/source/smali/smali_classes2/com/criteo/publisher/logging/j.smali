.class public Lcom/criteo/publisher/logging/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/logging/d;


# instance fields
.field private final a:Lcom/criteo/publisher/logging/k;

.field private final b:Lcom/criteo/publisher/f/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f/p<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/criteo/publisher/model/t;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Lcom/criteo/publisher/k/a;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/logging/k;Lcom/criteo/publisher/f/p;Lcom/criteo/publisher/model/t;Ljava/util/concurrent/Executor;Lcom/criteo/publisher/k/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/logging/k;",
            "Lcom/criteo/publisher/f/p<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;",
            "Lcom/criteo/publisher/model/t;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/criteo/publisher/k/a;",
            ")V"
        }
    .end annotation

    const-string v0, "remoteLogRecordsFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendingQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentData"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/j;->a:Lcom/criteo/publisher/logging/k;

    iput-object p2, p0, Lcom/criteo/publisher/logging/j;->b:Lcom/criteo/publisher/f/p;

    iput-object p3, p0, Lcom/criteo/publisher/logging/j;->c:Lcom/criteo/publisher/model/t;

    iput-object p4, p0, Lcom/criteo/publisher/logging/j;->d:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/criteo/publisher/logging/j;->e:Lcom/criteo/publisher/k/a;

    return-void
.end method

.method public static final synthetic a(Lcom/criteo/publisher/logging/j;)Lcom/criteo/publisher/f/p;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/criteo/publisher/logging/j;->b:Lcom/criteo/publisher/f/p;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/criteo/publisher/logging/e;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "tag"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "logMessage"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v3, v0, Lcom/criteo/publisher/logging/j;->e:Lcom/criteo/publisher/k/a;

    invoke-virtual {v3}, Lcom/criteo/publisher/k/a;->a()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 42
    :cond_0
    sget-object v3, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->Companion:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;

    .line 1022
    iget v3, v1, Lcom/criteo/publisher/logging/e;->a:I

    .line 42
    invoke-static {v3}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;->a(I)Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v4, v0, Lcom/criteo/publisher/logging/j;->c:Lcom/criteo/publisher/model/t;

    invoke-virtual {v4}, Lcom/criteo/publisher/model/t;->f()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v4

    const-string v5, "config.remoteLogLevel"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x0

    if-nez v4, :cond_2

    move-object v3, v7

    :cond_2
    if-eqz v3, :cond_b

    .line 43
    iget-object v3, v0, Lcom/criteo/publisher/logging/j;->a:Lcom/criteo/publisher/logging/k;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1060
    sget-object v4, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->Companion:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;

    .line 2022
    iget v4, v1, Lcom/criteo/publisher/logging/e;->a:I

    .line 1060
    invoke-static {v4}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;->a(I)Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v4

    .line 1061
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3023
    iget-object v2, v1, Lcom/criteo/publisher/logging/e;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 3024
    iget-object v2, v1, Lcom/criteo/publisher/logging/e;->c:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    :cond_3
    move-object v2, v7

    goto :goto_3

    .line 2089
    :cond_4
    new-instance v2, Ljava/util/Date;

    iget-object v8, v3, Lcom/criteo/publisher/logging/k;->f:Lcom/criteo/publisher/h;

    invoke-interface {v8}, Lcom/criteo/publisher/h;->a()J

    move-result-wide v8

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 2090
    iget-object v8, v3, Lcom/criteo/publisher/logging/k;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    .line 4023
    iget-object v9, v1, Lcom/criteo/publisher/logging/e;->b:Ljava/lang/String;

    aput-object v9, v8, v5

    .line 4024
    iget-object v5, v1, Lcom/criteo/publisher/logging/e;->c:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    .line 4105
    iget-object v9, v3, Lcom/criteo/publisher/logging/k;->g:Lcom/criteo/publisher/logging/i;

    invoke-virtual {v9, v5}, Lcom/criteo/publisher/logging/i;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Lcom/criteo/publisher/logging/k;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v7

    :goto_1
    aput-object v5, v8, v6

    .line 2095
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "threadId:"

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/criteo/publisher/logging/k;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    aput-object v5, v8, v9

    const/4 v5, 0x3

    aput-object v2, v8, v5

    .line 2092
    invoke-static {v8}, Lkotlin/a/n;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 2099
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v6

    if-eqz v5, :cond_6

    move-object v8, v2

    goto :goto_2

    :cond_6
    move-object v8, v7

    :goto_2
    if-eqz v8, :cond_3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const-string v9, ","

    invoke-static/range {v8 .. v15}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 1067
    new-instance v5, Lcom/criteo/publisher/logging/RemoteLogRecords$b;

    invoke-static {v2}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Lcom/criteo/publisher/logging/RemoteLogRecords$b;-><init>(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;Ljava/util/List;)V

    .line 1069
    new-instance v2, Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    .line 1070
    invoke-static {}, Lcom/criteo/publisher/m0/g;->a()Ljava/lang/String;

    move-result-object v9

    const-string v4, "buildConfigWrapper.sdkVersion"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    iget-object v4, v3, Lcom/criteo/publisher/logging/k;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v4, "context.packageName"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    iget-object v4, v3, Lcom/criteo/publisher/logging/k;->c:Lcom/criteo/publisher/m0/b;

    invoke-virtual {v4}, Lcom/criteo/publisher/m0/b;->b()Ljava/lang/String;

    move-result-object v11

    .line 1073
    iget-object v4, v3, Lcom/criteo/publisher/logging/k;->d:Lcom/criteo/publisher/x;

    .line 5000
    iget-object v4, v4, Lcom/criteo/publisher/x;->b:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    .line 1074
    iget-object v3, v3, Lcom/criteo/publisher/logging/k;->e:Lcom/criteo/publisher/i/c;

    .line 5038
    invoke-virtual {v3}, Lcom/criteo/publisher/i/c;->a()Lcom/criteo/publisher/i/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/criteo/publisher/i/a;->a()I

    move-result v13

    .line 6024
    iget-object v3, v1, Lcom/criteo/publisher/logging/e;->c:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    .line 1075
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    goto :goto_4

    :cond_7
    move-object v14, v7

    .line 6025
    :goto_4
    iget-object v15, v1, Lcom/criteo/publisher/logging/e;->d:Ljava/lang/String;

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "android-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v8, v2

    .line 1069
    invoke-direct/range {v8 .. v16}, Lcom/criteo/publisher/logging/RemoteLogRecords$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    new-instance v1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    invoke-static {v5}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/logging/RemoteLogRecords;-><init>(Lcom/criteo/publisher/logging/RemoteLogRecords$a;Ljava/util/List;)V

    goto :goto_5

    :cond_8
    move-object v1, v7

    :goto_5
    if-eqz v1, :cond_b

    .line 6059
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    :cond_9
    invoke-static {v2, v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 46
    iget-object v2, v0, Lcom/criteo/publisher/logging/j;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/criteo/publisher/logging/j$a;

    invoke-direct {v3, v1, v0}, Lcom/criteo/publisher/logging/j$a;-><init>(Lcom/criteo/publisher/logging/RemoteLogRecords;Lcom/criteo/publisher/logging/j;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 52
    :cond_a
    iget-object v2, v0, Lcom/criteo/publisher/logging/j;->b:Lcom/criteo/publisher/f/p;

    invoke-interface {v2, v1}, Lcom/criteo/publisher/f/p;->a(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method
