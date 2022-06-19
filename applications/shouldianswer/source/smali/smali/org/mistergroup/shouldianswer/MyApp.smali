.class public final Lorg/mistergroup/shouldianswer/MyApp;
.super Landroid/app/Application;
.source "MyApp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/MyApp$a;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/g/e;

.field public static b:Lorg/mistergroup/shouldianswer/MyApp;

.field public static final c:Lorg/mistergroup/shouldianswer/MyApp$a;


# instance fields
.field private final d:Lkotlin/e;

.field private final e:Lkotlin/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lorg/mistergroup/shouldianswer/MyApp;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/g/e;

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v3

    const-string v4, "dateFormatDate"

    const-string v5, "getDateFormatDate()Ljava/text/DateFormat;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v2

    check-cast v2, Lkotlin/g/e;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/e/b/l;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v0

    const-string v3, "dateFormatTime"

    const-string v4, "getDateFormatTime()Ljava/text/DateFormat;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/e/b/l;-><init>(Lkotlin/g/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/e/b/n;->a(Lkotlin/e/b/k;)Lkotlin/g/f;

    move-result-object v0

    check-cast v0, Lkotlin/g/e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lorg/mistergroup/shouldianswer/MyApp;->a:[Lkotlin/g/e;

    new-instance v0, Lorg/mistergroup/shouldianswer/MyApp$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/MyApp$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 33
    new-instance v0, Lorg/mistergroup/shouldianswer/MyApp$b;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/MyApp$b;-><init>(Lorg/mistergroup/shouldianswer/MyApp;)V

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/MyApp;->d:Lkotlin/e;

    .line 34
    new-instance v0, Lorg/mistergroup/shouldianswer/MyApp$c;

    invoke-direct {v0, p0}, Lorg/mistergroup/shouldianswer/MyApp$c;-><init>(Lorg/mistergroup/shouldianswer/MyApp;)V

    check-cast v0, Lkotlin/e/a/a;

    invoke-static {v0}, Lkotlin/f;->a(Lkotlin/e/a/a;)Lkotlin/e;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/MyApp;->e:Lkotlin/e;

    .line 37
    move-object v0, p0

    check-cast v0, Lorg/mistergroup/shouldianswer/MyApp;

    sput-object v0, Lorg/mistergroup/shouldianswer/MyApp;->b:Lorg/mistergroup/shouldianswer/MyApp;

    return-void
.end method

.method public static final synthetic d()Lorg/mistergroup/shouldianswer/MyApp;
    .locals 1

    .line 32
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->b:Lorg/mistergroup/shouldianswer/MyApp;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/MyApp;->d:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->a:[Lkotlin/g/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 98
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai;->A()Lorg/mistergroup/shouldianswer/model/ai$a;

    move-result-object p1

    const/4 v0, -0x1

    .line 100
    sget-object v1, Lorg/mistergroup/shouldianswer/b;->a:[I

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ai$a;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 105
    :cond_2
    :goto_0
    invoke-static {v0}, Landroidx/appcompat/app/g;->e(I)V

    goto :goto_2

    .line 107
    :cond_3
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f1100e6

    goto :goto_1

    :cond_4
    const v0, 0x7f1100e5

    .line 108
    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    :goto_2
    return-void
.end method

.method public final b()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Lorg/mistergroup/shouldianswer/MyApp;->e:Lkotlin/e;

    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->a:[Lkotlin/g/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 89
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v0

    sget-object v1, Lorg/mistergroup/shouldianswer/model/af;->a:Lorg/mistergroup/shouldianswer/model/af;

    if-eq v0, v1, :cond_0

    .line 90
    sget-object v0, Lorg/mistergroup/shouldianswer/services/MonitoringService;->a:Lorg/mistergroup/shouldianswer/services/MonitoringService$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/MonitoringService$a;->b()V

    .line 91
    sget-object v0, Lorg/mistergroup/shouldianswer/services/TasksService;->a:Lorg/mistergroup/shouldianswer/services/TasksService$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/TasksService$a;->a()V

    .line 92
    sget-object v0, Lorg/mistergroup/shouldianswer/b/g;->a:Lorg/mistergroup/shouldianswer/b/g;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/b/g;->a()Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x0

    const-string v1, "MyApp.onConfigurationChanged"

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onCreate()V
    .locals 8

    const-string v0, "***************************************************************************"

    .line 41
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 43
    :try_start_0
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Lio/fabric/sdk/android/h;

    const/4 v6, 0x0

    new-instance v7, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v7}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    check-cast v7, Lio/fabric/sdk/android/h;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lio/fabric/sdk/android/c;->a(Landroid/content/Context;[Lio/fabric/sdk/android/h;)Lio/fabric/sdk/android/c;

    move-result-object v4

    const-string v5, "Fabric.with(this, Crashlytics())"

    invoke-static {v4, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lio/fabric/sdk/android/c;)V

    .line 44
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-virtual {p0, v3}, Lorg/mistergroup/shouldianswer/MyApp;->a(Landroid/content/Context;)V

    .line 45
    sget-object v3, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/model/c;->m()Ljava/lang/String;

    move-result-object v3

    .line 46
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    invoke-virtual {v4, v3}, Lorg/mistergroup/shouldianswer/utils/a;->a(Ljava/lang/String;)V

    .line 48
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 49
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 50
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "Welcome to live!"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/g;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/g;->a:Lorg/mistergroup/shouldianswer/utils/g;

    new-instance v5, Ljava/util/Date;

    sget-object v6, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/model/c;->o()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/g;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appVersionCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/r;->a:Lorg/mistergroup/shouldianswer/utils/r;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/r;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apiVer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/model/c;->b:Lorg/mistergroup/shouldianswer/model/c;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/c;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build_model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build_manufacturer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protection Level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->c()Lorg/mistergroup/shouldianswer/model/af;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/af;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialSettings=\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/ai;->L()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission callPhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/o;->e()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission canReadCallLog="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/o;->f()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission canReadPhoneState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/o;->h()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission canProcessOutgoingCalls="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/o;->i()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission canReadContact="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/MyApp;->c()V

    .line 68
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    const-string v3, "FirebaseInstanceId.getInstance()"

    invoke-static {v0, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 69
    sget-object v3, Lorg/mistergroup/shouldianswer/MyApp$d;->a:Lorg/mistergroup/shouldianswer/MyApp$d;

    check-cast v3, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 4

    .line 140
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 141
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "MyApp.onLowMemory"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 8

    .line 114
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 116
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x5

    if-eq p1, v4, :cond_6

    const/16 v5, 0xa

    if-eq p1, v5, :cond_5

    if-eq p1, v3, :cond_4

    const/16 v5, 0x14

    if-eq p1, v5, :cond_3

    const/16 v5, 0x28

    if-eq p1, v5, :cond_2

    const/16 v5, 0x3c

    if-eq p1, v5, :cond_1

    const/16 v5, 0x50

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Complete"

    goto :goto_0

    :cond_1
    const-string v2, "Moderate"

    goto :goto_0

    :cond_2
    const-string v2, "Background"

    goto :goto_0

    :cond_3
    const-string v2, "UI Hidden"

    goto :goto_0

    :cond_4
    const-string v2, "Running Critical"

    goto :goto_0

    :cond_5
    const-string v2, "Running Low"

    goto :goto_0

    :cond_6
    const-string v2, "Running Moderate"

    .line 126
    :goto_0
    sget-object v5, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MyApp.onTrimMemory level="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eq p1, v3, :cond_7

    if-ne p1, v4, :cond_8

    .line 128
    :cond_7
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "MyApp.onTrimMemory optimizing memory usage"

    invoke-static {p1, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 129
    sget-object p1, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a:Lorg/mistergroup/shouldianswer/model/communityDatabase/a;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/a;->a(Z)V

    .line 130
    sget-object p1, Lorg/mistergroup/shouldianswer/model/ae;->a:Lorg/mistergroup/shouldianswer/model/ae;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/ae;->a()V

    .line 131
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/q;->a:Lorg/mistergroup/shouldianswer/utils/q;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/q;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 134
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_8
    :goto_1
    return-void
.end method
