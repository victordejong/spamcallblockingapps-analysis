.class public final Lcom/google/android/gms/internal/ads/ego;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/ekw;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/emr;

.field private final e:I

.field private final f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private final g:Lcom/google/android/gms/internal/ads/mj;

.field private final h:Lcom/google/android/gms/internal/ads/ejb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/emr;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ego;->g:Lcom/google/android/gms/internal/ads/mj;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ego;->b:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ego;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ego;->d:Lcom/google/android/gms/internal/ads/emr;

    .line 6
    iput p4, p0, Lcom/google/android/gms/internal/ads/ego;->e:I

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ego;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/ejb;->a:Lcom/google/android/gms/internal/ads/ejb;

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ego;->h:Lcom/google/android/gms/internal/ads/ejb;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 13
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvt;->zzqm()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ego;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ego;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ego;->g:Lcom/google/android/gms/internal/ads/mj;

    .line 15
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/ejj;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvt;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/ekw;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ego;->a:Lcom/google/android/gms/internal/ads/ekw;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwc;

    iget v1, p0, Lcom/google/android/gms/internal/ads/ego;->e:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzwc;-><init>(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ego;->a:Lcom/google/android/gms/internal/ads/ekw;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/zzwc;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ego;->a:Lcom/google/android/gms/internal/ads/ekw;

    new-instance v1, Lcom/google/android/gms/internal/ads/efx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ego;->f:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ego;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/efx;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/egc;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ego;->a:Lcom/google/android/gms/internal/ads/ekw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ego;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ego;->d:Lcom/google/android/gms/internal/ads/emr;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/ejb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/emr;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekw;->zza(Lcom/google/android/gms/internal/ads/zzvq;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
