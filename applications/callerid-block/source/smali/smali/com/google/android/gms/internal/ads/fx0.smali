.class final Lcom/google/android/gms/internal/ads/fx0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/gz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gz1<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/gj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jx0;Lcom/google/android/gms/internal/ads/gj;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fx0;->a:Lcom/google/android/gms/internal/ads/gj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx0;->a:Lcom/google/android/gms/internal/ads/gj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzaq;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/util/zzaq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gj;->O5(Lcom/google/android/gms/ads/internal/util/zzaq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Service can\'t call client"

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/y0;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fx0;->a:Lcom/google/android/gms/internal/ads/gj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/gj;->D2(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Service can\'t call client"

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/y0;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
