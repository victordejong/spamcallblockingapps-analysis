.class public final Lcom/google/android/gms/internal/ads/nv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private static c:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field private d:Lcom/google/android/gms/internal/ads/clo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/nv;->a:Ljava/lang/Object;

    .line 96
    sput-boolean v1, Lcom/google/android/gms/internal/ads/nv;->b:Z

    .line 97
    sput-boolean v1, Lcom/google/android/gms/internal/ads/nv;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/ads/nv;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cn:Lcom/google/android/gms/internal/ads/ect;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/internal/ads/nv;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/google/android/gms/internal/ads/nv;->c:Z

    .line 21
    const-string/jumbo v0, "com.google.android.gms.ads.omid.DynamiteOmid"

    sget-object v2, Lcom/google/android/gms/internal/ads/nu;->a:Lcom/google/android/gms/internal/ads/yc;

    .line 22
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/internal/ads/ya;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/yc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/clo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/internal/ads/clo;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzazx; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string/jumbo v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 7

    .prologue
    .line 36
    const-string/jumbo v6, "Google"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/nv;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/ads/nv;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cn:Lcom/google/android/gms/internal/ads/ect;

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/internal/ads/nv;->b:Z

    if-nez v0, :cond_1

    .line 41
    :cond_0
    monitor-exit v1

    move-object v0, v7

    .line 48
    :goto_0
    return-object v0

    .line 42
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/internal/ads/clo;

    .line 44
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 45
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/clo;->a(Ljava/lang/String;Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/a;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :goto_1
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 48
    goto :goto_0

    .line 46
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 3

    .prologue
    .line 49
    sget-object v1, Lcom/google/android/gms/internal/ads/nv;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cn:Lcom/google/android/gms/internal/ads/ect;

    .line 51
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/internal/ads/nv;->b:Z

    if-nez v0, :cond_1

    .line 53
    :cond_0
    monitor-exit v1

    .line 59
    :goto_0
    return-void

    .line 54
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/internal/ads/clo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/clo;->b(Lcom/google/android/gms/dynamic/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    :goto_1
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 57
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 71
    sget-object v1, Lcom/google/android/gms/internal/ads/nv;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cn:Lcom/google/android/gms/internal/ads/ect;

    .line 73
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/internal/ads/nv;->b:Z

    if-nez v0, :cond_1

    .line 75
    :cond_0
    monitor-exit v1

    .line 81
    :goto_0
    return-void

    .line 76
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/internal/ads/clo;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/clo;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    :goto_1
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 79
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/nv;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cn:Lcom/google/android/gms/internal/ads/ect;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    monitor-exit v2

    move v0, v1

    .line 14
    :goto_0
    return v0

    .line 7
    :cond_0
    sget-boolean v0, Lcom/google/android/gms/internal/ads/nv;->b:Z

    if-eqz v0, :cond_1

    .line 8
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 9
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/nv;->c(Landroid/content/Context;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/internal/ads/clo;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/clo;->a(Lcom/google/android/gms/dynamic/a;)Z

    move-result v0

    .line 11
    sput-boolean v0, Lcom/google/android/gms/internal/ads/nv;->b:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    :goto_1
    const-string/jumbo v3, "#007 Could not call remote method."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_0

    .line 12
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cn:Lcom/google/android/gms/internal/ads/ect;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/nv;->c(Landroid/content/Context;)V

    .line 32
    const-string/jumbo v2, "a."

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/internal/ads/clo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/clo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    :goto_1
    const-string/jumbo v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 35
    goto :goto_0

    .line 33
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;)V
    .locals 3

    .prologue
    .line 60
    sget-object v1, Lcom/google/android/gms/internal/ads/nv;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cn:Lcom/google/android/gms/internal/ads/ect;

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/internal/ads/nv;->b:Z

    if-nez v0, :cond_1

    .line 64
    :cond_0
    monitor-exit v1

    .line 70
    :goto_0
    return-void

    .line 65
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/internal/ads/clo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/clo;->c(Lcom/google/android/gms/dynamic/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    :goto_1
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 68
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 82
    sget-object v1, Lcom/google/android/gms/internal/ads/nv;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cn:Lcom/google/android/gms/internal/ads/ect;

    .line 84
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/android/gms/internal/ads/nv;->b:Z

    if-nez v0, :cond_1

    .line 86
    :cond_0
    monitor-exit v1

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nv;->d:Lcom/google/android/gms/internal/ads/clo;

    .line 89
    invoke-static {p2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    .line 90
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/clo;->b(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :goto_1
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 92
    :catch_1
    move-exception v0

    goto :goto_1
.end method
