.class public final Lorg/mistergroup/shouldianswer/services/MonitoringService$a;
.super Ljava/lang/Object;
.source "MonitoringService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/services/MonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;-><init>()V

    return-void
.end method

.method private final e()V
    .locals 4

    .line 184
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MonitoringService.stop"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 185
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lorg/mistergroup/shouldianswer/services/MonitoringService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->c()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 188
    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->a()Lorg/mistergroup/shouldianswer/services/MonitoringService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->stopForeground(I)V

    .line 190
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->stopSelf()V

    goto :goto_0

    .line 193
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->a()Lorg/mistergroup/shouldianswer/services/MonitoringService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->stopForeground(Z)V

    .line 195
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->stopSelf()V

    .line 199
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    check-cast v1, Lorg/mistergroup/shouldianswer/services/MonitoringService;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->a(Lorg/mistergroup/shouldianswer/services/MonitoringService;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/services/MonitoringService;
    .locals 1

    .line 130
    invoke-static {}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->a()Lorg/mistergroup/shouldianswer/services/MonitoringService;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/mistergroup/shouldianswer/services/MonitoringService;)V
    .locals 0

    .line 130
    invoke-static {p1}, Lorg/mistergroup/shouldianswer/services/MonitoringService;->a(Lorg/mistergroup/shouldianswer/services/MonitoringService;)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 133
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/model/af;->d:Lorg/mistergroup/shouldianswer/model/af;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    .line 134
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/model/a;->b:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v0, v1, :cond_0

    .line 135
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "MonitoringService.start set inCallServiceEnabled to true"

    invoke-static {v0, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 137
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/c;->a(Z)V

    .line 140
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->e()Lorg/mistergroup/shouldianswer/model/a;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/model/a;->c:Lorg/mistergroup/shouldianswer/model/a;

    if-ne v0, v1, :cond_2

    .line 141
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/c;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "MonitoringService.start set inCallServiceEnabled to false"

    invoke-static {v0, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 143
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/model/c;->a(Z)V

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "MonitoringService.start set inCallServiceEnabled to false due passive level"

    invoke-static {v0, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/model/c;->a(Z)V

    .line 152
    :cond_2
    :goto_0
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/model/af;->c:Lorg/mistergroup/shouldianswer/model/af;

    if-eq v0, v1, :cond_3

    .line 153
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "MonitoringService.start - NOT PASSIVE - service not required"

    invoke-static {v0, v1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 158
    :cond_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/mistergroup/shouldianswer/services/MonitoringService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/o;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 172
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "MonitoringService.start startForegroundService"

    invoke-static {v1, v2, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 173
    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/MyApp;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 175
    :cond_4
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "MonitoringService.start startService"

    invoke-static {v1, v2, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 176
    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mistergroup/shouldianswer/MyApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 179
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v1, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final c()V
    .locals 4

    .line 203
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MonitoringService.restart"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 204
    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->e()V

    .line 205
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->b()V

    return-void
.end method

.method public final d()Z
    .locals 1

    .line 207
    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->a()Lorg/mistergroup/shouldianswer/services/MonitoringService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
