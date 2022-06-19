.class public final Lorg/mistergroup/shouldianswer/services/TasksService;
.super Lcom/google/android/gms/gcm/GcmTaskService;
.source "TasksService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/services/TasksService$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/services/TasksService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/services/TasksService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/services/TasksService$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/services/TasksService;->a:Lorg/mistergroup/shouldianswer/services/TasksService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService;-><init>()V

    return-void
.end method

.method private final a()I
    .locals 9

    const-string v0, "TasksService.onUpdateDatabase.end"

    .line 71
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "TasksService.onUpdateDatabase.begin"

    invoke-static {v1, v4, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 74
    :try_start_0
    sget-object v4, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->f()Z

    move-result v4

    .line 75
    sget-object v5, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    invoke-virtual {v5, v4}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->b(Z)Z

    move-result v4

    .line 77
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "TasksService.onUpdateDatabase uploadLocalDatabase"

    invoke-static {v5, v6, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 79
    new-instance v5, Lorg/mistergroup/shouldianswer/services/TasksService$b;

    invoke-direct {v5, v3}, Lorg/mistergroup/shouldianswer/services/TasksService$b;-><init>(Lkotlin/c/c;)V

    check-cast v5, Lkotlin/e/a/m;

    invoke-static {v3, v5, v1, v3}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v5, Lorg/mistergroup/shouldianswer/b/g;->a:Lorg/mistergroup/shouldianswer/b/g;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/b/g;->a()Z

    move-result v5

    if-nez v5, :cond_0

    .line 88
    sget-object v5, Lorg/mistergroup/shouldianswer/b/k;->a:Lorg/mistergroup/shouldianswer/b/k;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/b/k;->a()Z

    :cond_0
    if-eqz v4, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move v5, v1

    .line 92
    :goto_0
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TasksService.onUpdateDatabase result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v4, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v4

    .line 95
    :try_start_2
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v5, v4, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v4, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v1

    :goto_1
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v4, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method private final b()I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "running"

    .line 107
    sget-object v3, Lorg/mistergroup/shouldianswer/services/MonitoringService;->a:Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->a()Lorg/mistergroup/shouldianswer/services/MonitoringService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 109
    sget-object v2, Lorg/mistergroup/shouldianswer/services/MonitoringService;->a:Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->b()V

    goto :goto_0

    .line 111
    :cond_0
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TasksService.onServiceCheck wasRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 113
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 27
    invoke-super {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->onCreate()V

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "TasksService.onCreate"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onInitializeTasks()V
    .locals 4

    .line 32
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "TasksService.onInitializeTasks"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 33
    invoke-super {p0}, Lcom/google/android/gms/gcm/GcmTaskService;->onInitializeTasks()V

    .line 34
    sget-object v0, Lorg/mistergroup/shouldianswer/services/TasksService;->a:Lorg/mistergroup/shouldianswer/services/TasksService$a;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/mistergroup/shouldianswer/services/TasksService$a;->a(Lorg/mistergroup/shouldianswer/services/TasksService$a;Landroid/content/Context;)V

    .line 35
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lorg/mistergroup/shouldianswer/services/TasksService;->a:Lorg/mistergroup/shouldianswer/services/TasksService$a;

    invoke-static {v0, v1}, Lorg/mistergroup/shouldianswer/services/TasksService$a;->b(Lorg/mistergroup/shouldianswer/services/TasksService$a;Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/services/TasksService;->a:Lorg/mistergroup/shouldianswer/services/TasksService$a;

    invoke-static {v0, v1}, Lorg/mistergroup/shouldianswer/services/TasksService$a;->c(Lorg/mistergroup/shouldianswer/services/TasksService$a;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
    .locals 4

    const-string v0, "taskParams"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/TaskParams;->getTag()Ljava/lang/String;

    move-result-object p1

    .line 44
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TASK: TasksService.onRunTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x1

    const-string v1, "updatedb"

    .line 45
    invoke-static {p1, v1, v0}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/TasksService;->a()I

    move-result p1

    return p1

    :cond_0
    const-string v1, "servicekeeper"

    .line 48
    invoke-static {p1, v1, v0}, Lkotlin/i/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/TasksService;->b()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 55
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "TasksService.onStartCommand"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v3, "TasksService.onStartCommand heartbeat"

    invoke-virtual {v2, v3}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 58
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/TasksService;->a()I

    goto :goto_0

    .line 60
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/gcm/GcmTaskService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 64
    sget-object p2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {p2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
