.class public final Lcom/google/firebase/analytics/FirebaseAnalytics;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@17.4.2"


# static fields
.field private static volatile a:Lcom/google/firebase/analytics/FirebaseAnalytics;


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/fd;

.field private final c:Lcom/google/android/gms/internal/measurement/d;

.field private final d:Z

.field private final e:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/d;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 74
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->c:Lcom/google/android/gms/internal/measurement/d;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->d:Z

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->e:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/fd;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->c:Lcom/google/android/gms/internal/measurement/d;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->d:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->e:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-nez v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/d;

    move-result-object v0

    .line 6
    new-instance v2, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/measurement/d;)V

    sput-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 12
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_1
    sget-object v0, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0

    .line 9
    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 11
    new-instance v2, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    sput-object v2, Lcom/google/firebase/analytics/FirebaseAnalytics;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getScionFrontendApiImplementation(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/internal/hf;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 101
    :cond_1
    invoke-static {p0, v0, v0, v0, p1}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/d;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Lcom/google/firebase/analytics/a;

    invoke-direct {v0, v1}, Lcom/google/firebase/analytics/a;-><init>(Lcom/google/android/gms/internal/measurement/d;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->d:Z

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->c:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 17
    :goto_0
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->h()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    const-string/jumbo v1, "app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/measurement/internal/gk;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method public final getFirebaseInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setCurrentScreen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->d:Z

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->c:Lcom/google/android/gms/internal/measurement/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/kk;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "setCurrentScreen must be called from the main thread"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/analytics/FirebaseAnalytics;->b:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->s()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/ho;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
