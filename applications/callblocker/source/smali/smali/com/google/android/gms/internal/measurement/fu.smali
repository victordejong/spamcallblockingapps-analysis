.class public final Lcom/google/android/gms/internal/measurement/fu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;


# instance fields
.field private final a:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fu;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/fu;->b:Ljava/lang/reflect/Method;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fu;->b()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/fu;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobScheduler;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fu;->a:Landroid/app/job/JobScheduler;

    .line 21
    return-void
.end method

.method private final a(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/measurement/fu;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 23
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/fu;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fu;->a:Landroid/app/job/JobScheduler;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 26
    :goto_0
    return v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    :goto_1
    const-string/jumbo v1, "error calling scheduleAsPackage"

    invoke-static {p4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fu;->a:Landroid/app/job/JobScheduler;

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    goto :goto_0

    .line 24
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "jobscheduler"

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/measurement/fu;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.permission.UPDATE_DEVICE_STATS"

    .line 30
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 33
    :goto_0
    return v0

    .line 32
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/measurement/fu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/fu;-><init>(Landroid/app/job/JobScheduler;)V

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fu;->c()I

    move-result v0

    invoke-direct {v1, p1, p2, v0, p3}, Lcom/google/android/gms/internal/measurement/fu;->a(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static a()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    const-class v0, Landroid/app/job/JobScheduler;

    const-string/jumbo v1, "scheduleAsPackage"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/job/JobInfo;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 6
    :goto_0
    return-object v0

    .line 4
    :catch_0
    move-exception v0

    const-string/jumbo v0, "JobSchedulerCompat"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-string/jumbo v0, "JobSchedulerCompat"

    const-string/jumbo v1, "No scheduleAsPackage method available, falling back to schedule"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 8
    :try_start_0
    const-class v1, Landroid/os/UserHandle;

    const-string/jumbo v2, "myUserId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    return-object v0

    .line 10
    :catch_0
    move-exception v1

    const-string/jumbo v1, "JobSchedulerCompat"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    const-string/jumbo v1, "JobSchedulerCompat"

    const-string/jumbo v2, "No myUserId method available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static c()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/fu;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 14
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/fu;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 18
    :goto_0
    return v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    :goto_1
    const-string/jumbo v2, "JobSchedulerCompat"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    const-string/jumbo v2, "JobSchedulerCompat"

    const-string/jumbo v3, "myUserId invocation illegal"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    .line 18
    goto :goto_0

    .line 15
    :catch_1
    move-exception v0

    goto :goto_1
.end method
