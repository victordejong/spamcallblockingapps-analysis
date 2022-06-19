.class final Lcom/google/android/gms/internal/ads/xt1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/f03;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/f03<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/vc0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bu1;Lcom/google/android/gms/internal/ads/vc0;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xt1;->a:Lcom/google/android/gms/internal/ads/vc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xt1;->a:Lcom/google/android/gms/internal/ads/vc0;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzbc;->k0(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/util/zzbc;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/vc0;->C6(Lcom/google/android/gms/ads/internal/util/zzbc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Service can\'t call client"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/o1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xt1;->a:Lcom/google/android/gms/internal/ads/vc0;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/vc0;->s4(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Service can\'t call client"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/o1;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
