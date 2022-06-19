.class public final Lorg/mistergroup/shouldianswer/services/OnCallService$a;
.super Ljava/lang/Object;
.source "OnCallService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/services/OnCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/OnCallService$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/OnCallService$a;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/OnCallService$a;->c()V

    return-void
.end method

.method private final c()V
    .locals 7

    .line 164
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "OnCallService.stop"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 165
    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/OnCallService$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/OnCallService$a;->a()Lorg/mistergroup/shouldianswer/services/OnCallService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 166
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/o;->c()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 167
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "OnCallService.stop stopForeground(STOP_FOREGROUND_REMOVE)"

    invoke-static {v4, v6, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 168
    invoke-virtual {v3, v5}, Lorg/mistergroup/shouldianswer/services/OnCallService;->stopForeground(I)V

    .line 169
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/services/OnCallService;->stopSelf()V

    goto :goto_0

    .line 171
    :cond_0
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v6, "OnCallService.stop stopForeground(true)"

    invoke-static {v4, v6, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 172
    invoke-virtual {v3, v5}, Lorg/mistergroup/shouldianswer/services/OnCallService;->stopForeground(Z)V

    .line 173
    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/services/OnCallService;->stopSelf()V

    .line 176
    :cond_1
    :goto_0
    check-cast v2, Lorg/mistergroup/shouldianswer/services/OnCallService;

    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/services/OnCallService$a;->a(Lorg/mistergroup/shouldianswer/services/OnCallService;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/services/OnCallService;
    .locals 1

    .line 121
    invoke-static {}, Lorg/mistergroup/shouldianswer/services/OnCallService;->a()Lorg/mistergroup/shouldianswer/services/OnCallService;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/mistergroup/shouldianswer/services/OnCallService;)V
    .locals 0

    .line 121
    invoke-static {p1}, Lorg/mistergroup/shouldianswer/services/OnCallService;->a(Lorg/mistergroup/shouldianswer/services/OnCallService;)V

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 145
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-class v4, Lorg/mistergroup/shouldianswer/services/OnCallService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/o;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "OnCallService.start startForegroundService"

    invoke-static {v3, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 148
    sget-object v3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/mistergroup/shouldianswer/MyApp;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 150
    :cond_0
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v4, "OnCallService.start startService"

    invoke-static {v3, v4, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 151
    sget-object v3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/mistergroup/shouldianswer/MyApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 158
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
