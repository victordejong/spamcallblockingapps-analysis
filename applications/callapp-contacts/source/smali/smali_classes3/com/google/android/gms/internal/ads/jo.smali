.class public final Lcom/google/android/gms/internal/ads/jo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/ekp;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ekp;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jo;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jo;->b:Lcom/google/android/gms/internal/ads/ekp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "context cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/mj;-><init>()V

    .line 4
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/ejj;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mm;)Lcom/google/android/gms/internal/ads/ekp;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/jo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ekp;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/jl;
    .locals 3

    .line 21
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/jl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jo;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jo;->b:Lcom/google/android/gms/internal/ads/ekp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ekp;->a()Lcom/google/android/gms/internal/ads/eko;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/jl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/eko;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)Lcom/google/android/gms/internal/ads/jo;
    .locals 2

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jo;->b:Lcom/google/android/gms/internal/ads/ekp;

    new-instance v1, Lcom/google/android/gms/internal/ads/jm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/jm;-><init>(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekp;->a(Lcom/google/android/gms/internal/ads/jf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/jj;)Lcom/google/android/gms/internal/ads/jo;
    .locals 2

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jo;->b:Lcom/google/android/gms/internal/ads/ekp;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajy;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzajy;-><init>(Lcom/google/android/gms/internal/ads/jj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ekp;->a(Lcom/google/android/gms/internal/ads/zzajy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method
