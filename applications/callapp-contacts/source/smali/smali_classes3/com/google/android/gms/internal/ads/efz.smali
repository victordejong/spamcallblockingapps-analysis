.class public final Lcom/google/android/gms/internal/ads/efz;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/egb;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/efy;

.field private d:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private e:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/egb;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/efy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/efy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->c:Lcom/google/android/gms/internal/ads/efy;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efz;->a:Lcom/google/android/gms/internal/ads/egb;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/efz;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getFullScreenContentCallback()Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->d:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object v0
.end method

.method public final getOnPaidEventListener()Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->e:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 2

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->a:Lcom/google/android/gms/internal/ads/egb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/egb;->b()Lcom/google/android/gms/internal/ads/emj;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 24
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/emj;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 1

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efz;->d:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->c:Lcom/google/android/gms/internal/ads/efy;

    .line 2002
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/efy;->a:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->a:Lcom/google/android/gms/internal/ads/egb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/egb;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 34
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efz;->e:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->a:Lcom/google/android/gms/internal/ads/egb;

    new-instance v1, Lcom/google/android/gms/internal/ads/s;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/s;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/egb;->a(Lcom/google/android/gms/internal/ads/emd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 49
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 2

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->a:Lcom/google/android/gms/internal/ads/egb;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efz;->c:Lcom/google/android/gms/internal/ads/efy;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/egb;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/egi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 18
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show(Landroid/app/Activity;Lcom/google/android/gms/ads/FullScreenContentCallback;)V
    .locals 1

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/efz;->d:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->c:Lcom/google/android/gms/internal/ads/efy;

    .line 1002
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/efy;->a:Lcom/google/android/gms/ads/FullScreenContentCallback;

    if-nez p1, :cond_0

    const-string p2, "The activity for show is null, will proceed with show using the context provided when loading the ad."

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/za;->zzez(Ljava/lang/String;)V

    .line 10
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/efz;->a:Lcom/google/android/gms/internal/ads/egb;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->c:Lcom/google/android/gms/internal/ads/efy;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/egb;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ads/egi;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 13
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/egh;)V
    .locals 1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->a:Lcom/google/android/gms/internal/ads/egb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/egb;->a(Lcom/google/android/gms/internal/ads/egh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 43
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzea()Lcom/google/android/gms/internal/ads/ekw;
    .locals 2

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efz;->a:Lcom/google/android/gms/internal/ads/egb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/egb;->a()Lcom/google/android/gms/internal/ads/ekw;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 38
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
