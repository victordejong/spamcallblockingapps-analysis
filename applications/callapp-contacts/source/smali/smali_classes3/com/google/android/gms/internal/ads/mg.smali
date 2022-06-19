.class final synthetic Lcom/google/android/gms/internal/ads/mg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/md;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/md;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mg;->a:Lcom/google/android/gms/internal/ads/md;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mg;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/mg;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mg;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mg;->c:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->aa:Lcom/google/android/gms/internal/ads/af;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "measurementEnabled"

    .line 8
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->ah:Lcom/google/android/gms/internal/ads/af;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ad_storage"

    const-string v4, "denied"

    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "analytics_storage"

    .line 13
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "FA-Ads"

    const-string v4, "am"

    .line 1003
    invoke-static {v0, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/ak;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/ak;

    move-result-object v1

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ak;->c:Lcom/google/android/gms/measurement/a/a;

    :try_start_0
    const-string v2, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager"

    .line 17
    sget-object v3, Lcom/google/android/gms/internal/ads/mf;->a:Lcom/google/android/gms/internal/ads/zb;

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/yz;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/afn;

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/me;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/me;-><init>(Lcom/google/android/gms/measurement/a/a;)V

    invoke-interface {v2, v0, v3}, Lcom/google/android/gms/internal/ads/afn;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/afl;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbap; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    const-string v1, "#007 Could not call remote method."

    .line 21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
