.class final Lcom/google/android/gms/internal/ads/cgn;
.super Lcom/google/android/gms/ads/reward/a;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dzr;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cgl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cgl;Lcom/google/android/gms/internal/ads/dzr;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cgn;->b:Lcom/google/android/gms/internal/ads/cgl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cgn;->a:Lcom/google/android/gms/internal/ads/dzr;

    invoke-direct {p0}, Lcom/google/android/gms/ads/reward/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final k_()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgn;->b:Lcom/google/android/gms/internal/ads/cgl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cgl;->a(Lcom/google/android/gms/internal/ads/cgl;)Lcom/google/android/gms/internal/ads/bdr;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cgn;->a:Lcom/google/android/gms/internal/ads/dzr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dzr;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :cond_0
    :goto_0
    return-void

    .line 5
    :catch_0
    move-exception v0

    .line 6
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
