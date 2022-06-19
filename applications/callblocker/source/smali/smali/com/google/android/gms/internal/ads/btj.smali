.class final synthetic Lcom/google/android/gms/internal/ads/btj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/apv;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bte;

.field private final b:Lcom/google/android/gms/internal/ads/gv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bte;Lcom/google/android/gms/internal/ads/gv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/btj;->a:Lcom/google/android/gms/internal/ads/bte;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/btj;->b:Lcom/google/android/gms/internal/ads/gv;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/btj;->a:Lcom/google/android/gms/internal/ads/bte;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/btj;->b:Lcom/google/android/gms/internal/ads/gv;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bte;->a(I)V

    .line 3
    if-eqz v1, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/gv;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :cond_0
    :goto_0
    return-void

    .line 6
    :catch_0
    move-exception v0

    .line 7
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
