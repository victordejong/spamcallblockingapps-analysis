.class public Lcom/google/firebase/analytics/connector/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@17.4.2"

# interfaces
.implements Lcom/google/firebase/analytics/connector/a;


# static fields
.field private static volatile b:Lcom/google/firebase/analytics/connector/a;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/measurement/AppMeasurement;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/AppMeasurement;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/analytics/connector/b;->c:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/analytics/connector/b;->a:Ljava/util/Map;

    .line 5
    return-void
.end method

.method public static a(Lcom/google/firebase/b;Landroid/content/Context;Lcom/google/firebase/a/d;)Lcom/google/firebase/analytics/connector/a;
    .locals 5

    .prologue
    .line 6
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/google/firebase/analytics/connector/b;->b:Lcom/google/firebase/analytics/connector/a;

    if-nez v0, :cond_2

    .line 11
    const-class v1, Lcom/google/firebase/analytics/connector/b;

    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v0, Lcom/google/firebase/analytics/connector/b;->b:Lcom/google/firebase/analytics/connector/a;

    if-nez v0, :cond_1

    .line 13
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 14
    invoke-virtual {p0}, Lcom/google/firebase/b;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    const-class v2, Lcom/google/firebase/a;

    sget-object v3, Lcom/google/firebase/analytics/connector/d;->a:Ljava/util/concurrent/Executor;

    sget-object v4, Lcom/google/firebase/analytics/connector/c;->a:Lcom/google/firebase/a/b;

    invoke-interface {p2, v2, v3, v4}, Lcom/google/firebase/a/d;->a(Ljava/lang/Class;Ljava/util/concurrent/Executor;Lcom/google/firebase/a/b;)V

    .line 16
    const-string/jumbo v2, "dataCollectionDefaultEnabled"

    .line 17
    invoke-virtual {p0}, Lcom/google/firebase/b;->e()Z

    move-result v3

    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    :cond_0
    new-instance v2, Lcom/google/firebase/analytics/connector/b;

    .line 20
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/firebase/analytics/connector/b;-><init>(Lcom/google/android/gms/measurement/AppMeasurement;)V

    sput-object v2, Lcom/google/firebase/analytics/connector/b;->b:Lcom/google/firebase/analytics/connector/a;

    .line 21
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_2
    sget-object v0, Lcom/google/firebase/analytics/connector/b;->b:Lcom/google/firebase/analytics/connector/a;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static final synthetic a(Lcom/google/firebase/a/a;)V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/firebase/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/a;

    iget-boolean v1, v0, Lcom/google/firebase/a;->a:Z

    .line 80
    const-class v2, Lcom/google/firebase/analytics/connector/b;

    monitor-enter v2

    .line 81
    :try_start_0
    sget-object v0, Lcom/google/firebase/analytics/connector/b;->b:Lcom/google/firebase/analytics/connector/a;

    check-cast v0, Lcom/google/firebase/analytics/connector/b;

    iget-object v0, v0, Lcom/google/firebase/analytics/connector/b;->c:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurement;->a(Z)V

    .line 83
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    if-nez p3, :cond_0

    .line 26
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    invoke-static {p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {p1, p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-static {p1, p2, p3}, Lcom/google/firebase/analytics/connector/internal/b;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 34
    iget-object v0, p0, Lcom/google/firebase/analytics/connector/b;->c:Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/AppMeasurement;->logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
