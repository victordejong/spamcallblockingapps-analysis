.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lcom/google/android/gms/ads/internal/util/zzbf;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbf;-><init>()V

    return-void
.end method

.method private static zzbo(Landroid/content/Context;)V
    .locals 1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroidx/work/Configuration$Builder;

    invoke-direct {v0}, Landroidx/work/Configuration$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/work/Configuration$Builder;->build()Landroidx/work/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/work/u;->a(Landroid/content/Context;Landroidx/work/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final zzaq(Lcom/google/android/gms/dynamic/b;)V
    .locals 4

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzbo(Landroid/content/Context;)V

    .line 26
    :try_start_0
    invoke-static {p1}, Landroidx/work/u;->a(Landroid/content/Context;)Landroidx/work/u;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "offline_ping_sender_work"

    .line 31
    invoke-virtual {p1, v0}, Landroidx/work/u;->a(Ljava/lang/String;)Landroidx/work/n;

    .line 32
    new-instance v1, Landroidx/work/b$a;

    invoke-direct {v1}, Landroidx/work/b$a;-><init>()V

    sget-object v2, Landroidx/work/l;->CONNECTED:Landroidx/work/l;

    .line 33
    invoke-virtual {v1, v2}, Landroidx/work/b$a;->a(Landroidx/work/l;)Landroidx/work/b$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v1

    .line 34
    new-instance v2, Landroidx/work/m$a;

    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    invoke-direct {v2, v3}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 35
    invoke-virtual {v2, v1}, Landroidx/work/m$a;->a(Landroidx/work/b;)Landroidx/work/v$a;

    move-result-object v1

    check-cast v1, Landroidx/work/m$a;

    .line 36
    invoke-virtual {v1, v0}, Landroidx/work/m$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object v0

    check-cast v0, Landroidx/work/m$a;

    .line 37
    invoke-virtual {v0}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object v0

    check-cast v0, Landroidx/work/m;

    .line 38
    invoke-virtual {p1, v0}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to instantiate WorkManager."

    .line 29
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzbo(Landroid/content/Context;)V

    .line 8
    new-instance v0, Landroidx/work/b$a;

    invoke-direct {v0}, Landroidx/work/b$a;-><init>()V

    sget-object v1, Landroidx/work/l;->CONNECTED:Landroidx/work/l;

    .line 9
    invoke-virtual {v0, v1}, Landroidx/work/b$a;->a(Landroidx/work/l;)Landroidx/work/b$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v0

    .line 10
    new-instance v1, Landroidx/work/d$a;

    invoke-direct {v1}, Landroidx/work/d$a;-><init>()V

    const-string v2, "uri"

    .line 11
    invoke-virtual {v1, v2, p2}, Landroidx/work/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/d$a;

    move-result-object p2

    const-string v1, "gws_query_id"

    invoke-virtual {p2, v1, p3}, Landroidx/work/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/d$a;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/work/d$a;->a()Landroidx/work/d;

    move-result-object p2

    .line 12
    new-instance p3, Landroidx/work/m$a;

    const-class v1, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    invoke-direct {p3, v1}, Landroidx/work/m$a;-><init>(Ljava/lang/Class;)V

    .line 13
    invoke-virtual {p3, v0}, Landroidx/work/m$a;->a(Landroidx/work/b;)Landroidx/work/v$a;

    move-result-object p3

    check-cast p3, Landroidx/work/m$a;

    .line 14
    invoke-virtual {p3, p2}, Landroidx/work/m$a;->a(Landroidx/work/d;)Landroidx/work/v$a;

    move-result-object p2

    check-cast p2, Landroidx/work/m$a;

    const-string p3, "offline_notification_work"

    .line 15
    invoke-virtual {p2, p3}, Landroidx/work/m$a;->a(Ljava/lang/String;)Landroidx/work/v$a;

    move-result-object p2

    check-cast p2, Landroidx/work/m$a;

    .line 16
    invoke-virtual {p2}, Landroidx/work/m$a;->c()Landroidx/work/v;

    move-result-object p2

    check-cast p2, Landroidx/work/m;

    .line 17
    :try_start_0
    invoke-static {p1}, Landroidx/work/u;->a(Landroid/content/Context;)Landroidx/work/u;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-virtual {p1, p2}, Landroidx/work/u;->a(Landroidx/work/v;)Landroidx/work/n;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Failed to instantiate WorkManager."

    .line 20
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
