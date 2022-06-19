.class final Lcom/google/android/gms/internal/measurement/be;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/az;


# static fields
.field private static a:Lcom/google/android/gms/internal/measurement/be;


# instance fields
.field private final b:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Landroid/database/ContentObserver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/be;->b:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/be;->c:Landroid/database/ContentObserver;

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/be;->b:Landroid/content/Context;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/measurement/bg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/bg;-><init>(Lcom/google/android/gms/internal/measurement/be;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/be;->c:Landroid/database/ContentObserver;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/measurement/au;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/be;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 12
    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/be;
    .locals 2

    .prologue
    .line 1
    const-class v1, Lcom/google/android/gms/internal/measurement/be;

    monitor-enter v1

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/be;->a:Lcom/google/android/gms/internal/measurement/be;

    if-nez v0, :cond_0

    .line 3
    const-string/jumbo v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    .line 4
    invoke-static {p0, v0}, Landroidx/core/a/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5
    :goto_0
    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/measurement/be;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/be;-><init>(Landroid/content/Context;)V

    :goto_1
    sput-object v0, Lcom/google/android/gms/internal/measurement/be;->a:Lcom/google/android/gms/internal/measurement/be;

    .line 6
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/be;->a:Lcom/google/android/gms/internal/measurement/be;

    monitor-exit v1

    return-object v0

    .line 4
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/be;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/be;-><init>()V

    goto :goto_1

    .line 7
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static declared-synchronized a()V
    .locals 3

    .prologue
    .line 23
    const-class v1, Lcom/google/android/gms/internal/measurement/be;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/be;->a:Lcom/google/android/gms/internal/measurement/be;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/be;->a:Lcom/google/android/gms/internal/measurement/be;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/be;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/be;->a:Lcom/google/android/gms/internal/measurement/be;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/be;->c:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/measurement/be;->a:Lcom/google/android/gms/internal/measurement/be;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/be;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/measurement/be;->a:Lcom/google/android/gms/internal/measurement/be;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/be;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 25
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/measurement/be;->a:Lcom/google/android/gms/internal/measurement/be;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v1

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/be;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 22
    :goto_0
    return-object v0

    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/bd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/bd;-><init>(Lcom/google/android/gms/internal/measurement/be;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/bc;->a(Lcom/google/android/gms/internal/measurement/bb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    :goto_1
    const-string/jumbo v3, "GservicesLoader"

    const-string/jumbo v4, "Unable to read GServices for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    .line 22
    goto :goto_0

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/be;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/be;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/au;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
