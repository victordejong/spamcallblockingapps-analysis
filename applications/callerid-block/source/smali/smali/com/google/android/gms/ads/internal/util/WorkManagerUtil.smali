.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lcom/google/android/gms/ads/internal/util/f0;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "This class must be instantiated reflectively so that the default class loader can be used."
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/f0;-><init>()V

    return-void
.end method

.method private static z6(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroidx/work/a$a;

    invoke-direct {v0}, Landroidx/work/a$a;-><init>()V

    invoke-virtual {v0}, Landroidx/work/a$a;->a()Landroidx/work/a;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/work/k;->e(Landroid/content/Context;Landroidx/work/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Lcom/google/android/gms/dynamic/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->z6(Landroid/content/Context;)V

    new-instance v0, Landroidx/work/b$a;

    invoke-direct {v0}, Landroidx/work/b$a;-><init>()V

    sget-object v1, Landroidx/work/NetworkType;->c:Landroidx/work/NetworkType;

    invoke-virtual {v0, v1}, Landroidx/work/b$a;->b(Landroidx/work/NetworkType;)Landroidx/work/b$a;

    invoke-virtual {v0}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v0

    new-instance v1, Landroidx/work/d$a;

    invoke-direct {v1}, Landroidx/work/d$a;-><init>()V

    const-string v2, "uri"

    invoke-virtual {v1, v2, p2}, Landroidx/work/d$a;->e(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/d$a;

    const-string p2, "gws_query_id"

    invoke-virtual {v1, p2, p3}, Landroidx/work/d$a;->e(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/d$a;

    invoke-virtual {v1}, Landroidx/work/d$a;->a()Landroidx/work/d;

    move-result-object p2

    new-instance p3, Landroidx/work/g$a;

    const-class v1, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    invoke-direct {p3, v1}, Landroidx/work/g$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p3, v0}, Landroidx/work/l$a;->e(Landroidx/work/b;)Landroidx/work/l$a;

    check-cast p3, Landroidx/work/g$a;

    invoke-virtual {p3, p2}, Landroidx/work/l$a;->f(Landroidx/work/d;)Landroidx/work/l$a;

    check-cast p3, Landroidx/work/g$a;

    const-string p2, "offline_notification_work"

    invoke-virtual {p3, p2}, Landroidx/work/l$a;->a(Ljava/lang/String;)Landroidx/work/l$a;

    check-cast p3, Landroidx/work/g$a;

    invoke-virtual {p3}, Landroidx/work/l$a;->b()Landroidx/work/l;

    move-result-object p2

    check-cast p2, Landroidx/work/g;

    :try_start_0
    invoke-static {p1}, Landroidx/work/k;->d(Landroid/content/Context;)Landroidx/work/k;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2}, Landroidx/work/k;->b(Landroidx/work/l;)Landroidx/work/h;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Failed to instantiate WorkManager."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zzf(Lcom/google/android/gms/dynamic/a;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/dynamic/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->M1(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->z6(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p1}, Landroidx/work/k;->d(Landroid/content/Context;)Landroidx/work/k;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "offline_ping_sender_work"

    invoke-virtual {p1, v0}, Landroidx/work/k;->a(Ljava/lang/String;)Landroidx/work/h;

    new-instance v1, Landroidx/work/b$a;

    invoke-direct {v1}, Landroidx/work/b$a;-><init>()V

    sget-object v2, Landroidx/work/NetworkType;->c:Landroidx/work/NetworkType;

    invoke-virtual {v1, v2}, Landroidx/work/b$a;->b(Landroidx/work/NetworkType;)Landroidx/work/b$a;

    invoke-virtual {v1}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v1

    new-instance v2, Landroidx/work/g$a;

    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    invoke-direct {v2, v3}, Landroidx/work/g$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroidx/work/l$a;->e(Landroidx/work/b;)Landroidx/work/l$a;

    check-cast v2, Landroidx/work/g$a;

    invoke-virtual {v2, v0}, Landroidx/work/l$a;->a(Ljava/lang/String;)Landroidx/work/l$a;

    check-cast v2, Landroidx/work/g$a;

    invoke-virtual {v2}, Landroidx/work/l$a;->b()Landroidx/work/l;

    move-result-object v0

    check-cast v0, Landroidx/work/g;

    invoke-virtual {p1, v0}, Landroidx/work/k;->b(Landroidx/work/l;)Landroidx/work/h;

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to instantiate WorkManager."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
