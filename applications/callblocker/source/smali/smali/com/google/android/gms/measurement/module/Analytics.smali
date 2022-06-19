.class public Lcom/google/android/gms/measurement/module/Analytics;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# static fields
.field private static volatile a:Lcom/google/android/gms/measurement/module/Analytics;


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/fd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/measurement/module/Analytics;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 13
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/module/Analytics;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/module/Analytics;->a:Lcom/google/android/gms/measurement/module/Analytics;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/google/android/gms/measurement/module/Analytics;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/module/Analytics;->a:Lcom/google/android/gms/measurement/module/Analytics;

    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 7
    new-instance v2, Lcom/google/android/gms/measurement/module/Analytics;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/module/Analytics;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    sput-object v2, Lcom/google/android/gms/measurement/module/Analytics;->a:Lcom/google/android/gms/measurement/module/Analytics;

    .line 8
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/module/Analytics;->a:Lcom/google/android/gms/measurement/module/Analytics;

    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
