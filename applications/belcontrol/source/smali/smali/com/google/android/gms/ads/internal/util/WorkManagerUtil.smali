.class public Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;
.super Lcom/google/android/gms/ads/internal/util/zzbf;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
        value = "This class must be instantiated reflectively so that the default class loader can be used."
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/util/zzbf;-><init>()V

    return-void
.end method

.method private static zzbl(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lr40$a;

    invoke-direct {v0}, Lr40$a;-><init>()V

    invoke-virtual {v0}, Lr40$a;->a()Lr40;

    move-result-object v0

    invoke-static {p0, v0}, Le50;->e(Landroid/content/Context;Lr40;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final zzap(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzbl(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p1}, Le50;->d(Landroid/content/Context;)Le50;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "offline_ping_sender_work"

    invoke-virtual {p1, v0}, Le50;->a(Ljava/lang/String;)La50;

    new-instance v1, Ls40$a;

    invoke-direct {v1}, Ls40$a;-><init>()V

    sget-object v2, Ly40;->b:Ly40;

    invoke-virtual {v1, v2}, Ls40$a;->b(Ly40;)Ls40$a;

    invoke-virtual {v1}, Ls40$a;->a()Ls40;

    move-result-object v1

    new-instance v2, Lz40$a;

    const-class v3, Lcom/google/android/gms/ads/internal/offline/buffering/OfflinePingSender;

    invoke-direct {v2, v3}, Lz40$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Lf50$a;->e(Ls40;)Lf50$a;

    check-cast v2, Lz40$a;

    invoke-virtual {v2, v0}, Lf50$a;->a(Ljava/lang/String;)Lf50$a;

    check-cast v2, Lz40$a;

    invoke-virtual {v2}, Lf50$a;->b()Lf50;

    move-result-object v0

    check-cast v0, Lz40;

    invoke-virtual {p1, v0}, Le50;->b(Lf50;)La50;

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to instantiate WorkManager."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/WorkManagerUtil;->zzbl(Landroid/content/Context;)V

    new-instance v0, Ls40$a;

    invoke-direct {v0}, Ls40$a;-><init>()V

    sget-object v1, Ly40;->b:Ly40;

    invoke-virtual {v0, v1}, Ls40$a;->b(Ly40;)Ls40$a;

    invoke-virtual {v0}, Ls40$a;->a()Ls40;

    move-result-object v0

    new-instance v1, Lu40$a;

    invoke-direct {v1}, Lu40$a;-><init>()V

    const-string v2, "uri"

    invoke-virtual {v1, v2, p2}, Lu40$a;->e(Ljava/lang/String;Ljava/lang/String;)Lu40$a;

    const-string p2, "gws_query_id"

    invoke-virtual {v1, p2, p3}, Lu40$a;->e(Ljava/lang/String;Ljava/lang/String;)Lu40$a;

    invoke-virtual {v1}, Lu40$a;->a()Lu40;

    move-result-object p2

    new-instance p3, Lz40$a;

    const-class v1, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;

    invoke-direct {p3, v1}, Lz40$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p3, v0}, Lf50$a;->e(Ls40;)Lf50$a;

    check-cast p3, Lz40$a;

    invoke-virtual {p3, p2}, Lf50$a;->f(Lu40;)Lf50$a;

    check-cast p3, Lz40$a;

    const-string p2, "offline_notification_work"

    invoke-virtual {p3, p2}, Lf50$a;->a(Ljava/lang/String;)Lf50$a;

    check-cast p3, Lz40$a;

    invoke-virtual {p3}, Lf50$a;->b()Lf50;

    move-result-object p2

    check-cast p2, Lz40;

    :try_start_0
    invoke-static {p1}, Le50;->d(Landroid/content/Context;)Le50;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p2}, Le50;->b(Lf50;)La50;

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Failed to instantiate WorkManager."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzazk;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method
