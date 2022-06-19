.class final Lcom/google/android/gms/internal/ads/x90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/mediation/d<",
        "Lcom/google/android/gms/ads/mediation/k;",
        "*>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/f90;

.field final synthetic b:Lcom/google/android/gms/internal/ads/y70;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ca0;Lcom/google/android/gms/internal/ads/f90;Lcom/google/android/gms/internal/ads/y70;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/x90;->a:Lcom/google/android/gms/internal/ads/f90;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/x90;->b:Lcom/google/android/gms/internal/ads/y70;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/x90;->a:Lcom/google/android/gms/internal/ads/f90;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/a;->d()Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/f90;->x(Lcom/google/android/gms/internal/ads/zzbcz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
