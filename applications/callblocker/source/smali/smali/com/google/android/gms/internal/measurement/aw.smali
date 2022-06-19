.class public Lcom/google/android/gms/internal/measurement/aw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# static fields
.field private static a:Landroid/os/UserManager;

.field private static volatile b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/aw;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/aw;->b:Z

    .line 39
    sput-boolean v1, Lcom/google/android/gms/internal/measurement/aw;->c:Z

    return-void

    :cond_0
    move v0, v1

    .line 38
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .prologue
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/aw;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    const/4 v0, 0x2

    if-gt v3, v0, :cond_5

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/measurement/aw;->a:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 8
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sput-object v0, Lcom/google/android/gms/internal/measurement/aw;->a:Landroid/os/UserManager;

    .line 9
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/aw;->a:Landroid/os/UserManager;

    .line 11
    if-nez v0, :cond_2

    .line 24
    :cond_1
    :goto_1
    return v2

    .line 15
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v2

    :goto_2
    move v2, v0

    .line 22
    :goto_3
    if-eqz v2, :cond_1

    .line 23
    sput-object v6, Lcom/google/android/gms/internal/measurement/aw;->a:Landroid/os/UserManager;

    goto :goto_1

    :cond_4
    move v0, v1

    .line 16
    goto :goto_2

    .line 18
    :catch_0
    move-exception v0

    .line 19
    const-string/jumbo v4, "DirectBootUtils"

    const-string/jumbo v5, "Failed to check if user is unlocked."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 20
    sput-object v6, Lcom/google/android/gms/internal/measurement/aw;->a:Landroid/os/UserManager;

    .line 21
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_3
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 25
    sget-boolean v1, Lcom/google/android/gms/internal/measurement/aw;->b:Z

    .line 26
    if-eqz v1, :cond_0

    .line 37
    :goto_0
    return v0

    .line 28
    :cond_0
    const-class v1, Lcom/google/android/gms/internal/measurement/aw;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-boolean v2, Lcom/google/android/gms/internal/measurement/aw;->b:Z

    .line 30
    if-eqz v2, :cond_1

    .line 31
    monitor-exit v1

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 33
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/aw;->b(Landroid/content/Context;)Z

    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/aw;->b:Z

    .line 36
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
