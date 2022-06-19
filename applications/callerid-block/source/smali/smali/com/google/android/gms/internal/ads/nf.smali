.class final Lcom/google/android/gms/internal/ads/nf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/ads/AdRequest$ErrorCode;

.field final synthetic c:Lcom/google/android/gms/internal/ads/of;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/of;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nf;->c:Lcom/google/android/gms/internal/ads/of;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nf;->b:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nf;->c:Lcom/google/android/gms/internal/ads/of;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/of;->c(Lcom/google/android/gms/internal/ads/of;)Lcom/google/android/gms/internal/ads/ne;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nf;->b:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/pf;->a(Lcom/google/ads/AdRequest$ErrorCode;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ne;->a0(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
