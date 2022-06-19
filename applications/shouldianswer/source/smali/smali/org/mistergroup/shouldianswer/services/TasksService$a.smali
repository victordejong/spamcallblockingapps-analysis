.class public final Lorg/mistergroup/shouldianswer/services/TasksService$a;
.super Ljava/lang/Object;
.source "TasksService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/services/TasksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/TasksService$a;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 135
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "TasksService.scheduleUpdateDB via GCM"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 136
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object p1

    .line 138
    new-instance v2, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;-><init>()V

    .line 139
    const-class v3, Lorg/mistergroup/shouldianswer/services/TasksService;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    const-string v3, "updatedb"

    .line 140
    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 141
    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    const-wide/16 v3, 0x258

    .line 142
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setFlex(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    const/16 v3, 0x3840

    int-to-long v3, v3

    .line 143
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPeriod(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 144
    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    .line 145
    invoke-virtual {v2, v0}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setRequiredNetwork(I)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->build()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v2

    .line 147
    check-cast v2, Lcom/google/android/gms/gcm/Task;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/TasksService$a;Landroid/content/Context;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/services/TasksService$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private final b(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 158
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "TasksService.scheduleServiceKeeper via GCM"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->b(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 159
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object p1

    .line 161
    new-instance v2, Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;-><init>()V

    .line 162
    const-class v3, Lorg/mistergroup/shouldianswer/services/TasksService;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setService(Ljava/lang/Class;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    const-string v3, "servicekeeper"

    .line 163
    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setTag(Ljava/lang/String;)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 164
    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPersisted(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    const/16 v3, 0x258

    int-to-long v3, v3

    .line 165
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setPeriod(J)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->setUpdateCurrent(Z)Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->build()Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v2

    .line 168
    check-cast v2, Lcom/google/android/gms/gcm/Task;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/gcm/GcmNetworkManager;->schedule(Lcom/google/android/gms/gcm/Task;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 171
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/services/TasksService$a;Landroid/content/Context;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/services/TasksService$a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private final c(Landroid/content/Context;)V
    .locals 3

    .line 188
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmNetworkManager;

    move-result-object p1

    const-string v0, "servicekeeper"

    .line 189
    const-class v1, Lorg/mistergroup/shouldianswer/services/TasksService;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/gcm/GcmNetworkManager;->cancelTask(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 191
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/services/TasksService$a;Landroid/content/Context;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/services/TasksService$a;->c(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 122
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/services/TasksService;->a:Lorg/mistergroup/shouldianswer/services/TasksService$a;

    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/services/TasksService$a;->a(Landroid/content/Context;)V

    .line 123
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lorg/mistergroup/shouldianswer/services/TasksService;->a:Lorg/mistergroup/shouldianswer/services/TasksService$a;

    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/services/TasksService$a;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 126
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/services/TasksService;->a:Lorg/mistergroup/shouldianswer/services/TasksService$a;

    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/services/TasksService$a;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
