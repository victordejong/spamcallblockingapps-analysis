.class public Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;
.super Landroidx/work/Worker;
.source "SourceFile"


# instance fields
.field private final zzdsh:Lcom/google/android/gms/internal/ads/ql;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mj;-><init>()V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/ejj;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/ql;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->zzdsh:Lcom/google/android/gms/internal/ads/ql;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->getInputData()Landroidx/work/d;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroidx/work/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->getInputData()Landroidx/work/d;

    move-result-object v1

    const-string v2, "gws_query_id"

    invoke-virtual {v1, v2}, Landroidx/work/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->zzdsh:Lcom/google/android/gms/internal/ads/ql;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/offline/buffering/OfflineNotificationPoster;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/ql;->a(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Landroidx/work/ListenableWorker$a;->a()Landroidx/work/ListenableWorker$a;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 10
    :catch_0
    invoke-static {}, Landroidx/work/ListenableWorker$a;->b()Landroidx/work/ListenableWorker$a;

    move-result-object v0

    return-object v0
.end method
